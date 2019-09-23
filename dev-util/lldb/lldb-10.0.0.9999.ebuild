# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

: ${CMAKE_MAKEFILE_GENERATOR:=ninja}
# (needed due to CMAKE_BUILD_TYPE != Gentoo)
CMAKE_MIN_VERSION=3.7.0-r1
PYTHON_COMPAT=( python{2_7,3_{5,6,7}} )

inherit cmake-utils git-r3 llvm multiprocessing python-single-r1 \
	toolchain-funcs

DESCRIPTION="The LLVM debugger"
HOMEPAGE="https://llvm.org/"
SRC_URI=""
EGIT_REPO_URI="https://git.llvm.org/git/lldb.git
	https://github.com/llvm-mirror/lldb.git"

LICENSE="Apache-2.0-with-LLVM-exceptions UoI-NCSA"
SLOT="0"
KEYWORDS=""
IUSE="libedit ncurses +python test"
REQUIRED_USE=${PYTHON_REQUIRED_USE}
RESTRICT="!test? ( test )"

RDEPEND="
	libedit? ( dev-libs/libedit:0= )
	ncurses? ( >=sys-libs/ncurses-5.9-r3:0= )
	python? ( dev-python/six[${PYTHON_USEDEP}]
		${PYTHON_DEPS} )
	~sys-devel/clang-${PV}[xml]
	~sys-devel/llvm-${PV}
	!<sys-devel/llvm-4.0"
DEPEND="${RDEPEND}"
BDEPEND="
	python? ( >=dev-lang/swig-3.0.11 )
	test? (
		~dev-python/lit-${PV}[${PYTHON_USEDEP}]
		sys-devel/lld )
	${PYTHON_DEPS}"

# least intrusive of all
CMAKE_BUILD_TYPE=RelWithDebInfo

pkg_setup() {
	LLVM_MAX_SLOT=${PV%%.*} llvm_pkg_setup
	python-single-r1_pkg_setup
}

src_unpack() {
	if use test; then
		# needed for patched gtest
		git-r3_fetch "https://git.llvm.org/git/llvm.git
			https://github.com/llvm-mirror/llvm.git"
	fi
	git-r3_fetch

	if use test; then
		git-r3_checkout https://llvm.org/git/llvm.git \
			"${WORKDIR}"/llvm '' lib/Testing/Support utils/unittest
	fi
	git-r3_checkout
}

src_configure() {
	local mycmakeargs=(
		-DLLDB_DISABLE_CURSES=$(usex !ncurses)
		-DLLDB_DISABLE_LIBEDIT=$(usex !libedit)
		-DLLDB_DISABLE_PYTHON=$(usex !python)
		-DLLDB_USE_SYSTEM_SIX=1
		-DLLVM_ENABLE_TERMINFO=$(usex ncurses)

		-DLLDB_INCLUDE_TESTS=$(usex test)

		# TODO: fix upstream to detect this properly
		-DHAVE_LIBDL=ON
		-DHAVE_LIBPTHREAD=ON

		# normally we'd have to set LLVM_ENABLE_TERMINFO, HAVE_TERMINFO
		# and TERMINFO_LIBS... so just force FindCurses.cmake to use
		# ncurses with complete library set (including autodetection
		# of -ltinfo)
		-DCURSES_NEED_NCURSES=ON
	)
	use test && mycmakeargs+=(
		-DLLVM_BUILD_TESTS=$(usex test)
		# compilers for lit tests
		-DLLDB_TEST_C_COMPILER="$(type -P clang)"
		-DLLDB_TEST_CXX_COMPILER="$(type -P clang++)"

		-DLLVM_MAIN_SRC_DIR="${WORKDIR}/llvm"
		-DLLVM_EXTERNAL_LIT="${EPREFIX}/usr/bin/lit"
		-DLLVM_LIT_ARGS="-vv;-j;${LIT_JOBS:-$(makeopts_jobs "${MAKEOPTS}" "$(get_nproc)")}"
	)

	cmake-utils_src_configure
}

src_test() {
	local -x LIT_PRESERVES_TMP=1
	cmake-utils_src_make check-lldb-lit
	use python && cmake-utils_src_make check-lldb
}

src_install() {
	cmake-utils_src_install

	use python && python_optimize
}

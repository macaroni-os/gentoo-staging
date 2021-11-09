# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )

inherit autotools python-single-r1

MY_PN=AFFLIBv3
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Library that implements the AFF image standard"
HOMEPAGE="https://github.com/sshock/AFFLIBv3/"
SRC_URI="https://github.com/sshock/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ppc x86 ~x64-macos"
IUSE="fuse ncurses python qemu readline s3 static-libs threads"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"
# Tests don't play well with sandbox
RESTRICT="test"

RDEPEND="
	dev-libs/expat
	sys-libs/zlib:0=
	fuse? ( sys-fs/fuse:= )
	dev-libs/openssl:0=
	ncurses? ( sys-libs/ncurses:0= )
	python? (
		${PYTHON_DEPS}
		$(python_gen_cond_dep 'dev-python/cython[${PYTHON_USEDEP}]')
	)
	readline? ( sys-libs/readline:0= )
	s3? ( net-misc/curl )
"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}/${PN}-3.7.19-search-path.patch"
)

pkg_setup() {
	use python && python-single-r1_pkg_setup
}

src_prepare() {
	sed -i '/FLAGS/s: -g::' configure.ac || die

	default
	eautoreconf
}

src_configure() {
	# Hacks for automagic dependencies
	use ncurses || export ac_cv_lib_ncurses_initscr=no
	use readline || export ac_cv_lib_readline_readline=no

	local myeconfargs=(
		$(use_enable fuse)
		$(use_enable python)
		$(use_enable qemu)
		$(use_enable s3)
		$(use_enable static-libs static)
		$(use_enable threads threading)
	)
	econf "${myeconfargs[@]}"
}

src_install() {
	default
	find "${ED}" -name "*.la" -delete || die
}

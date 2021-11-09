# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools multilib-minimal

MY_PN="${PN%-c}"
DESCRIPTION="The ANTLR3 C Runtime"
HOMEPAGE="https://www.antlr3.org/"
SRC_URI="https://github.com/${MY_PN}/${MY_PN}3/archive/${PV}.tar.gz -> ${MY_PN}-${PV}.tar.gz"
S="${WORKDIR}/${MY_PN}3-${PV}/runtime/C"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="debug debugger doc"

BDEPEND="doc? ( app-doc/doxygen[dot] )"

PATCHES=( "${FILESDIR}/3.5-cflags.patch" )
MULTILIB_WRAPPED_HEADERS=( /usr/include/antlr3config.h )
DOCS=( AUTHORS ChangeLog NEWS README )

src_prepare() {
	default
	sed -i '/^QUIET/s/NO/YES/' doxyfile || die
	eautoreconf
	multilib_copy_sources
}

multilib_src_configure() {
	local econfargs=(
		--enable-shared
		--disable-static
		$(use_enable debug debuginfo)
		$(use_enable debugger antlrdebug)
	)

	case "${ABI}" in
		*64*) econfargs+=( --enable-64bit ) ;;
		*) econfargs+=( --disable-64bit ) ;;
	esac

	econf "${econfargs[@]}"
}

src_compile() {
	multilib-minimal_src_compile

	if use doc; then
		einfo "Generating API documentation ..."
		cd "${S}" || die
		doxygen -u doxyfile || die
		doxygen doxyfile || die
	fi
}

src_install() {
	use doc && HTML_DOCS=( "${S}/api/" )

	multilib-minimal_src_install

	find "${ED}" -name '*.la' -delete || die
}

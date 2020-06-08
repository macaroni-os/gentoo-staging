# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils

DESCRIPTION="Signon daemon for libaccounts-glib"
HOMEPAGE="https://gitlab.com/accounts-sso"
SRC_URI="https://gitlab.com/accounts-sso/${PN}/-/archive/VERSION_${PV}/${PN}-VERSION_${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"
IUSE="doc test"

BDEPEND="doc? ( app-doc/doxygen )"
RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtsql:5
	net-libs/libproxy
"
DEPEND="${RDEPEND}
	test? ( dev-qt/qttest:5 )
"

RESTRICT="!test? ( test )"

PATCHES=(
	"${FILESDIR}/${P}-buildsystem.patch"
	"${FILESDIR}/${P}-consistent-paths.patch" # bug 701142
	"${FILESDIR}/${P}-crashfix.patch"
	"${FILESDIR}/${P}-unused-dep.patch" # bug 727346
)

S="${WORKDIR}/${PN}-VERSION_${PV}"

src_prepare() {
	default

	# install docs to correct location
	sed -e "s|share/doc/\$\${PROJECT_NAME}|share/doc/${PF}|" \
		-i doc/doc.pri || die
	sed -e "/^documentation.path = /c\documentation.path = \$\${INSTALL_PREFIX}/share/doc/${PF}/\$\${TARGET}/" \
		-i lib/plugins/doc/doc.pri || die
	sed -e "/^documentation.path = /c\documentation.path = \$\${INSTALL_PREFIX}/share/doc/${PF}/libsignon-qt/" \
		-i lib/SignOn/doc/doc.pri || die

	# std flags
	sed -e "/CONFIG += c++11/d" \
		-i common-project-config.pri || die "failed fixing CXXFLAGS"

	# fix runtime failures
	sed -e "/fno-rtti/d" \
		-i common-project-config.pri src/plugins/plugins.pri \
		src/{remotepluginprocess/remotepluginprocess,extensions/cryptsetup/cryptsetup}.pro \
		tests/{signond-tests/signond-tests,extensions/extensions}.pri \
		tests/{passwordplugintest/passwordplugintest,libsignon-qt-tests/libsignon-qt-tests}.pro \
		|| die "failed disabling -fno-rtti"

	use doc || sed -e "/include(\s*doc\/doc.pri\s*)/d" \
		-i signon.pro lib/SignOn/SignOn.pro lib/plugins/plugins.pro || die

	use test || sed -e '/^SUBDIRS/s/tests//' \
		-i signon.pro || die "couldn't disable tests"
}

src_configure() {
	eqmake5 PREFIX="${EPREFIX}"/usr LIBDIR=$(get_libdir)
}

src_install() {
	emake INSTALL_ROOT="${D}" install
}

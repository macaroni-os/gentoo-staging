# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit flag-o-matic optfeature qmake-utils xdg

DESCRIPTION="Simple (yet powerful) feed reader"
HOMEPAGE="https://github.com/martinrotter/rssguard"
SRC_URI="https://github.com/martinrotter/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="|| ( LGPL-3 GPL-2+ ) AGPL-3+ BSD GPL-3+ MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug webengine"

BDEPEND="dev-qt/linguist-tools:5"
DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtdbus:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtmultimedia:5
	dev-qt/qtnetwork:5[ssl]
	dev-qt/qtsql:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
	webengine? ( dev-qt/qtwebengine:5[widgets(+)] )
"
RDEPEND="${DEPEND}"

DOCS=( README.md resources/docs/Documentation.md )

src_prepare() {
	default
	sed -e 's:$$PREFIX/lib:$$PREFIX/'$(get_libdir)':' -i pri/install.pri || die
}

src_configure() {
	eqmake5_args=(
		CONFIG+=$(usex debug debug release)
		USE_WEBENGINE=$(usex webengine true false)
		PREFIX="${EPREFIX}"/usr
		INSTALL_ROOT=.
	)

	# https://github.com/martinrotter/rssguard/issues/156
	is-flagq "-flto*" && eqmake5_args+=( CONFIG+=ltcg )

	eqmake5 "${eqmake5_args[@]}"
}

src_install() {
	emake -j1 install INSTALL_ROOT="${D}"
	einstalldocs
}

pkg_postinst() {
	xdg_pkg_postinst

	if use webengine; then
		optfeature "ad blocking functionality" net-libs/nodejs[npm]
		elog "Adblocker module requires additional npm modules to be installed:"
		elog "npm i -g @cliqz/adblocker tldts-experimental"
	fi
}

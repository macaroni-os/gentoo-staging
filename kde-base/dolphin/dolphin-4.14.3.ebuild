# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/dolphin/dolphin-4.14.3.ebuild,v 1.5 2015/02/17 11:06:40 ago Exp $

EAPI=5

KDE_HANDBOOK="optional"
KMNAME="kde-baseapps"
inherit kde4-meta

DESCRIPTION="A KDE filemanager focusing on usability"
HOMEPAGE="http://dolphin.kde.org http://www.kde.org/applications/system/dolphin"
KEYWORDS="amd64 ~arm ppc ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug semantic-desktop thumbnail"

DEPEND="
	$(add_kdebase_dep kactivities '' 4.13)
	$(add_kdebase_dep libkonq)
	media-libs/phonon[qt4]
	x11-libs/libXrender
	semantic-desktop? (
		$(add_kdebase_dep baloo)
		$(add_kdebase_dep baloo-widgets)
		$(add_kdebase_dep kfilemetadata)
	)
"
RDEPEND="${DEPEND}
	$(add_kdebase_dep kfind)
	thumbnail? (
		$(add_kdebase_dep thumbnailers)
		|| (
			$(add_kdebase_dep ffmpegthumbs)
			$(add_kdebase_dep mplayerthumbs)
		)
	)
"

RESTRICT="test"
# bug 393129

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_with semantic-desktop Baloo)
		$(cmake-utils_use_with semantic-desktop BalooWidgets)
		$(cmake-utils_use_with semantic-desktop KFileMetaData)
	)

	kde4-meta_src_configure
}

pkg_postinst() {
	kde4-base_pkg_postinst

	if ! has_version media-gfx/icoutils ; then
		elog "For .exe file preview support, install media-gfx/icoutils."
	fi
}

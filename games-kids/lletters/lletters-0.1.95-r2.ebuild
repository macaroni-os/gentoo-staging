# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-kids/lletters/lletters-0.1.95-r2.ebuild,v 1.10 2015/02/01 20:45:15 tupone Exp $

EAPI=5
inherit eutils games

PATCH_LEVEL=3

DESCRIPTION="Game that helps young kids learn their letters and numbers"
HOMEPAGE="http://lln.sourceforge.net"
SRC_URI="mirror://debian/pool/main/l/${PN}/${PN}_${PV}+gtk2.orig.tar.gz
	mirror://debian/pool/main/l/${PN}/${PN}_${PV}+gtk2-${PATCH_LEVEL}.diff.gz
	mirror://sourceforge/lln/${PN}-media-0.1.9a.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE="nls"

RDEPEND="x11-libs/gtk+:2
	nls? ( virtual/libintl )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	nls? ( sys-devel/gettext )"

src_prepare() {
	epatch "${WORKDIR}"/${PN}_${PV}+gtk2-${PATCH_LEVEL}.diff \
		"${FILESDIR}"/${P}-build-2.patch \
		"${FILESDIR}"/${P}-underlink.patch \
		"${FILESDIR}"/${P}-make-382.patch
	cp -r "${WORKDIR}"/{images,sounds} . || die
}

src_configure() {
	egamesconf $(use_enable nls)
}

src_install () {
	default
	newdoc debian/changelog ChangeLog.debian
	doicon debian/${PN}.xpm
	make_desktop_entry ${PN} "Linux Letters and Numbers" ${PN}
	prepgamesdirs
}

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-arcade/skystreets/skystreets-0.2.4.ebuild,v 1.8 2015/03/31 16:12:14 mr_bones_ Exp $

EAPI=5
inherit eutils games

DESCRIPTION="A remake of the old DOS game Skyroads"
HOMEPAGE="http://freecode.com/projects/skystreets"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="OSL-2.0"
SLOT="0"
KEYWORDS="~alpha amd64 ppc x86"
IUSE=""

DEPEND="virtual/opengl
	virtual/glu
	media-libs/libsdl[opengl,video]
	media-libs/sdl-image"
RDEPEND=${DEPEND}

src_prepare() {
	epatch "${FILESDIR}"/${PV}-gl.patch \
		"${FILESDIR}"/${P}-as-needed.patch
}

src_install() {
	default
	newicon gfx/sunscene.png ${PN}.png
	make_desktop_entry ${PN} SkyStreets
	prepgamesdirs
}

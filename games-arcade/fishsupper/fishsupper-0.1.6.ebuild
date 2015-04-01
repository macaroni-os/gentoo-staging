# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-arcade/fishsupper/fishsupper-0.1.6.ebuild,v 1.7 2015/01/04 14:58:56 tupone Exp $

EAPI=5
inherit eutils autotools games

DESCRIPTION="A simple arcade/puzzle game, loosely based on the retro classic Frogger"
HOMEPAGE="http://sourceforge.net/projects/fishsupper/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="CC-BY-SA-2.5 GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="media-libs/libsdl[sound,video,opengl,X]
	media-libs/sdl-image[png]
	media-libs/sdl-mixer[wav]
	virtual/opengl"
DEPEND="${RDEPEND}
	dev-libs/boost"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ovflfix.patch \
		"${FILESDIR}"/${P}-asneeded.patch
	eautoreconf
}

src_install() {
	default
	newicon data/images/fs_sprite_042.png ${PN}.png
	make_desktop_entry ${PN} "Fish Supper"

	prepgamesdirs
}

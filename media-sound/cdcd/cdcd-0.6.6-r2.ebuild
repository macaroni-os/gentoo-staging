# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit autotools epatch

DESCRIPTION="a simple yet powerful command line cd player"
HOMEPAGE="http://libcdaudio.sourceforge.net"
SRC_URI="mirror://sourceforge/libcdaudio/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~hppa ~ppc ppc64 sparc x86"

RDEPEND="
	>=sys-libs/readline-4.2
	>=media-libs/libcdaudio-0.99.4
"
DEPEND="${RDEPEND}"

src_prepare() {
	cp "${FILESDIR}"/${P}-acinclude.m4 "${S}"/acinclude.m4 || die
	epatch "${FILESDIR}"/${P}-configure.patch
	eautoreconf
}

DOCS=( AUTHORS ChangeLog NEWS README )

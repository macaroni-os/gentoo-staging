# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-misc/xhkeys/xhkeys-2.2.1.ebuild,v 1.7 2010/09/13 11:20:46 xarthisius Exp $

inherit eutils

DESCRIPTION="assign particular actions to any key or key combination"
HOMEPAGE="http://wmalms.tripod.com/#XHKEYS"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXt
	x11-libs/libXext"
DEPEND="${RDEPEND}
	x11-proto/xextproto
	x11-proto/xproto"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-linux_headers.patch
}

src_install() {
	dobin xhkeys xhkconf || die
	dodoc README VERSION
}

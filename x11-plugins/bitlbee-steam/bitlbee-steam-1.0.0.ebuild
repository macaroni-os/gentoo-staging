# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-plugins/bitlbee-steam/bitlbee-steam-1.0.0.ebuild,v 1.2 2014/03/04 21:17:16 hasufell Exp $

EAPI=5

inherit eutils autotools

DESCRIPTION="Steam protocol plugin for BitlBee"
HOMEPAGE="https://github.com/jgeboski/bitlbee-steam"
SRC_URI="https://github.com/jgeboski/bitlbee-steam/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2 LGPL-2.1 BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="
	dev-libs/gmp:0
	>=net-im/bitlbee-3.2.1[plugins]"
DEPEND="${RDEPEND}
	dev-libs/glib:2
	virtual/pkgconfig"

src_prepare() {
	epatch "${FILESDIR}"/${P}-debug.patch
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable debug)
}

src_install() {
	default
	prune_libtool_files
}

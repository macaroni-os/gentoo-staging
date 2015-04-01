# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-dns/dnstop/dnstop-20121017.ebuild,v 1.4 2015/01/26 09:56:54 ago Exp $

EAPI=5

inherit eutils

DESCRIPTION="Displays various tables of DNS traffic on your network"
HOMEPAGE="http://dnstop.measurement-factory.com/"
SRC_URI="http://dnstop.measurement-factory.com/src/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ~ppc x86"
IUSE="ipv6"

RDEPEND="sys-libs/ncurses
	net-libs/libpcap[ipv6?]"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch_user
}

src_configure() {
	econf \
		$(use_enable ipv6)
}

src_install() {
	dobin dnstop
	doman dnstop.8
	dodoc CHANGES
}

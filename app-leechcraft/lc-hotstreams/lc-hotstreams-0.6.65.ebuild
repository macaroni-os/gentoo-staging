# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-leechcraft/lc-hotstreams/lc-hotstreams-0.6.65.ebuild,v 1.1 2014/04/10 17:54:51 maksbotan Exp $

EAPI="4"

inherit eutils leechcraft toolchain-funcs

DESCRIPTION="Provides some cool radio streams to music players like LMP"

SLOT="0"
KEYWORDS=" ~amd64 ~x86"
IUSE=""

DEPEND="~app-leechcraft/lc-core-${PV}
	dev-libs/qjson"
RDEPEND="${DEPEND}"

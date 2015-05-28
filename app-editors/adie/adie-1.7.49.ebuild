# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-editors/adie/adie-1.7.49.ebuild,v 1.2 2015/05/28 10:29:53 ago Exp $

EAPI=5

inherit fox

DESCRIPTION="Text editor based on the FOX Toolkit"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="~x11-libs/fox-${PV}
	x11-libs/libICE
	x11-libs/libSM"
RDEPEND="${DEPEND}"

# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/libflowmanager/libflowmanager-2.0.4.ebuild,v 1.1 2013/01/27 06:21:48 radhermit Exp $

EAPI=5

inherit autotools-utils

DESCRIPTION="A library designed to facilitate performing flow-based measurement tasks using packet-based inputs"
HOMEPAGE="http://research.wand.net.nz/software/libflowmanager.php"
SRC_URI="http://research.wand.net.nz/software/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/2"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

DEPEND=">=net-libs/libtrace-3.0.6"
RDEPEND="${DEPEND}"

AUTOTOOLS_IN_SOURCE_BUILD=1

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/lttng-ust/lttng-ust-2.5.0.ebuild,v 1.2 2015/05/15 13:14:09 blueness Exp $

EAPI=5

inherit autotools

MY_P="${P/_rc/-rc}"
DESCRIPTION="Linux Trace Toolkit - UST library"
HOMEPAGE="http://lttng.org"
SRC_URI="http://lttng.org/files/${PN}/${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86"
IUSE="examples"

DEPEND="dev-libs/userspace-rcu"
RDEPEND="${DEPEND}"

src_prepare() {
	if ! use examples; then
		sed -i -e '/SUBDIRS/s:examples::' doc/Makefile.am || die
	fi
	eautoreconf
}

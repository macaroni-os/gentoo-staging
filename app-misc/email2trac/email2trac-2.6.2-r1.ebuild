# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/email2trac/email2trac-2.6.2-r1.ebuild,v 1.1 2015/01/12 21:52:41 dlan Exp $

EAPI="5"

PYTHON_COMPAT=( python2_7 )
inherit python-single-r1

DESCRIPTION="Utilities to convert emails to trac tickets"
HOMEPAGE="https://oss.trac.surfsara.nl/email2trac"
SRC_URI="ftp://ftp.sara.nl/pub/outgoing/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="${PYTHON_DEPS}
		<www-apps/trac-1.1[${PYTHON_USEDEP}]"

pkg_setup() {
	einfo "You can set the following variables in make.conf:"
	einfo " - EMAIL2TRAC_TRAC_USER (default: apache)"
	einfo " - EMAIL2TRAC_MTA_USER (default: nobody)"

	python-single-r1_pkg_setup
}

src_prepare() {
	sed -i -e "/^CFLAGS/s:=:&${CFLAGS} :" \
		-e "s:\$(CC):& ${LDFLAGS} :" \
		Makefile.in || die 'sed failed'
}

src_configure() {
	econf --sysconfdir=/etc/${PN}/ \
		--with-trac_user=${EMAIL2TRAC_TRAC_USER:-apache} \
		--with-mta_user=${EMAIL2TRAC_MTA_USER:-nobody}
}

# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/libpri/libpri-1.4.13.ebuild,v 1.1 2012/10/27 12:25:52 chainsaw Exp $

EAPI="4"

inherit base

MY_P="${P/_/-}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Primary Rate ISDN (PRI) library"
HOMEPAGE="http://www.asterisk.org/"
SRC_URI="http://downloads.asterisk.org/pub/telephony/${PN}/releases/${MY_P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

PATCHES=(
	"${FILESDIR}/${PN}-1.4.13-multilib.patch"
	"${FILESDIR}/${PN}-1.4.13-respect-user-flags.patch"
	"${FILESDIR}/${PN}-1.4.13-no-static-lib.patch"
)

src_install() {
	emake INSTALL_PREFIX="${D}" LIBDIR="${D}/usr/$(get_libdir)" install
	dodoc ChangeLog README TODO
}

# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-firmware/b43-firmware/b43-firmware-5.100.138.ebuild,v 1.2 2013/04/06 23:09:56 zerochaos Exp $

EAPI=5

: ${B43_FIRMWARE_SRC_OBJ:=wl_apsta.o}

MY_P="broadcom-wl-${PV}"
DESCRIPTION="broadcom firmware for b43 LP PHY and >=linux-3.2"
HOMEPAGE="http://linuxwireless.org/en/users/Drivers/b43"
SRC_URI="http://www.lwfinger.com/b43-firmware/${MY_P}.tar.bz2"

LICENSE="Broadcom"
SLOT="b43"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""
RESTRICT="mirror binchecks strip"

DEPEND=">=net-wireless/b43-fwcutter-015"
RDEPEND=""

S="${WORKDIR}/${MY_P}"

src_compile() {
	mkdir ebuild-output
	b43-fwcutter -w ebuild-output $(find -name ${B43_FIRMWARE_SRC_OBJ}) || die
}

src_install() {
	insinto /lib/firmware
	doins -r ebuild-output/* || die
}

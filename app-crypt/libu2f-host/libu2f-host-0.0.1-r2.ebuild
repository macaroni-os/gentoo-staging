# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-crypt/libu2f-host/libu2f-host-0.0.1-r2.ebuild,v 1.1 2014/11/10 17:01:14 flameeyes Exp $

EAPI=5

inherit autotools-utils linux-info udev

DESCRIPTION="Yubico Universal 2nd Factor (U2F) Host C Library"
HOMEPAGE="https://developers.yubico.com/libu2f-host/"
SRC_URI="https://developers.yubico.com/${PN}/Releases/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="kernel_linux static-libs systemd"

RDEPEND="dev-libs/hidapi
	dev-libs/json-c"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
RDEPEND="${RDEPEND}
	systemd? ( sys-apps/systemd[acl] )"

CONFIG_CHECK="~HIDRAW"

src_prepare() {
	autotools-utils_src_prepare

	sed -e 's:TAG+="uaccess":MODE="0664", GROUP="plugdev":g' \
		70-u2f.rules > 70-u2f-udev.rules || die
}

src_configure() {
	autotools-utils_src_configure
}

src_install() {
	autotools-utils_src_install

	if use kernel_linux; then
		if use systemd; then
			udev_dorules 70-u2f.rules
		else
			udev_newrules 70-u2f-udev.rules 70-u2f.rules
		fi
	fi
}

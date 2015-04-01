# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/czmq/czmq-2.2.0-r2.ebuild,v 1.6 2015/02/28 19:56:34 maekke Exp $

EAPI=5

AUTOTOOLS_AUTORECONF=true

inherit autotools-utils

DESCRIPTION=" High-level C Binding for ZeroMQ"
HOMEPAGE="http://czmq.zeromq.org"
SRC_URI="http://download.zeromq.org/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 arm hppa x86"
IUSE="doc static-libs"

RDEPEND="
	dev-libs/libsodium:=
	sys-apps/util-linux
	>=net-libs/zeromq-2.1
"
DEPEND="${RDEPEND}
	doc? (
		app-text/asciidoc
		app-text/xmlto
	)"

DOCS=( NEWS AUTHORS )

src_prepare() {
	sed -i -e 's|-Werror||g' configure.ac || die
	autotools-utils_src_prepare
}

src_install() {
	autotools-utils_src_install
	mv "${ED}"/usr/bin/makecert{,-czmq} || die
}

pkg_postinst() {
	elog "Due to file collisions we moved the makecert tool to makecert-${PN}."
}

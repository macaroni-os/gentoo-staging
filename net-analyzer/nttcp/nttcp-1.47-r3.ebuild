# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/nttcp/nttcp-1.47-r3.ebuild,v 1.3 2015/01/26 10:14:56 ago Exp $

EAPI=5
inherit eutils toolchain-funcs

DESCRIPTION="tool to test TCP and UDP throughput"
HOMEPAGE="http://www.leo.org/~elmar/nttcp/"
SRC_URI="http://www.leo.org/~elmar/nttcp/${P}.tar.gz"
LICENSE="public-domain"

SLOT="0"
KEYWORDS="amd64 ~mips ~ppc x86"

src_prepare() {
	epatch "${FILESDIR}"/${P}-format-security.patch
}

src_compile() {
	emake \
		ARCH= \
		CC="$(tc-getCC)" \
		LFLAGS="${LDFLAGS}" \
		OPT="${CFLAGS}"
}

src_install() {
	dobin ${PN}
	doman ${PN}.1
}

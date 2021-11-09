# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit toolchain-funcs systemd

DESCRIPTION="Simple X hotkey daemon"
HOMEPAGE="https://github.com/baskerville/sxhkd/"
SRC_URI="https://github.com/baskerville/sxhkd/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="amd64 ~riscv ~x86"

RDEPEND="x11-libs/libxcb
	x11-libs/xcb-util-keysyms"
DEPEND="${RDEPEND}
	x11-libs/xcb-util"

src_compile() {
	emake CC="$(tc-getCC)"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" DOCPREFIX="${EPREFIX}/usr/share/doc/${PF}" install
	systemd_dounit contrib/systemd/${PN}.service
}

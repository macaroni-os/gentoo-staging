# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-fs/unionfs-fuse/unionfs-fuse-1.0.ebuild,v 1.1 2015/01/30 18:37:06 sping Exp $

EAPI="5"

DESCRIPTION="Self-syncing tree-merging file system based on FUSE"

HOMEPAGE="https://github.com/rpodgorny/unionfs-fuse"
SRC_URI="https://github.com/rpodgorny/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-linux"
IUSE=""

DEPEND="sys-fs/fuse"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install || die "emake install failed"
}

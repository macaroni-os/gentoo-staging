# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-apps/checkpolicy/checkpolicy-2.4_rc7.ebuild,v 1.1 2014/12/06 23:25:46 perfinion Exp $

EAPI="5"

inherit toolchain-funcs eutils

MY_P="${P//_/-}"

SEPOL_VER="${PV}"
SEMNG_VER="${PV}"

DESCRIPTION="SELinux policy compiler"
HOMEPAGE="http://userspace.selinuxproject.org"
SRC_URI="https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/20140826/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=sys-libs/libsepol-${SEPOL_VER}
	>=sys-libs/libsemanage-${SEMNG_VER}
	sys-devel/flex
	sys-devel/bison"

RDEPEND=">=sys-libs/libsemanage-${SEMNG_VER}"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch_user
}

src_compile() {
	emake CC="$(tc-getCC)" YACC="bison -y"
}

src_install() {
	emake DESTDIR="${D}" install

	if use debug; then
		dobin "${S}/test/dismod"
		dobin "${S}/test/dispol"
	fi
}

pkg_postinst() {
	einfo "This checkpolicy can compile version `checkpolicy -V |cut -f 1 -d ' '` policy."
}

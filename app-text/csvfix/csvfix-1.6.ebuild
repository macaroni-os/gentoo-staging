# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-text/csvfix/csvfix-1.6.ebuild,v 1.2 2014/12/23 16:58:19 radhermit Exp $

EAPI=5

inherit eutils toolchain-funcs versionator vcs-snapshot

MY_PV="$(delete_all_version_separators)"
DESCRIPTION="A stream editor for manipulating CSV files"
HOMEPAGE="http://neilb.bitbucket.org/csvfix/ https://bitbucket.org/neilb/csvfix/"
SRC_URI="https://bitbucket.org/neilb/csvfix/get/version-${PV}.tar.bz2 -> ${P}.tar.bz2
	doc? ( https://bitbucket.org/neilb/csvfix/downloads/csvfix_man_html_${MY_PV}0.zip )"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND="dev-libs/expat"
DEPEND="${RDEPEND}
	doc? ( app-arch/unzip )"

src_prepare() {
	epatch "${FILESDIR}"/${P}-makefile.patch
	epatch "${FILESDIR}"/${PN}-1.10a-tests.patch

	edos2unix $(find csvfix/tests -type f)
}

src_compile() {
	emake CC="$(tc-getCXX)" AR="$(tc-getAR)" lin
}

src_test() {
	cd ${PN}/tests
	chmod +x run1 runtests
	./runtests || die "tests failed"
}

src_install() {
	dobin csvfix/bin/csvfix
	use doc && dohtml -r "${WORKDIR}"/${PN}${MY_PV}/*
}

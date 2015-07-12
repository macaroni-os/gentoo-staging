# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Locale-Maketext-Lexicon/Locale-Maketext-Lexicon-0.960.0-r1.ebuild,v 1.2 2015/07/12 01:31:46 patrick Exp $

EAPI=5

MY_PN=Locale-Maketext-Lexicon
MODULE_AUTHOR=DRTECH
MODULE_VERSION=0.96
inherit perl-module

DESCRIPTION="Use other catalog formats in Maketext"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 ~sh sparc x86 ~amd64-fbsd"
IUSE="test"

RDEPEND="
	>=virtual/perl-Locale-Maketext-1.170.0
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Pod
	)
"

SRC_TEST="do"

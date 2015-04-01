# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Any-Moose/Any-Moose-0.210.0.ebuild,v 1.6 2015/03/21 22:25:20 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=SARTAK
MODULE_VERSION=0.21
inherit perl-module

DESCRIPTION="Use Moose or Mouse modules"

SLOT="0"
KEYWORDS="amd64 hppa ppc x86 ~ppc-macos"
IUSE=""

RDEPEND="|| ( >=dev-perl/Mouse-0.40 dev-perl/Moose )
	virtual/perl-version"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31"

SRC_TEST=skip

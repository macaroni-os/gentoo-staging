# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Devel-CheckCompiler/Devel-CheckCompiler-0.50.0.ebuild,v 1.4 2015/06/13 22:16:29 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=SYOHEX
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Check the compiler's availability"

SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Exporter
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-File-Temp
	virtual/perl-parent
"
# CPAN::Meta::Prereqs -> perl-CPAN-Meta
DEPEND="
	virtual/perl-CPAN-Meta
	>=dev-perl/Module-Build-0.380.0
	>=virtual/perl-Test-Simple-0.980.0
	dev-perl/Test-Requires
	${RDEPEND}
"

SRC_TEST="do"

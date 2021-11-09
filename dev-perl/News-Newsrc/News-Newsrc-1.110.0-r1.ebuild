# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=SWMCD
DIST_VERSION=1.11
inherit perl-module

DESCRIPTION="Manage newsrc files"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ppc x86"

RDEPEND="
	>=dev-perl/Set-IntSpan-1.70.0
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

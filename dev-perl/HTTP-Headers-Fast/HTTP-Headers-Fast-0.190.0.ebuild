# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="Faster implementation of HTTP::Headers"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/HTTP-Date
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.380.0
	test? (
		>=virtual/perl-Test-Simple-0.980.0
		dev-perl/Test-Requires
	)
"

SRC_TEST="do parallel"

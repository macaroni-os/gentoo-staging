# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/DateTime-Set/DateTime-Set-0.340.0.ebuild,v 1.2 2015/06/13 22:35:39 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=FGLOCK
MODULE_VERSION=0.3400
inherit perl-module

DESCRIPTION="Datetime sets and set math"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/DateTime-0.120.0
	>=dev-perl/Set-Infinite-0.590.0
	dev-perl/Params-Validate
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? ( virtual/perl-Test-Simple )
"
# meta.yml is incorrect, it needs P-V and M-B

SRC_TEST=do

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/PPIx-Utilities/PPIx-Utilities-1.1.0-r1.ebuild,v 1.4 2015/06/13 21:55:32 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=ELLIOTJS
MODULE_VERSION=1.001000
inherit perl-module

DESCRIPTION="Extensions to PPI"

SLOT="0"
KEYWORDS="~alpha amd64 ~ppc ~ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris"
IUSE="test"

RDEPEND=">=dev-perl/PPI-1.208
	dev-perl/Exception-Class
	dev-perl/Readonly
	virtual/perl-Scalar-List-Utils"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? ( dev-perl/Test-Deep )"

SRC_TEST="do"

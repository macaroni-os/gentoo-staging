# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/URI-Encode/URI-Encode-0.90.0.ebuild,v 1.2 2015/06/13 22:09:17 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=MITHUN
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="Simple percent Encoding/Decoding"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Encode
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.380.0
	virtual/perl-version
	test? ( virtual/perl-Test-Simple )
"

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/RRD-Simple/RRD-Simple-1.440.0-r1.ebuild,v 1.2 2015/06/13 22:40:54 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=NICOLAW
MODULE_VERSION=1.44
inherit perl-module

DESCRIPTION="Simple interface to create and store data in RRD files"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Test-Pod
	dev-perl/Test-Pod-Coverage
	dev-perl/Module-Build"
RDEPEND="dev-perl/Test-Deep
	net-analyzer/rrdtool[perl]"

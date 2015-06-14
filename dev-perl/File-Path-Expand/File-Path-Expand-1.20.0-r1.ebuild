# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/File-Path-Expand/File-Path-Expand-1.20.0-r1.ebuild,v 1.2 2015/06/13 22:12:50 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=RCLAMP
MODULE_VERSION=1.02
inherit perl-module

DESCRIPTION="Expand filenames"

SLOT="0"
KEYWORDS="~alpha amd64 ~ia64 ~ppc ~ppc64 ~sparc x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-perl/Module-Build"

SRC_TEST="do"

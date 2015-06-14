# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/File-MimeInfo/File-MimeInfo-0.270.0.ebuild,v 1.3 2015/06/13 22:47:54 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=MICHIELB
MODULE_VERSION=0.27
inherit perl-module

DESCRIPTION="Determine file type"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~x86-macos ~sparc-solaris"
IUSE="test"

RDEPEND=">=dev-perl/File-BaseDir-0.03
		>=dev-perl/File-DesktopEntry-0.0
		x11-misc/shared-mime-info"

DEPEND="${RDEPEND}
		dev-perl/Module-Build
		test? (
			dev-perl/Test-Pod
			dev-perl/Test-Pod-Coverage
		)
		virtual/perl-ExtUtils-MakeMaker"

SRC_TEST="do parallel"

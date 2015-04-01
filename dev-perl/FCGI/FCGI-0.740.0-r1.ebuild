# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/FCGI/FCGI-0.740.0-r1.ebuild,v 1.1 2014/08/22 19:15:57 axs Exp $

EAPI=5

MODULE_AUTHOR=FLORA
MODULE_VERSION=0.74
inherit perl-module

DESCRIPTION="Fast CGI"

LICENSE="FastCGI"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ppc ~ppc64 x86"
IUSE=""

SRC_TEST="do"

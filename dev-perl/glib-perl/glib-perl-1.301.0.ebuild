# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/glib-perl/glib-perl-1.301.0.ebuild,v 1.12 2014/11/12 21:25:11 dilfridge Exp $

EAPI=5

MY_PN=Glib
MODULE_AUTHOR=XAOC
MODULE_VERSION=1.301
inherit perl-module

DESCRIPTION="Glib - Perl wrappers for the GLib utility and Object libraries"
HOMEPAGE="http://gtk2-perl.sf.net/ ${HOMEPAGE}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 ~sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~x86-solaris"
IUSE=""

RDEPEND=">=dev-libs/glib-2"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	>=dev-perl/extutils-pkgconfig-1.0.0
	>=dev-perl/extutils-depends-0.300.0
	dev-perl/Log-Agent
"

SRC_TEST="do"

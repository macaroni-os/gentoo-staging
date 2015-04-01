# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-xemacs/xslide/xslide-1.09.ebuild,v 1.5 2014/08/10 19:49:46 slyfox Exp $

SLOT="0"
IUSE=""
DESCRIPTION="XSL editing support"
PKG_CAT="standard"

RDEPEND="app-xemacs/xemacs-ispell
app-xemacs/mail-lib
app-xemacs/xemacs-base
"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"

inherit xemacs-packages

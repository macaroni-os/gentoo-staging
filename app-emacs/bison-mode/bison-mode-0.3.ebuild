# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emacs/bison-mode/bison-mode-0.3.ebuild,v 1.2 2015/04/13 19:32:43 nicolasbock Exp $

EAPI=5

inherit elisp

DESCRIPTION="Emacs major mode for Bison, Yacc and Lex grammars"
HOMEPAGE="https://github.com/Wilfred/bison-mode"
SRC_URI="http://dev.gentoo.org/~nicolasbock/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

SITEFILE="50${PN}-gentoo.el"

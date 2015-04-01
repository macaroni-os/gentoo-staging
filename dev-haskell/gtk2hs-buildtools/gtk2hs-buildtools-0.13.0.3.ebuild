# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/gtk2hs-buildtools/gtk2hs-buildtools-0.13.0.3.ebuild,v 1.1 2014/12/13 13:42:55 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Tools to build the Gtk2Hs suite of User Interface libraries"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="+closuresignals"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.8
	dev-haskell/happy
	dev-haskell/random
	>=dev-lang/ghc-7.4.1
	|| ( ( >=dev-lang/ghc-7.7 dev-haskell/hashtables ) <dev-lang/ghc-7.7 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag closuresignals closuresignals)
}

# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the Pango text rendering engine"
HOMEPAGE="https://hackage.haskell.org/package/pango"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.13.0.0:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	>=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/cairo
	x11-libs/pango
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	dev-haskell/gtk2hs-buildtools
	virtual/pkgconfig
"

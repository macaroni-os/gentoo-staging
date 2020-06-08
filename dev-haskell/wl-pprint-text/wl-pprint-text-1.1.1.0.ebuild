# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Wadler/Leijen Pretty Printer for Text values"
HOMEPAGE="https://hackage.haskell.org/package/wl-pprint-text"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-0.9:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/text-0.11.0.0:=[profile?] <dev-haskell/text-1.3.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

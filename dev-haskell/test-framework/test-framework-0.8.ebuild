# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Framework for running and organising tests, with HUnit and QuickCheck support"
HOMEPAGE="https://batterseapower.github.com/test-framework/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-terminal-0.4.0:=[profile?]
		>=dev-haskell/ansi-wl-pprint-0.5.1:=[profile?]
		>=dev-haskell/extensible-exceptions-0.1.1:=[profile?]
		>=dev-haskell/hostname-1.0:=[profile?]
		>=dev-haskell/random-1.0:=[profile?]
		>=dev-haskell/regex-posix-0.72:=[profile?]
		>=dev-haskell/xml-1.3.5:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

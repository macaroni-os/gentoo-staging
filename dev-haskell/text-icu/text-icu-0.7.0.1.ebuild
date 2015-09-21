# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to the ICU library"
HOMEPAGE="https://github.com/bos/text-icu"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-haskell/text-0.9.1.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dev-libs/icu:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2
		>=dev-haskell/quickcheck-2.4
		dev-haskell/random
		>=dev-haskell/test-framework-0.4
		>=dev-haskell/test-framework-hunit-0.2
		>=dev-haskell/test-framework-quickcheck2-0.2 )
"

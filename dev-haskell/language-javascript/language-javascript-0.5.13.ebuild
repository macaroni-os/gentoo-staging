# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parser for JavaScript"
HOMEPAGE="https://github.com/alanz/language-javascript"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.2:=[profile?] <dev-haskell/blaze-builder-1:=[profile?]
	>=dev-haskell/mtl-1.1:=[profile?] <dev-haskell/mtl-2.9:=[profile?]
	>=dev-haskell/utf8-string-0.3.7:=[profile?] <dev-haskell/utf8-string-1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.9.2
	dev-haskell/happy
	test? ( >=dev-haskell/blaze-builder-0.2 <dev-haskell/blaze-builder-1
		dev-haskell/hunit
		>=dev-haskell/mtl-1.1 <dev-haskell/mtl-2.9
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		>=dev-haskell/utf8-light-0.4 <dev-haskell/utf8-light-1.0
		>=dev-haskell/utf8-string-0.3.7 <dev-haskell/utf8-string-1 )
"

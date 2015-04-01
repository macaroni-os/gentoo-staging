# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/mwc-random/mwc-random-0.13.1.0.ebuild,v 1.1 2013/10/19 12:51:26 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast, high quality pseudo random number generation"
HOMEPAGE="https://github.com/bos/mwc-random"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/primitive:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	test? ( dev-haskell/hunit
		dev-haskell/quickcheck
		>=dev-haskell/statistics-0.10.1.0
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"

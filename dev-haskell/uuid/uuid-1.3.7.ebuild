# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/uuid/uuid-1.3.7.ebuild,v 1.1 2014/12/22 11:42:43 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="For creating, comparing, parsing and printing Universally Unique Identifiers"
HOMEPAGE="https://github.com/aslatter/uuid"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.4:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/cryptohash-0.7:=[profile?] <dev-haskell/cryptohash-0.12:=[profile?]
	>=dev-haskell/network-info-0.2:=[profile?] <dev-haskell/network-info-0.3:=[profile?]
	>=dev-haskell/random-1.0.1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	|| ( ( >=dev-haskell/hashable-1.1.1.0:=[profile?] <dev-haskell/hashable-1.2.0:=[profile?] )
		( >=dev-haskell/hashable-1.2.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.8
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4 )
"

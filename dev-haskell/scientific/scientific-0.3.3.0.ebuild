# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/scientific/scientific-0.3.3.0.ebuild,v 1.1 2014/08/12 10:24:39 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Numbers represented using scientific notation"
HOMEPAGE="https://github.com/basvandijk/scientific"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bytestring-builder"

RDEPEND=">=dev-haskell/hashable-1.1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/text-0.8:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-2.8
		>=dev-haskell/smallcheck-1.0 <dev-haskell/smallcheck-1.2
		>=dev-haskell/tasty-0.5 <dev-haskell/tasty-0.9
		>=dev-haskell/tasty-ant-xml-1.0 <dev-haskell/tasty-ant-xml-1.1
		>=dev-haskell/tasty-hunit-0.8 <dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9
		>=dev-haskell/tasty-smallcheck-0.2 <dev-haskell/tasty-smallcheck-0.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bytestring-builder bytestring-builder)
}

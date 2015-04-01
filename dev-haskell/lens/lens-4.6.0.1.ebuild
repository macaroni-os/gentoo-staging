# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/lens/lens-4.6.0.1.ebuild,v 1.1 2014/12/14 09:01:57 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lenses, Folds and Traversals"
HOMEPAGE="http://github.com/ekmett/lens/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="benchmark-uniplate dump-splices +inlining j old-inline-pragmas safe +test-doctests +test-hlint +test-hunit +test-properties +trustworthy"

RDEPEND=">=dev-haskell/bifunctors-4:=[profile?] <dev-haskell/bifunctors-5:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/contravariant-0.3:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/distributive-0.3:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/exceptions-0.1.1:=[profile?] <dev-haskell/exceptions-1:=[profile?]
	>=dev-haskell/free-4:=[profile?] <dev-haskell/free-5:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/mtl-2.0.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parallel-3.1.0.1:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/primitive-0.4.0.1:=[profile?] <dev-haskell/primitive-0.6:=[profile?]
	>=dev-haskell/profunctors-4:=[profile?] <dev-haskell/profunctors-5:=[profile?]
	>=dev-haskell/reflection-1.1.6:=[profile?] <dev-haskell/reflection-2:=[profile?]
	>=dev-haskell/semigroupoids-4:=[profile?] <dev-haskell/semigroupoids-5:=[profile?]
	>=dev-haskell/semigroups-0.8.4:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/tagged-0.4.4:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-haskell/void-0.5:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( test-doctests? ( >=dev-haskell/doctest-0.9.1
					dev-haskell/generic-deriving
					dev-haskell/nats
					>=dev-haskell/semigroups-0.9
					>=dev-haskell/simple-reflect-0.3.1
					test-properties? ( >=dev-haskell/quickcheck-2.4
							>=dev-haskell/test-framework-0.6
							>=dev-haskell/test-framework-quickcheck2-0.2
							>=dev-haskell/test-framework-th-0.2 ) )
		test-hunit? ( >=dev-haskell/hunit-1.2
				>=dev-haskell/test-framework-0.6
				>=dev-haskell/test-framework-hunit-0.2
				>=dev-haskell/test-framework-th-0.2
				test-properties? ( >=dev-haskell/quickcheck-2.4
							>=dev-haskell/test-framework-quickcheck2-0.2 ) ) )
	test-hlint? ( test-doctests? ( test? ( >=dev-haskell/hlint-1.7 ) )
			!test-doctests? ( test-hunit? ( test? ( >=dev-haskell/hlint-1.7 ) )
					!test-hunit? ( test-properties? ( test? ( >=dev-haskell/hlint-1.7
											>=dev-haskell/quickcheck-2.4
											>=dev-haskell/test-framework-0.6
											>=dev-haskell/test-framework-quickcheck2-0.2
											>=dev-haskell/test-framework-th-0.2 ) )
							!test-properties? ( test? ( >=dev-haskell/hlint-1.7 ) ) ) ) )
	!test-hlint? ( test? ( !test-doctests? ( !test-hunit? ( test-properties? ( >=dev-haskell/quickcheck-2.4
											>=dev-haskell/test-framework-0.6
											>=dev-haskell/test-framework-quickcheck2-0.2
											>=dev-haskell/test-framework-th-0.2 ) ) ) ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag benchmark-uniplate benchmark-uniplate) \
		$(cabal_flag dump-splices dump-splices) \
		$(cabal_flag inlining inlining) \
		$(cabal_flag j j) \
		--flag=-lib-werror \
		$(cabal_flag old-inline-pragmas old-inline-pragmas) \
		$(cabal_flag safe safe) \
		$(cabal_flag test-doctests test-doctests) \
		$(cabal_flag test-hlint test-hlint) \
		$(cabal_flag test-hunit test-hunit) \
		$(cabal_flag test-properties test-properties) \
		$(cabal_flag trustworthy trustworthy)
}

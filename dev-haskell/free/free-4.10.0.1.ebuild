# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/free/free-4.10.0.1.ebuild,v 1.1 2014/12/14 05:04:24 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Monads for free"
HOMEPAGE="http://github.com/ekmett/free/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bifunctors-4:=[profile?] <dev-haskell/bifunctors-5:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/distributive-0.2.1:=[profile?]
	>=dev-haskell/mtl-2.0.1.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/prelude-extras-0.4:=[profile?] <dev-haskell/prelude-extras-1:=[profile?]
	>=dev-haskell/profunctors-4:=[profile?] <dev-haskell/profunctors-5:=[profile?]
	>=dev-haskell/semigroupoids-4:=[profile?] <dev-haskell/semigroupoids-5:=[profile?]
	>=dev-haskell/semigroups-0.8.3.1:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-0.2.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

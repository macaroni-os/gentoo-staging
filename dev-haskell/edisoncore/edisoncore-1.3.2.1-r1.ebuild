# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="EdisonCore"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library of efficent, purely-functional data structures (Core Implementations)"
HOMEPAGE="http://rwd.rdockins.name/edison/home/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/edisonapi-1.3:=[profile?] <dev-haskell/edisonapi-1.4:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/quickcheck-2.8.2:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

S="${WORKDIR}/${MY_P}"

PATCHES=( "${FILESDIR}/${PN}-1.3.2.1-ghc-8.8.patch" )

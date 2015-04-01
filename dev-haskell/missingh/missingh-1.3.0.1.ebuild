# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/missingh/missingh-1.3.0.1.ebuild,v 1.1 2014/12/14 09:37:08 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="MissingH"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Large utility library"
HOMEPAGE="http://software.complete.org/missingh"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE=""

RDEPEND="dev-haskell/hslogger:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/regex-compat:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/errorcall-eq-instance
		dev-haskell/quickcheck
		dev-haskell/testpack )
"

S="${WORKDIR}/${MY_P}"

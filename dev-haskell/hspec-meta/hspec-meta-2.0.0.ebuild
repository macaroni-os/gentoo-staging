# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/hspec-meta/hspec-meta-2.0.0.ebuild,v 1.1 2014/12/13 14:17:55 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A version of Hspec which is used to test Hspec itself"
HOMEPAGE="http://hspec.github.io/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/hspec-expectations:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-haskell/quickcheck-2.5.1:2=[profile?]
	dev-haskell/quickcheck-io:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/setenv:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

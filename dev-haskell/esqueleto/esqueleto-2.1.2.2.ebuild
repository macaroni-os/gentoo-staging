# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/esqueleto/esqueleto-2.1.2.2.ebuild,v 1.1 2015/04/05 01:12:14 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -mysql,-postgresql

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Type-safe EDSL for SQL queries on persistent backends"
HOMEPAGE="https://github.com/prowdsponsor/esqueleto"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests hang

RDEPEND=">=dev-haskell/conduit-1.1:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	>=dev-haskell/persistent-2.1:=[profile?] <dev-haskell/persistent-2.2:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/tagged-0.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.8
		dev-haskell/hunit
		dev-haskell/monad-control
		>=dev-haskell/monad-logger-0.3
		>=dev-haskell/persistent-sqlite-2.1 <dev-haskell/persistent-sqlite-2.2
		>=dev-haskell/persistent-template-2.1 <dev-haskell/persistent-template-2.2
		dev-haskell/quickcheck )
"

src_prepare() {
	cabal_chdeps \
		'base                 >= 4.5    && < 4.8' 'base                 >= 4.5'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-mysql \
		--flag=-postgresql
}

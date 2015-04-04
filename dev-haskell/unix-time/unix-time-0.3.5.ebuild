# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/unix-time/unix-time-0.3.5.ebuild,v 1.1 2015/04/03 22:40:34 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Unix time parser/formatter and utilities"
HOMEPAGE="http://hackage.haskell.org/package/unix-time"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.3
		>=dev-haskell/hspec-1.5
		dev-haskell/old-locale
		dev-haskell/quickcheck )
"

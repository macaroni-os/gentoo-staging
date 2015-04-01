# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/fast-logger/fast-logger-0.3.3.ebuild,v 1.1 2013/08/26 11:29:01 qnikst Exp $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fast logging system"
HOMEPAGE="http://hackage.haskell.org/package/fast-logger"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/blaze-builder:=[profile?]
		>=dev-haskell/date-cache-0.3:=[profile?]
		dev-haskell/text:=[profile?]
		>=dev-haskell/unix-time-0.2:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hspec
		)"

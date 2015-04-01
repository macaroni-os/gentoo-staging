# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/simple-sendfile/simple-sendfile-0.2.12.ebuild,v 1.3 2013/11/24 19:40:19 ago Exp $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cross platform library for the sendfile system call"
HOMEPAGE="http://hackage.haskell.org/package/simple-sendfile"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
RESTRICT="test"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-haskell/network:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10
		test? ( dev-haskell/conduit
			>=dev-haskell/hspec-1.3
			dev-haskell/hunit
			dev-haskell/network-conduit
		)"

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/http-client-tls/http-client-tls-0.2.1.1.ebuild,v 1.2 2014/12/11 19:43:07 mjo Exp $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="http-client backend using the connection package and tls library"
HOMEPAGE="https://github.com/snoyberg/http-client"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/connection-0.2:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/http-client-0.2.2:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/tls-1.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec
		dev-haskell/http-types )
"

# The only test in the suite requires internet access.
RESTRICT="test"

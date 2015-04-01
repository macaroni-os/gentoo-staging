# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/http-client-conduit/http-client-conduit-0.2.0.1.ebuild,v 1.1 2014/03/09 12:46:23 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Frontend support for using http-client with conduit"
HOMEPAGE="https://github.com/snoyberg/http-client"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/conduit:=[profile?]
	>=dev-haskell/http-client-0.2:=[profile?]
	>=dev-haskell/resourcet-0.4.6:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

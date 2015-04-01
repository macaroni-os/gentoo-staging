# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/wai-conduit/wai-conduit-3.0.0.ebuild,v 1.1 2014/07/02 15:33:03 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="conduit wrappers for WAI"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/blaze-builder:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

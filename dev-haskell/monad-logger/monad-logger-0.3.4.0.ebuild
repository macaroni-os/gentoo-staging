# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/monad-logger/monad-logger-0.3.4.0.ebuild,v 1.2 2014/07/25 09:16:21 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A class of monads which can log messages"
HOMEPAGE="https://github.com/kazu-yamamoto/logger"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template_haskell"

RDEPEND="dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.1:=[profile?]
	>=dev-haskell/fast-logger-2.0:=[profile?] <dev-haskell/fast-logger-2.2:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/resourcet-0.4:=[profile?] <dev-haskell/resourcet-0.5:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/stm-chans:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag template_haskell template_haskell)
}

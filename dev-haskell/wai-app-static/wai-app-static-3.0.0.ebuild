# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/wai-app-static/wai-app-static-3.0.0.ebuild,v 1.1 2014/07/02 14:20:59 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="WAI application for static serving"
HOMEPAGE="http://www.yesodweb.com/book/web-application-interface"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="print"

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?]
	>=dev-haskell/blaze-builder-0.2.1.4:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	dev-haskell/byteable:=[profile?]
	>=dev-haskell/cryptohash-0.11:=[profile?]
	dev-haskell/cryptohash-conduit:=[profile?]
	>=dev-haskell/file-embed-0.0.3.1:=[profile?]
	dev-haskell/http-date:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/mime-types-0.1:=[profile?] <dev-haskell/mime-types-0.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.7:=[profile?]
	>=dev-haskell/system-fileio-0.3:=[profile?]
	>=dev-haskell/system-filepath-0.4:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?]
	>=dev-haskell/unix-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.1:=[profile?]
	>=dev-haskell/wai-extra-3.0:=[profile?] <dev-haskell/wai-extra-3.1:=[profile?]
	>=dev-haskell/warp-3.0:=[profile?] <dev-haskell/warp-3.1:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/network )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag print print)
}

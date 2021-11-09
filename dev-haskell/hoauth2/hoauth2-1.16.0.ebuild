# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -test

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell OAuth2 authentication client"
HOMEPAGE="https://github.com/freizl/hoauth2"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.3.0.0:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/binary-0.8.3:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/http-conduit-2.1:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/http-types-0.11:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/microlens-0.4.0:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5:=[profile?]
	>=dev-haskell/uri-bytestring-0.2.3.1:=[profile?] <dev-haskell/uri-bytestring-0.4:=[profile?]
	>=dev-haskell/uri-bytestring-aeson-0.1:=[profile?] <dev-haskell/uri-bytestring-aeson-0.2:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-test
}

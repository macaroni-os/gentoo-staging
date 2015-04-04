# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/citeproc-hs/citeproc-hs-0.3.10.ebuild,v 1.1 2015/04/04 00:41:09 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="A Citation Style Language implementation in Haskell"
HOMEPAGE="http://istitutocolli.org/repos/citeproc-hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bibutils embed_data_files +hexpat +network +small_base unicode_collation"

RDEPEND="dev-haskell/json:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/pandoc-types-1.8:=[profile?] <dev-haskell/pandoc-types-1.13:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	bibutils? ( >=dev-haskell/hs-bibutils-0.3:=[profile?] )
	embed_data_files? ( dev-haskell/file-embed:=[profile?] )
	hexpat? ( >=dev-haskell/hexpat-0.20.2:=[profile?] )
	!hexpat? ( dev-haskell/xml:=[profile?] )
	network? ( >=dev-haskell/http-4000.0.9:=[profile?]
			>=dev-haskell/network-2.6:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] )
	unicode_collation? ( dev-haskell/text:=[profile?]
				dev-haskell/text-icu:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=("${FILESDIR}/${P}-ghc-7.10.patch")

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bibutils bibutils) \
		$(cabal_flag embed_data_files embed_data_files) \
		$(cabal_flag hexpat hexpat) \
		$(cabal_flag network network) \
		$(cabal_flag small_base small_base) \
		$(cabal_flag unicode_collation unicode_collation)
}

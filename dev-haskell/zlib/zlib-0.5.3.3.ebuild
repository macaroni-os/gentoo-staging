# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/zlib/zlib-0.5.3.3.ebuild,v 1.8 2012/12/24 15:15:05 slyfox Exp $

# ebuild generated by hackport 0.2.14

EAPI="4"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Compression and decompression in the gzip and zlib formats"
HOMEPAGE="http://hackage.haskell.org/package/zlib"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd ~ppc-macos ~x86-macos"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.2
		sys-libs/zlib"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	cabal_chdeps \
		'bytestring == 0.9.*' 'bytestring >= 0.9 && < 0.11'
}

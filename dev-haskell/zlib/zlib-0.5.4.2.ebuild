# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Compression and decompression in the gzip and zlib formats"
HOMEPAGE="https://hackage.haskell.org/package/zlib"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~ppc-macos ~x86-macos"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

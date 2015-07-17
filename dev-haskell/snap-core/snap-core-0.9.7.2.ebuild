# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/snap-core/snap-core-0.9.7.2.ebuild,v 1.1 2015/07/17 10:37:33 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Snap: A Haskell Web Framework (core interfaces and types)"
HOMEPAGE="http://snapframework.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug portable"

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/attoparsec-enumerator-0.3:=[profile?] <dev-haskell/attoparsec-enumerator-0.4:=[profile?]
	>=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/blaze-builder-enumerator-0.2:=[profile?] <dev-haskell/blaze-builder-enumerator-0.3:=[profile?]
	>=dev-haskell/case-insensitive-0.3:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/enumerator-0.4.15:=[profile?] <dev-haskell/enumerator-0.5:=[profile?]
	>=dev-haskell/hunit-1.2:=[profile?] <dev-haskell/hunit-2:=[profile?]
	>=dev-haskell/monadcatchio-transformers-0.2.1:=[profile?] <dev-haskell/monadcatchio-transformers-0.4:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-2:=[profile?]
	>=dev-haskell/regex-posix-0.95:=[profile?] <dev-haskell/regex-posix-1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unix-compat-0.2:=[profile?] <dev-haskell/unix-compat-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4.3:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.6:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-haskell/zlib-enum-0.2.1:=[profile?] <dev-haskell/zlib-enum-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	|| ( ( >=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.2:=[profile?] )
		( >=dev-haskell/hashable-1.2.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?] ) )
	portable? ( >=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?] )
	!portable? ( >=dev-haskell/bytestring-mmap-0.2.2:=[profile?] <dev-haskell/bytestring-mmap-0.3:=[profile?]
			>=dev-haskell/old-locale-1:=[profile?] <dev-haskell/old-locale-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug) \
		$(cabal_flag portable portable)
}

# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Syntax highlighting"
HOMEPAGE="https://github.com/jgm/highlighting-kate"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable pcre-light"

RDEPEND=">=dev-haskell/blaze-html-0.4.2:=[profile?] <dev-haskell/blaze-html-0.9:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	pcre-light? ( >=dev-haskell/pcre-light-0.4:=[profile?] <dev-haskell/pcre-light-0.5:=[profile?] )
	!pcre-light? ( >=dev-haskell/regex-pcre-builtin-0.94.4.8.8.35:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/diff )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		$(cabal_flag pcre-light pcre-light)
}

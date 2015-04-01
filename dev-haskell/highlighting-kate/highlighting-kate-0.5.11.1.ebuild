# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/highlighting-kate/highlighting-kate-0.5.11.1.ebuild,v 1.1 2014/12/20 09:43:33 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Syntax highlighting"
HOMEPAGE="http://github.com/jgm/highlighting-kate"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable pcre-light"

RDEPEND=">=dev-haskell/blaze-html-0.4.2:=[profile?] <dev-haskell/blaze-html-0.8:=[profile?]
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
	# SpecConstr OOMs ghc
	[[ $(ghc-version) == 7.8.* ]] && replace-hcflags -O[2-9] -O1

	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		$(cabal_flag pcre-light pcre-light)
}

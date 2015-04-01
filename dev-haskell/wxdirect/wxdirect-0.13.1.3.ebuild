# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/wxdirect/wxdirect-0.13.1.3.ebuild,v 1.1 2014/03/23 15:05:13 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

WX_GTK_VER="2.8"

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="helper tool for building wxHaskell"
HOMEPAGE="http://haskell.org/haskellwiki/WxHaskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="${WX_GTK_VER}/${PV}"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parsec-2.1.0:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?] <dev-haskell/strict-1.0:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"

PATCHES=("${FILESDIR}/${PN}-0.13.1.3-ghc-7.6.patch")

src_prepare() {
	base_src_prepare
	sed -e "s@executable wxdirect@executable wxdirect-${WX_GTK_VER}@" \
		-i "${S}/${PN}.cabal" \
		|| die "Could not change ${PN}.cabal for wxdirect slot ${WX_GTK_VER}"
}

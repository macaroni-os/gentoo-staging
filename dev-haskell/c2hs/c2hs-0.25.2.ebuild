# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/c2hs/c2hs-0.25.2.ebuild,v 1.1 2015/04/05 05:09:18 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="C->Haskell FFI tool that gives some cross-language type safety"
HOMEPAGE="https://github.com/haskell/c2hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="regression"

RDEPEND="dev-haskell/dlist:=
	>=dev-haskell/language-c-0.4.7:= <dev-haskell/language-c-0.5:=
	>=dev-lang/ghc-7.4.1:=
	regression? ( >=dev-haskell/shelly-1.0:=
			dev-haskell/text:=
			>=dev-haskell/yaml-0.8:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/transformers
		!regression? ( >=dev-haskell/shelly-1.0
				dev-haskell/text ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag regression regression)
}

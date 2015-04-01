# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/stream/stream-0.4.7.1-r1.ebuild,v 1.2 2014/07/25 09:16:14 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Stream"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for manipulating infinite lists"
HOMEPAGE="http://hackage.haskell.org/package/Stream"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/lazysmallcheck-0.3:=[profile?]
	>=dev-haskell/quickcheck-2.0:2=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

S="${WORKDIR}/${MY_P}"

# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/statevar/statevar-1.0.0.0.ebuild,v 1.2 2012/09/12 15:56:57 qnikst Exp $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="StateVar"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="State variables"
HOMEPAGE="http://www.haskell.org/HOpenGL/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

S="${WORKDIR}/${MY_P}"

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/shakespeare-js/shakespeare-js-1.3.0.ebuild,v 1.1 2014/07/02 13:36:22 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile"
inherit haskell-cabal

DESCRIPTION="Stick your haskell variables into javascript/coffeescript at compile time. (deprecated)"
HOMEPAGE="http://www.yesodweb.com/book/shakespearean-templates"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/shakespeare-2.0:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/attoparsec-enumerator/attoparsec-enumerator-0.3.2.ebuild,v 1.2 2014/07/25 09:16:32 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Pass input from an enumerator to an Attoparsec parser"
HOMEPAGE="https://john-millikin.com/software/attoparsec-enumerator/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.12:=[profile?]
	>=dev-haskell/enumerator-0.4:=[profile?] <dev-haskell/enumerator-0.5:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

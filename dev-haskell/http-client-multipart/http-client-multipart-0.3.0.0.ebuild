# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/http-client-multipart/http-client-multipart-0.3.0.0.ebuild,v 1.1 2014/07/02 10:41:31 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile" # haddock hoogle hscolour" no files
inherit haskell-cabal

DESCRIPTION="Generate multipart uploads for http-client. (deprecated)"
HOMEPAGE="https://github.com/snoyberg/http-client"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/http-client-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

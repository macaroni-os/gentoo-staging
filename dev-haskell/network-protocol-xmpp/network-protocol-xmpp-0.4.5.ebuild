# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/network-protocol-xmpp/network-protocol-xmpp-0.4.5.ebuild,v 1.2 2014/07/25 09:16:41 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Client library for the XMPP protocol"
HOMEPAGE="https://john-millikin.com/software/haskell-xmpp/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/gnuidn-0.2*:=[profile?]
		>=dev-haskell/gnutls-0.1.4:=[profile?]
		<dev-haskell/gnutls-0.3:=[profile?]
		=dev-haskell/gsasl-0.3*:=[profile?]
		=dev-haskell/libxml-sax-0.7*:=[profile?]
		=dev-haskell/monads-tf-0.1*:=[profile?]
		>=dev-haskell/network-2.2:=[profile?]
		>=dev-haskell/text-0.10:=[profile?]
		<dev-haskell/text-0.12:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?]
		=dev-haskell/xml-types-0.3*:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

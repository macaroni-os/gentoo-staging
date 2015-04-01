# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/pcap/pcap-0.4.5.1.ebuild,v 1.3 2012/12/07 10:35:21 slyfox Exp $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="A system-independent interface for user-level packet capture"
HOMEPAGE="http://bitbucket.org/bos/pcap"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/network
		>=dev-lang/ghc-6.8.2
		net-libs/libpcap"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

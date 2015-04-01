# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/dbus-core/dbus-core-0.9.3-r3.ebuild,v 1.1 2014/03/09 05:12:09 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Low-level D-Bus protocol implementation"
HOMEPAGE="https://john-millikin.com/software/dbus-core/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.4:=[profile?]
		>=dev-haskell/data-binary-ieee754-0.3:=[profile?] <dev-haskell/data-binary-ieee754-0.5:=[profile?]
		=dev-haskell/libxml-sax-0.7*:=[profile?]
		>=dev-haskell/network-2.2:=[profile?]
		>=dev-haskell/parsec-2.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
		>=dev-haskell/text-0.11.1.5:=[profile?]
		>=dev-haskell/vector-0.7:=[profile?]
		=dev-haskell/xml-types-0.3*:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	if has_version "<dev-haskell/haddock-2.9.2"; then
		# Workaround http://hackage.haskell.org/trac/hackage/ticket/626
		# The haddock --hoogle option does not like unicode characters, which causes
		# haddock 2.7.2 to fail like:
		# haddock: internal Haddock or GHC error: dist/doc/html/enumerator/enumerator.txt: commitAndReleaseBuffer: invalid argument (Invalid or incomplete multibyte or wide character)
		sed -e 's@&#8208;@-@g' \
			-e "s@&#8217;@'@g" \
			-i "${S}/hs/DBus/Connection.hs" \
			-i "${S}/hs/DBus/Client/Internal.hs" \
			-i "${S}/hs/DBus/Client/Simple.hs" \
			-i "${S}/hs/DBus/Message/Internal.hs" \
			-i "${S}/hs/DBus/Types/Internal.hs" \
			-i "${S}/hs/DBus/Wire/Internal.hs"
	fi
	cabal_chdeps \
		'binary >= 0.4 && < 0.6' 'binary >= 0.4' \
		'bytestring >= 0.9 && < 0.10' 'bytestring >= 0.9' \
		'containers >= 0.1 && < 0.5' 'containers >= 0.1' \
		'network >= 2.2 && < 2.4' 'network >= 2.2' \
		'text >= 0.11.1.5 && < 0.12' 'text >= 0.11.1.5' \
		'unix >= 2.2 && < 2.6' 'unix >= 2.2' \
		'vector >= 0.7 && < 0.10' 'vector >= 0.7'
}

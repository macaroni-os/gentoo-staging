# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/hdbc-postgresql/hdbc-postgresql-2.3.2.2-r1.ebuild,v 1.3 2014/12/28 15:21:59 titanofold Exp $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep" # workaround depend on old cabal-1.16
inherit haskell-cabal

MY_PN="HDBC-postgresql"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="PostgreSQL driver for HDBC"
HOMEPAGE="http://github.com/hdbc/hdbc-postgresql"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="test" # requires configured postgresql

RDEPEND=">=dev-db/postgresql-7
	dev-haskell/convertible:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-6.12.1:=
	>=dev-haskell/hdbc-2.2.0:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	test? ( >=dev-haskell/hdbc-2.2.6:=[profile?]
			dev-haskell/hunit:=[profile?]
			dev-haskell/quickcheck:=[profile?]
			dev-haskell/testpack:=[profile?] )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test buildtests)
}

src_test() {
	# default tests
	haskell-cabal_src_test || die "cabal test failed"

	# built custom tests
	"${S}/dist/build/runtests/runtests" || die "unit tests failed"
}

src_install() {
	cabal_src_install

	# if tests were enabled, make sure the unit test driver is deleted
	rm -f "${ED}/usr/bin/runtests"
}

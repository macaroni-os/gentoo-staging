# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/cairo/cairo-0.13.1.0.ebuild,v 1.1 2015/03/11 08:49:19 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the Cairo library"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="+pdf +postscript +svg"

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/text-1.0.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/utf8-string-0.2:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/cairo[svg?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	>=dev-haskell/gtk2hs-buildtools-0.13.0.3:0=
	virtual/pkgconfig
"

src_prepare() {
	sed -e "s@#include<cairo-features.h>@#define $(usex amd64 __x86_64__ __i386__)\n#include<cairo-features.h>@" \
		-i "${S}"/Graphics/Rendering/Cairo.hs \
		|| die "Could not define ABI in Graphics/Rendering/Cairo.hs"
	# workaround for module order
	cabal_chdeps \
		'other-modules:' 'exposed-modules:'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag pdf cairo_pdf) \
		$(cabal_flag postscript cairo_ps) \
		$(cabal_flag svg cairo_svg)
}

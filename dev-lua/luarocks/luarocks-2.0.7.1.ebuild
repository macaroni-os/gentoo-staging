# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lua/luarocks/luarocks-2.0.7.1.ebuild,v 1.2 2012/06/07 19:13:37 zmedico Exp $

EAPI=4

inherit eutils multilib

DESCRIPTION="A deployment and management system for Lua modules"
HOMEPAGE="http://www.luarocks.org"
SRC_URI="http://luarocks.org/releases/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~ppc"
IUSE="curl openssl"

DEPEND="dev-lang/lua
		curl? ( net-misc/curl )
		openssl? ( dev-libs/openssl )"
RDEPEND="${DEPEND}
		app-arch/unzip"

src_configure() {
	USE_MD5="md5sum"
	USE_FETCH="wget"
	use openssl && USE_MD5="openssl"
	use curl && USE_FETCH="curl"

	# econf doesn't work b/c it passes variables the custom configure can't
	# handle
	./configure \
			--prefix=/usr \
			--with-lua-lib=/usr/$(get_libdir) \
			--rocks-tree=/usr/$(get_libdir)/lua/luarocks \
			--with-downloader=$USE_FETCH \
			--with-md5-checker=$USE_MD5 \
			--force-config || die "configure failed"
}

src_compile() {
	emake DESTDIR="${D}" || die "make failed"
}

src_install() {
	# -j1 b/c otherwise it fails with to find src/bin/luarocks
	emake DESTDIR="${D}" -j1 install || die "einstall"
}

pkg_preinst() {
	find "${D}" -type f | xargs sed -i -e "s:${D}::g" || die "sed failed"
}

# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-embedded/upslug2/upslug2-11.ebuild,v 1.4 2012/11/27 04:22:08 radhermit Exp $

DESCRIPTION="util for flashing NSLU2 machines remotely"
HOMEPAGE="http://www.nslu2-linux.org/wiki/Main/UpSlug2"
SRC_URI="mirror://sourceforge/nslu/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm x86"
IUSE=""

src_install() {
	emake install DESTDIR="${D}" || die
	mv "${D}"/usr/{sbin,bin} || die
	fperms 4711 /usr/bin/upslug2
	dodoc AUTHORS ChangeLog NEWS README*
}

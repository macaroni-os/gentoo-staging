# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-video/emovix/emovix-0.9.0.ebuild,v 1.10 2014/08/10 20:58:18 slyfox Exp $

DESCRIPTION="Micro Linux distro to boot from a CD and play every video file localized in the CD root"
HOMEPAGE="http://movix.sourceforge.net"
SRC_URI="mirror://sourceforge/movix/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"

RDEPEND="virtual/cdrtools"
DEPEND="dev-lang/perl
	virtual/awk"

src_install() {
	emake -j1 DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog README* TODO
	dosym /usr/lib/win32 /usr/share/emovix/codecs
}

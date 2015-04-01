# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-themes/gnustep-neos-theme/gnustep-neos-theme-0.1.ebuild,v 1.4 2015/03/21 14:16:50 jlec Exp $

EAPI=5

inherit eutils gnustep-2

DESCRIPTION="GNUstep theme closely following the original NeXT look and feel"
HOMEPAGE="http://gap.nongnu.org/themes/index.html"
SRC_URI="http://savannah.nongnu.org/download/gap/Neos-${PV}.theme.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}

RESTRICT="binchecks strip"

src_prepare() {
	ecvs_clean
}

src_compile() { :; }

src_install() {
	egnustep_env

	#install themes
	insinto ${GNUSTEP_SYSTEM_LIBRARY}/Themes
	doins -r "${S}"/*theme
}

pkg_postinst() {
	elog "Use gnustep-apps/systempreferences to switch theme"
}

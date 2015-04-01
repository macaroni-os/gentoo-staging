# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Lingua-Stem-Snowball-Da/Lingua-Stem-Snowball-Da-1.10.0-r1.ebuild,v 1.2 2014/11/28 22:20:34 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=CINE
MODULE_VERSION=1.01
inherit perl-module multilib

DESCRIPTION="Porters stemming algorithm for Denmark"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ia64 ~ppc sparc x86"
IUSE=""

SRC_TEST="do"

src_install() {
	perl-module_src_install

	if [[ -f ${D}/${VENDOR_LIB}/Lingua/Stem/Snowball/stemmer.pl ]] ; then
		mv "${D}"/${VENDOR_LIB}/Lingua/Stem/Snowball/{,da-}stemmer.pl || die
	fi
}

pkg_postinst() {
	elog "The stemmer.pl that ships with this distribution has been renamed to"
	elog "da-stemmer.pl to avoid collisions with other Lingua::Stem packages."
}

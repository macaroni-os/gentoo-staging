# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-awstats/selinux-awstats-2.20141203-r3.ebuild,v 1.2 2015/03/22 14:17:06 swift Exp $
EAPI="5"

IUSE=""
MODS="awstats"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for awstats"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="amd64 x86"
fi
DEPEND="${DEPEND}
	sec-policy/selinux-apache
"
RDEPEND="${RDEPEND}
	sec-policy/selinux-apache
"

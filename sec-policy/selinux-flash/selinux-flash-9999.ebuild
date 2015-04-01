# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-flash/selinux-flash-9999.ebuild,v 1.4 2015/03/22 13:47:33 swift Exp $
EAPI="5"

IUSE=""
MODS="flash"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for flash"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi

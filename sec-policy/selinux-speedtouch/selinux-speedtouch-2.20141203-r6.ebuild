# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-speedtouch/selinux-speedtouch-2.20141203-r6.ebuild,v 1.1 2015/06/05 15:57:24 perfinion Exp $
EAPI="5"

IUSE=""
MODS="speedtouch"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for speedtouch"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi

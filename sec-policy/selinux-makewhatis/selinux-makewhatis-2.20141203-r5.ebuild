# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-makewhatis/selinux-makewhatis-2.20141203-r5.ebuild,v 1.1 2015/04/15 15:43:20 perfinion Exp $
EAPI="5"

IUSE=""
MODS="makewhatis"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for makewhatis"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-sssd/selinux-sssd-2.20141203-r5.ebuild,v 1.1 2015/04/15 15:43:23 perfinion Exp $
EAPI="5"

IUSE=""
MODS="sssd"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for sssd"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-ulogd/selinux-ulogd-9999.ebuild,v 1.4 2015/03/22 13:47:25 swift Exp $
EAPI="5"

IUSE=""
MODS="ulogd"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for ulogd"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi

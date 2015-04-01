# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-dovecot/selinux-dovecot-2.20141203-r1.ebuild,v 1.2 2014/12/21 14:07:10 swift Exp $
EAPI="5"

IUSE=""
MODS="dovecot"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for dovecot"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="amd64 x86"
fi

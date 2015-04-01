# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-cups/selinux-cups-2.20140311-r5.ebuild,v 1.2 2014/08/22 17:40:08 swift Exp $
EAPI="5"

IUSE=""
MODS="cups"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for cups"

KEYWORDS="amd64 x86"
DEPEND="${DEPEND}
	sec-policy/selinux-lpd
"
RDEPEND="${DEPEND}"

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-chromium/selinux-chromium-9999.ebuild,v 1.7 2015/03/22 13:47:30 swift Exp $
EAPI="5"

IUSE="alsa"
MODS="chromium"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for chromium"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi

DEPEND="${DEPEND}
	sec-policy/selinux-xserver
"
RDEPEND="${RDEPEND}
	sec-policy/selinux-xserver
"

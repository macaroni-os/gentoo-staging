# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-frameworks/kpty/kpty-5.7.0.ebuild,v 1.1 2015/02/14 22:09:56 johu Exp $

EAPI=5

inherit kde5

DESCRIPTION="Framework for pseudo terminal devices and running child processes"
LICENSE="LGPL-2+"
KEYWORDS=" ~amd64 ~x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	sys-libs/libutempter
"
RDEPEND="${DEPEND}"

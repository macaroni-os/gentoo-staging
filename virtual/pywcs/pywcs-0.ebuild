# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/pywcs/pywcs-0.ebuild,v 1.4 2014/11/28 22:12:19 pacho Exp $

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3,3_4} )

inherit python-r1

DESCRIPTION="Virtual for pywcs"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND="|| (
		>=dev-python/pywcs-1.11[${PYTHON_USEDEP}]
		<dev-python/astropy-0.3[${PYTHON_USEDEP}]
	)"

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/common/common-0.1.1.ebuild,v 1.5 2015/03/08 23:42:22 pacho Exp $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="Common tools and data structures implemented in pure python"
HOMEPAGE="https://pypi.python.org/pypi/common"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="all-rights-reserved"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE=""

RESTRICT="mirror bindist"

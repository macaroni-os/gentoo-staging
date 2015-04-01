# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/smmap/smmap-0.8.3.ebuild,v 1.1 2014/11/18 10:03:12 jlec Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} )

inherit distutils-r1

DESCRIPTION="A pure git implementation of a sliding window memory map manager"
HOMEPAGE="
	http://pypi.python.org/pypi/smmap
	https://github.com/Byron/smmap"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/nosexcover[${PYTHON_USEDEP}]
	)
	"
RDEPEND=""

python_test() {
	nosetests || die
}

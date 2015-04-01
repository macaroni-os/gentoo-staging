# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/docker-py/docker-py-0.6.0.ebuild,v 1.1 2015/01/29 17:03:25 alunduil Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 )

inherit distutils-r1

DESCRIPTION="Python client for Docker."
HOMEPAGE="https://github.com/docker/docker-py"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( >=dev-python/mock-1.0.1[${PYTHON_USEDEP}] )
"
RDEPEND="
	>=dev-python/requests-2.2.1[${PYTHON_USEDEP}]
	>=dev-python/six-1.3.0[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/websocket-client-0.11.0[${PYTHON_USEDEP}]' python2_7)
"

python_test() {
	"${PYTHON}" tests/test.py || die "tests failed under ${EPYTHON}"
}

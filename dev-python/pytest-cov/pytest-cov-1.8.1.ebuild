# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pytest-cov/pytest-cov-1.8.1.ebuild,v 1.2 2015/02/15 13:16:36 pacho Exp $

EAPI="5"

PYTHON_COMPAT=( python{2_7,3_{3,4}} pypy pypy3 )
inherit distutils-r1

DESCRIPTION="py.test plugin for coverage reporting"
HOMEPAGE="http://bitbucket.org/memedough/pytest-cov/overview"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ppc ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND="
	>=dev-python/py-1.4.22[${PYTHON_USEDEP}]
	>=dev-python/pytest-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/cov-core-1.14.0[${PYTHON_USEDEP}]
	>=dev-python/coverage-3.7.1[${PYTHON_USEDEP}]
	<dev-python/coverage-4[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/virtualenv[${PYTHON_USEDEP}] )"

python_test() {
	# test_ file produces no output; For FI
	"${PYTHON}" test_pytest_cov.py || die "tests failed under ${EPYTHON}"
}

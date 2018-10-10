# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} pypy{,3} )

inherit distutils-r1

DESCRIPTION="Distributed testing and loop-on-failing modes"
HOMEPAGE="https://pypi.org/project/pytest-xdist/ https://github.com/pytest-dev/pytest-xdist"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ppc ppc64 ~s390 ~sparc x86 ~amd64-fbsd"
IUSE="test"

RDEPEND="
	>=dev-python/execnet-1.1[${PYTHON_USEDEP}]
	dev-python/pytest[${PYTHON_USEDEP}]
	dev-python/pytest-forked[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
"

python_test() {
	distutils_install_for_testing
	pytest -vv testing || die "Tests failed under ${EPYTHON}"
}

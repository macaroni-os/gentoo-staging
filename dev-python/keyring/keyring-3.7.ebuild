# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/keyring/keyring-3.7.ebuild,v 1.6 2015/02/01 13:48:30 ago Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} python{3_2,3_3,3_4} pypy pypy2_0)

inherit distutils-r1
DESCRIPTION="Provides access to the system keyring service"
HOMEPAGE="https://bitbucket.org/kang/python-keyring-lib"
SRC_URI="mirror://pypi/k/${PN}/${P}.zip"

LICENSE="PSF-2"
KEYWORDS="amd64 x86"
SLOT="0"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		app-arch/unzip
	test? ( dev-python/pytest-runner[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/pycrypto[$(python_gen_usedep 'python2*' 'python3*')] )"
RDEPEND=""

python_test() {
	py.test || die "testsuite failed under ${EPYTHON}"
}

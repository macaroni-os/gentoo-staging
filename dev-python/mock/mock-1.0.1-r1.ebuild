# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/mock/mock-1.0.1-r1.ebuild,v 1.21 2015/04/08 08:05:27 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy )

inherit distutils-r1

DESCRIPTION="A Python Mocking and Patching Library for Testing"
HOMEPAGE="http://www.voidspace.org.uk/python/mock/ http://pypi.python.org/pypi/mock"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~x64-macos"
IUSE="doc test"

# dev-python/unittest2 is not required with Python >=3.2.
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] )"
RDEPEND=""

python_test() {
	nosetests || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	local DOCS=( docs/*.txt )

	distutils-r1_python_install_all

	if use doc; then
		dohtml -r html/ -x html/objects.inv -x html/output.txt -x html/_sources
	fi
}

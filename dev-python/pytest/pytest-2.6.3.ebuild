# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pytest/pytest-2.6.3.ebuild,v 1.12 2015/04/03 20:35:13 vapier Exp $

EAPI="5"

PYTHON_COMPAT=( python{2_7,3_2,3_3,3_4} pypy )
inherit distutils-r1 eutils

DESCRIPTION="py.test: simple powerful testing with Python"
HOMEPAGE="http://pytest.org/ http://pypi.python.org/pypi/pytest"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE="doc test"

# When bumping, please check setup.py for the proper py version
PY_VER="1.4.25"
RDEPEND=">=dev-python/py-${PY_VER}[${PYTHON_USEDEP}]"

#pexpect dep based on https://bitbucket.org/hpk42/pytest/issue/386/tests-fail-with-pexpect-30
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		$(python_gen_cond_dep 'dev-python/pexpect[${PYTHON_USEDEP}]' 'python*')
		dev-python/pyyaml[${PYTHON_USEDEP}]
	)
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"

python_prepare_all() {
	# Disable versioning of py.test script to avoid collision with
	# versioning performed by the eclass.
	sed -e "s/return points/return {'py.test': target}/" -i setup.py || die "sed failed"
	grep -qF "py>=${PY_VER}" setup.py || die "Incorrect dev-python/py dependency"

	# Prevent un-needed d'loading
	sed -e "s/'sphinx.ext.intersphinx', //" -i doc/en/conf.py || die
	distutils-r1_python_prepare_all
}

python_compile_all() {
	if use doc; then
		mkdir doc/en/.build || die
		emake -C doc/en html
	fi
}

python_test() {
	"${PYTHON}" "${BUILD_DIR}"/lib/pytest.py \
		--ignore=doc/en/example/nonpython/test_simple.yml \
		|| die "tests failed with ${EPYTHON}"
}

python_install_all() {
	use doc && dohtml -r doc/en/_build/html/
	distutils-r1_python_install_all
}

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pyzmq/pyzmq-14.5.0.ebuild,v 1.3 2015/02/17 12:04:29 jlec Exp $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1 toolchain-funcs

DESCRIPTION="lightweight and super-fast messaging library built on top of the ZeroMQ library"
HOMEPAGE="http://www.zeromq.org/bindings:python http://pypi.python.org/pypi/pyzmq"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE="doc examples green test"

# Ensures installation of gevent for test phase
REQUIRED_USE="test? ( green )"

PY2_USEDEP=$(python_gen_usedep python2_7)
RDEPEND="
	>=net-libs/zeromq-4.0.5:=
	dev-python/py[${PYTHON_USEDEP}]
	dev-python/cffi[${PYTHON_USEDEP}]
	green? ( dev-python/gevent[${PY2_USEDEP}] )"
DEPEND="${RDEPEND}
	test? (
		dev-python/nose[${PYTHON_USEDEP}] )
	doc? (
		dev-python/sphinx[${PYTHON_USEDEP}]
		dev-python/numpydoc[${PYTHON_USEDEP}]
	)"

python_configure_all() {
	tc-export CC
}

python_compile_all() {
	use doc && emake -C docs html
}

python_compile() {
	python_is_python3 || local -x CFLAGS="${CFLAGS} -fno-strict-aliasing"
	distutils-r1_python_compile
}

python_test() {
	# suite reports error in absence of gevent under py3 but is designed to continue
	# rather than exit making py3 apt for the test phase
	nosetests -svw "${BUILD_DIR}/lib/"
}

python_install_all() {
	use examples && local EXAMPLES=( examples/. )
	use doc && local HTML_DOCS=( docs/build/html/. )
	distutils-r1_python_install_all
}

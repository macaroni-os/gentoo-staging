# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/empy/empy-3.3.2.ebuild,v 1.1 2015/01/30 10:03:01 aballier Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy2_0 )

inherit distutils-r1

DESCRIPTION="A powerful and robust templating system for Python"
HOMEPAGE="http://www.alcyone.com/software/empy/"
SRC_URI="http://www.alcyone.com/software/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ia64 ~ppc ~x86"
IUSE="doc"

DEPEND=""
RDEPEND=""

python_test() {
	"${PYTHON}" em.py sample.em | diff sample.bench -
	if [[ ${PIPESTATUS[0]} -ne 0 || ${PIPESTATUS[1]} -ne 0 ]]; then
		die "Testing failed with ${EPYTHON}"
	fi
}

python_install_all() {
	distutils-r1_python_install_all
	if use doc; then
		dodir /usr/share/doc/"${PF}"/examples
		insinto /usr/share/doc/"${PF}"/examples
		doins sample.em sample.bench
		#3.3 has the html in this funny place. Fix in later version:
		dohtml doc/home/max/projects/empy/doc/em/*
		dohtml doc/home/max/projects/empy/doc/em.html
		dohtml doc/index.html
	fi
}

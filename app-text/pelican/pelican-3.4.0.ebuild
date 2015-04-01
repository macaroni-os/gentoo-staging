# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-text/pelican/pelican-3.4.0.ebuild,v 1.3 2014/08/10 18:28:34 slyfox Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils-r1

DESCRIPTION="A tool to generate a static blog, with restructured text (or markdown) input files"
HOMEPAGE="http://pelican.notmyidea.org/ http://pypi.python.org/pypi/pelican"
SRC_URI="https://github.com/getpelican/pelican/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples markdown"

DEPEND="dev-python/feedgenerator[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.7[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/unidecode[${PYTHON_USEDEP}]
	dev-python/blinker[${PYTHON_USEDEP}]
	>=dev-python/six-1.4[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	markdown? ( dev-python/markdown[${PYTHON_USEDEP}] )"
RDEPEND=""

DOCS=( README.rst )

python_install_all() {
	use examples && local EXAMPLES=( samples/. )
	distutils-r1_python_install_all
}

# no tests: tests/content not in tarball for 2.8.1
# for 3.0, should be based on tox (refer to virtualenvwrapper)

#python_test() {
#	esetup.py test
#}

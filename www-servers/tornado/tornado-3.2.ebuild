# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-servers/tornado/tornado-3.2.ebuild,v 1.6 2015/03/21 09:35:36 jer Exp $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_2,3_3} pypy pypy2_0 )

inherit distutils-r1

DESCRIPTION="Scalable, non-blocking web server and tools"
HOMEPAGE="http://www.tornadoweb.org/ http://pypi.python.org/pypi/tornado"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="curl test"

RDEPEND="curl? ( dev-python/pycurl[$(python_gen_usedep 'python2*')] )"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/mock[${PYTHON_USEDEP}]
		python_targets_python2_7? ( dev-python/twisted-names[python_targets_python2_7] )
	)
"

REQUIRED_USE="curl? ( || ( $(python_gen_useflags 'python2*') ) )"

add_deps() {
	local x
	for x; do
		RDEPEND+=" python_targets_${x}? ( dev-python/backports-ssl-match-hostname[python_targets_${x}(-)] )"
	done
}

add_deps python2_7

PATCHES=(
	"${FILESDIR}/unittest2-import-issue-1005.patch"
)

src_test() {
	# The test server tries to bind at an unused port but suffers
	# a race condition in it. Seems to be fixed already.
	# https://github.com/facebook/tornado/blob/master/tornado/test/process_test.py#L64
	local DISTUTILS_NO_PARALLEL_BUILD=1

	distutils-r1_src_test
}

python_test() {
	cd "${TMPDIR}" || die
	"${PYTHON}" -m tornado.test.runtests || die "Tests fail with ${EPYTHON}"
}

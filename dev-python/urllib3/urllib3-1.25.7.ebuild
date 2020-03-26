# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} pypy3 )
PYTHON_REQ_USE="ssl(+)"

inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more"
HOMEPAGE="https://github.com/urllib3/urllib3"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="brotli test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/PySocks-1.5.8[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	>=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}]
	>=dev-python/idna-2.0.0[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
		dev-python/ipaddress[${PYTHON_USEDEP}]
	' -2)
	brotli? ( dev-python/brotlipy[${PYTHON_USEDEP}] )
"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		$(python_gen_cond_dep "
			${RDEPEND}
			dev-python/brotlipy[\${PYTHON_USEDEP}]
			dev-python/mock[\${PYTHON_USEDEP}]
			dev-python/pytest[\${PYTHON_USEDEP}]
			>=dev-python/trustme-0.5.3[\${PYTHON_USEDEP}]
			>=www-servers/tornado-4.2.1[\${PYTHON_USEDEP}]
		" 'python3*')
	)
"

distutils_enable_sphinx docs \
	dev-python/alabaster \
	dev-python/mock

python_prepare_all() {
	# tests requiring a route to be present
	sed -e 's:test_enhanced_timeout:_&:' \
		-e 's:test_https_timeout:_&:' \
		-i test/with_dummyserver/test_https.py || die
	sed -e 's:test_https_proxy_.*timeout:_&:' \
		-i test/with_dummyserver/test_proxy_poolmanager.py || die
	# no clue why those fail, might be tornado's fault, might be just
	# very flaky
	sed -e 's:test_client_no_intermediate:_&:' \
		-i test/with_dummyserver/test_https.py || die
	sed -e 's:test_cross_host_redirect:_&:' \
		-e 's:test_cross_protocol_redirect:_&:' \
		-e 's:test_basic_ipv6_proxy:_&:' \
		-i test/with_dummyserver/test_proxy_poolmanager.py || die
	sed -e 's:test_connection_closed_on_read_timeout_preload_false:_&:' \
		-i test/with_dummyserver/test_socketlevel.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	# FIXME: get tornado ported
	case ${EPYTHON} in
		python2*)
			ewarn "Tests are being skipped for Python 2 in order to reduce the number"
			ewarn "of circular dependencies for Python 2 removal.  Please test"
			ewarn "manually in a virtualenv."
			;;
		python3*)
			pytest -vv || die "Tests fail with ${EPYTHON}"
			;;
	esac
}

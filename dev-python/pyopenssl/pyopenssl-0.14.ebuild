# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pyopenssl/pyopenssl-0.14.ebuild,v 1.19 2015/04/01 10:33:35 klausman Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1 flag-o-matic

MY_PN=pyOpenSSL
MY_P=${MY_PN}-${PV}

DESCRIPTION="Python interface to the OpenSSL library"
HOMEPAGE="http://pyopenssl.sourceforge.net/ https://launchpad.net/pyopenssl http://pypi.python.org/pypi/pyOpenSSL"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha amd64 arm hppa ~ia64 ~mips ppc ppc64 x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris"
IUSE="doc examples"

RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/cryptography-0.2.1-r2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"

S=${WORKDIR}/${MY_P}

python_prepare_all() {
	sed \
		-e "s/test_set_tlsext_host_name_wrong_args/_&/" \
		-i OpenSSL/test/test_ssl.py || die "test_ssl sed failed"

	# https://github.com/pyca/pyopenssl/issues/41
	sed -e "s/test_digest/_&/" -i OpenSSL/test/test_crypto.py
	# https://github.com/pyca/pyopenssl/issues/67
	sed -e "s/test_wantWriteError/_&/" -i OpenSSL/test/test_ssl.py

	distutils-r1_python_prepare_all
}

python_compile_all() {
	use doc && emake -C doc html
}

python_test() {
	esetup.py test

	# https://bugs.launchpad.net/pyopenssl/+bug/1237953
	rm -rf tmp* *.key *.pem
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/_build/html/. )
	use examples && local EXAMPLES=( examples/. )
	distutils-r1_python_install_all
}

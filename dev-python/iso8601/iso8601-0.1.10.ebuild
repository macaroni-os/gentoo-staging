# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/iso8601/iso8601-0.1.10.ebuild,v 1.18 2015/08/02 09:25:32 pacho Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Simple module to parse ISO 8601 dates"
HOMEPAGE="http://code.google.com/p/pyiso8601/ http://pypi.python.org/pypi/iso8601"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( >=dev-python/pytest-2.4.2[${PYTHON_USEDEP}] )"

python_test() {
	"${PYTHON}" -m pytest --verbose ${PN} || die "Tests fail with ${EPYTHON}"
}

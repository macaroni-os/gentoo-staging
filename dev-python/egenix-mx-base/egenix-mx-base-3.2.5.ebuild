# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/egenix-mx-base/egenix-mx-base-3.2.5.ebuild,v 1.12 2015/04/14 12:49:35 ago Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="eGenix utils for Python"
HOMEPAGE="http://www.egenix.com/products/python/mxBase http://pypi.python.org/pypi/egenix-mx-base"
SRC_URI="http://downloads.egenix.com/python/${P}.tar.gz"

LICENSE="eGenixPublic-1.1"
SLOT="0"
KEYWORDS="alpha amd64 ~arm hppa ia64 ~mips ppc ppc64 ~s390 ~sh ~sparc x86 ~sparc-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

# distutils.command.config writes to CWD, bug #450516
# mxSetup.py is broken with --build-lib
#DISTUTILS_IN_SOURCE_BUILD=1
DISTUTILS_NO_PARALLEL_BUILD=1

python_prepare_all() {
	# Don't install documentation in site-packages directories.
	sed -e "/\.pdf/d" -i egenix_mx_base.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	local t

	while IFS= read -r -d '' t
	do
		"${PYTHON}" "${t}" || die "${t} failed with ${EPYTHON}"
	done < <(find -name test.py -print0)
}

python_install() {
	local f dest=${D}$(python_get_includedir)/mx

	distutils-r1_python_install \
		build --build-platlib "${BUILD_DIR}"/lib

	mkdir -p "${dest}" || die
	while IFS= read -r -d '' f
	do
		mv -f "${f}" "${dest}" || die
	done < <(find "${D}$(python_get_sitedir)/mx" -type f -name "*.h" -print0)
}

python_install_all() {
	local f

	distutils-r1_python_install_all

	dohtml -a html -r mx
	while IFS= read -r -d '' f
	do
		dodoc "${f}"
	done < <(find -name '*.pdf' -print0)
}

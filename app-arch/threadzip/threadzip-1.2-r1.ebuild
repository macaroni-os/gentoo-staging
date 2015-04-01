# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-arch/threadzip/threadzip-1.2-r1.ebuild,v 1.1 2015/03/21 09:38:00 mgorny Exp $

EAPI="5"

PYTHON_COMPAT=( python2_7 )

inherit python-single-r1

DESCRIPTION="threaded compressor logic for zlib/lzma"
HOMEPAGE="http://code.google.com/p/threadzip/"
SRC_URI="http://threadzip.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lzma"

DEPEND=""
RDEPEND="lzma? ( dev-python/pylzma[${PYTHON_USEDEP}] )"

src_install() {
	local x
	for x in un '' ; do
		newbin python/thread${x}zip.py thread${x}zip
	done
	python_fix_shebang "${ED}"/usr/bin
}

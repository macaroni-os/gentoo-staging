# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="A sub-package that adds CUDA-capability to Pyrit"
HOMEPAGE="https://code.google.com/p/pyrit/"
SRC_URI="https://pyrit.googlecode.com/files/cpyrit-cuda-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-libs/openssl:=
	net-libs/libpcap
	dev-util/nvidia-cuda-toolkit"
RDEPEND="${DEPEND}"
PDEPEND="~net-wireless/pyrit-${PV}"

pkg_setup() {
	python-single-r1_pkg_setup
}

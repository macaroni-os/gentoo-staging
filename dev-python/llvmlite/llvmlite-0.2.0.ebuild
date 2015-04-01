# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/llvmlite/llvmlite-0.2.0.ebuild,v 1.1 2014/12/19 03:26:12 patrick Exp $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="Python wrapper around the llvm C++ library"
HOMEPAGE="https://pypi.python.org/pypi/llvmlite"
SRC_URI="https://github.com/numba/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND=">=sys-devel/llvm-3.5:=[multitarget]"
DEPEND="${RDEPEND}"

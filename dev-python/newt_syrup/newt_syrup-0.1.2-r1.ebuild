# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/newt_syrup/newt_syrup-0.1.2-r1.ebuild,v 1.1 2014/06/30 04:30:58 floppym Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="A Python framework for creating text-based applications"
HOMEPAGE="http://fedorahosted.org/newt-syrup/"
SRC_URI="http://mcpierce.fedorapeople.org/rpms/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-libs/newt-0.52.11"

DOCS="COLORS"

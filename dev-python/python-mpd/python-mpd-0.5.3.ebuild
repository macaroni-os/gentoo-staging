# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/python-mpd/python-mpd-0.5.3.ebuild,v 1.7 2015/04/08 08:05:14 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1 vcs-snapshot

DESCRIPTION="Python MPD client library"
HOMEPAGE="https://github.com/Mic92/python-mpd2"
SRC_URI="https://github.com/Mic92/${PN}2/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
KEYWORDS="amd64 ~ppc ~ppc64 x86"
SLOT="0"
IUSE="test"

DEPEND="test? ( dev-python/mock[${PYTHON_USEDEP}] )
	dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( doc/changes.rst doc/topics/{advanced,commands,getting-started,logging}.rst README.rst )

python_test() {
	"${PYTHON}" test.py || die "Tests fail with ${EPYTHON}"
}

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/scapy/scapy-2.3.1.ebuild,v 1.1 2014/12/23 12:30:19 jer Exp $

EAPI="5"

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=true

inherit eutils distutils-r1

DESCRIPTION="A Python interactive packet manipulation program for mastering the network"
HOMEPAGE="http://www.secdev.org/projects/scapy/"
SRC_URI="http://bb.secdev.org/${PN}/downloads/${P}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gnuplot pyx crypt graphviz imagemagick visual tcpreplay"

RDEPEND="
	net-analyzer/tcpdump
	gnuplot? ( dev-python/gnuplot-py[${PYTHON_USEDEP}] )
	pyx? ( dev-python/pyx[${PYTHON_USEDEP}] )
	crypt? ( dev-python/pycrypto[${PYTHON_USEDEP}] )
	graphviz? ( media-gfx/graphviz )
	imagemagick? (
		|| (
			media-gfx/imagemagick
			media-gfx/graphicsmagick[imagemagick]
		)
	)
	visual? ( dev-python/visual )
	tcpreplay? ( net-analyzer/tcpreplay )
"

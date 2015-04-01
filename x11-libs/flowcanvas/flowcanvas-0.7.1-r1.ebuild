# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/flowcanvas/flowcanvas-0.7.1-r1.ebuild,v 1.3 2015/01/03 13:22:56 mgorny Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 )
PYTHON_REQ_USE='threads(+)'

inherit waf-utils python-any-r1 eutils

DESCRIPTION="Gtkmm/Gnomecanvasmm widget for boxes and lines environments"
HOMEPAGE="http://wiki.drobilla.net/FlowCanvas"
SRC_URI="http://download.drobilla.net/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="debug doc"

RDEPEND="dev-libs/boost
	>=dev-cpp/gtkmm-2.4:2.4
	>=dev-cpp/libgnomecanvasmm-2.6:2.6
	media-gfx/graphviz"
DEPEND="${RDEPEND}
	${PYTHON_DEPS}
	virtual/pkgconfig
	doc? ( app-doc/doxygen )"

DOCS=( AUTHORS README ChangeLog )

src_prepare() {
	epatch "${FILESDIR}/ldconfig2.patch"
	has_version '>=media-gfx/graphviz-2.34' && epatch "${FILESDIR}/gv234.patch"
}

src_configure() {
	waf-utils_src_configure \
		--htmldir=/usr/share/doc/${PF}/html \
		$(use debug && echo "--debug") \
		$(use doc && echo "--doc")
}

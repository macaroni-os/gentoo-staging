# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-scheme/gauche-gl/gauche-gl-0.6.ebuild,v 1.1 2014/11/15 13:59:15 hattya Exp $

EAPI="5"

inherit eutils

MY_P="${P^g}"

DESCRIPTION="OpenGL binding for Gauche"
HOMEPAGE="http://practical-scheme.net/gauche/"
SRC_URI="mirror://sourceforge/gauche/${MY_P}.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="cg examples"

RDEPEND=">=dev-scheme/gauche-0.9.4
	virtual/opengl
	media-libs/freeglut
	cg? ( media-gfx/nvidia-cg-toolkit )"
DEPEND="${RDEPEND}"
S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-simple.viewer.diff
}

src_configure() {
	econf $(usex cg --enable-cg "")
}

src_install() {
	default

	if use examples; then
		docompress -x /usr/share/doc/${PF}/examples
		docinto examples
		dodoc examples/*.scm
		# install simple
		dodoc -r examples/simple
		# install glbook
		dodoc -r examples/glbook
		dodoc -r examples/images
		# install slbook
		dodoc -r examples/slbook
		# install cg examples
		use cg && dodoc -r examples/cg
	fi
}

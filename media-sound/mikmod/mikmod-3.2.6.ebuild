# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-sound/mikmod/mikmod-3.2.6.ebuild,v 1.1 2014/10/17 13:13:26 ssuominen Exp $

EAPI=5

DESCRIPTION="A console MOD-Player based on libmikmod"
HOMEPAGE="http://mikmod.sourceforge.net/"
SRC_URI="mirror://sourceforge/mikmod/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=media-libs/libmikmod-3.3
	>=sys-libs/ncurses-5.7-r7"
DEPEND="${RDEPEND}"

DOCS="AUTHORS NEWS README"

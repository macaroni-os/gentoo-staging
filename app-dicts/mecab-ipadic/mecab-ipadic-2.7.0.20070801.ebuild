# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-dicts/mecab-ipadic/mecab-ipadic-2.7.0.20070801.ebuild,v 1.12 2013/08/03 12:07:11 hattya Exp $

EAPI="5"

MY_P="${PN}-${PV%.*}-${PV/*.}"

DESCRIPTION="IPA dictionary for MeCab"
HOMEPAGE="http://mecab.sourceforge.net/"
SRC_URI="mirror://sourceforge/mecab/${MY_P}.tar.gz"

LICENSE="ipadic"
SLOT="0"
KEYWORDS="amd64 ~arm hppa ia64 ppc ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd"
IUSE="unicode"

DEPEND="app-text/mecab[unicode=]"
S="${WORKDIR}/${MY_P}"

src_configure() {
	econf $(use_with unicode charset UTF-8)
}

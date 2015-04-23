# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-editors/retext/retext-5.0.2.ebuild,v 1.1 2015/04/22 23:49:07 mrueg Exp $

EAPI=5

PYTHON_COMPAT=( python3_{3,4} )

PLOCALES="ca cs cy da de es et eu fr hu it ja pl pt pt_BR ru sk uk vi zh_CN zh_TW"

inherit distutils-r1 l10n

MY_PN="ReText"
MY_P="${MY_PN}-${PV/_/~}"

if [[ ${PV} == *9999* ]] ; then
	inherit git-2
	EGIT_REPO_URI="git://git.code.sf.net/p/retext/git"
	KEYWORDS=""
else
	SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="A Qt-based text editor for Markdown and reStructuredText"
HOMEPAGE="http://sourceforge.net/p/retext/home/ReText/"

LICENSE="GPL-2"
SLOT="0"
IUSE="+spell"

RDEPEND="
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/markups[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/PyQt5[gui,network,printsupport,webkit,widgets,${PYTHON_USEDEP}]
	spell? ( dev-python/pyenchant[${PYTHON_USEDEP}] )
"

S="${WORKDIR}"/${MY_P}

remove_locale() {
	find "${ED}" -name "retext_${1}.qm" -delete || die "Failed to remove locale ${1}."
}

python_test() {
	esetup.py test
}

python_install_all() {
	distutils-r1_python_install_all

	newicon {icons/,}${PN}.png
	newicon {icons/,}${PN}.svg

	l10n_for_each_disabled_locale_do remove_locale

	make_desktop_entry ${PN} "${MY_PN} Editor" ${PN} "Development;Utility;TextEditor"
}

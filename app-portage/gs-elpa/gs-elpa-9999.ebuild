# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-portage/gs-elpa/gs-elpa-9999.ebuild,v 1.2 2014/11/24 14:09:50 jauhien Exp $

EAPI=5

PYTHON_COMPAT=(python{2_7,3_3,3_4})

inherit distutils-r1 git-2

DESCRIPTION="g-sorcery backend for elisp packages"
HOMEPAGE="https://github.com/jauhien/gs-elpa"
SRC_URI=""
EGIT_BRANCH="master"
EGIT_REPO_URI="http://github.com/jauhien/gs-elpa"

LICENSE="GPL-2"
SLOT="0"

DEPEND="app-portage/g-sorcery[$(python_gen_usedep 'python*')]
	dev-python/sexpdata[$(python_gen_usedep 'python*')]"
RDEPEND="${DEPEND}"

python_install_all() {
	distutils-r1_python_install_all
	doman docs/*.8
}

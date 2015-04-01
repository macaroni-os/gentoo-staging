# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/translate-toolkit/translate-toolkit-1.12.0.ebuild,v 1.1 2015/01/10 06:57:57 idella4 Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )
PYTHON_REQ_USE="sqlite"

inherit distutils-r1

DESCRIPTION="Toolkit to convert between many translation formats"
HOMEPAGE="http://translate.sourceforge.net"
SRC_URI="mirror://sourceforge/translate/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="doc +html +ical +ini +subtitles"

RDEPEND="
	app-text/iso-codes
	sys-devel/gettext
	dev-python/lxml[${PYTHON_USEDEP}]
	>=dev-python/python-levenshtein-0.10.2[${PYTHON_USEDEP}]
	!=dev-python/python-levenshtein-0.11.0[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/diff-match-patch[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
	html? ( dev-python/utidylib[${PYTHON_USEDEP}] )
	ical? ( dev-python/vobject[${PYTHON_USEDEP}] )
	ini? ( dev-python/iniparse[${PYTHON_USEDEP}] )"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}"

python_prepare_all() {
	# Prevent unwanted d'loading in doc build
	sed -e "/^    'sphinx.ext.intersphinx',/d" -i docs/conf.py

	distutils-r1_python_prepare_all
	mkdir man
}

python_compile_all() {
	use doc && emake -C docs html
}

python_install_all() {
	use doc && local HTML_DOCS=( "${S}"/docs/_build/html/. )
	distutils-r1_python_install_all
	rm -Rf docs || die

	local filename binary
	einfo "Generating man pages..."
	for binary in "${D}"/usr/bin/*; do
		filename=$(basename "${binary}")
		${file} --man > "${S}"/man/${filename}.1 2> /dev/null
	done
	# doman doesn't want to work
	insinto /usr/share/man
	doins man/*.1
}

python_install() {
	distutils-r1_python_install

	if ! use html; then
		rm "${D}"/usr/bin/html2po || die
		rm "${D}"/usr/bin/po2html || die
	fi
	if ! use ical; then
		rm "${D}"/usr/bin/ical2po || die
		rm "${D}"/usr/bin/po2ical || die
	fi
	if ! use ini; then
		rm "${D}"/usr/bin/ini2po || die
		rm "${D}"/usr/bin/po2ini || die
	fi
	if ! use subtitles; then
		rm "${D}"/usr/bin/sub2po || die
		rm "${D}"/usr/bin/po2sub || die
	fi
}

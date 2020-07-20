# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils

if [[ ${PV} == *9999* ]]; then
	EGIT_REPO_URI="https://github.com/Dman95/SASM.git"
	inherit git-r3
else
	SRC_URI="https://github.com/Dman95/SASM/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/${P^^}"
fi

DESCRIPTION="Simple crossplatform IDE for NASM assembly language"
HOMEPAGE="http://dman95.github.io/SASM/"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
REPEND="${DEPEND}
	dev-lang/nasm
	sys-devel/gdb
"

src_configure() {
	eqmake5
}

src_install() {
	emake install INSTALL_ROOT="${D}"
}

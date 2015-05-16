# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/cpputest/cpputest-3.7.2.ebuild,v 1.1 2015/05/16 19:13:03 radhermit Exp $

EAPI=5
inherit autotools-utils

DESCRIPTION="unit testing and mocking framework for C/C++"
HOMEPAGE="http://cpputest.github.io/ https://github.com/cpputest/cpputest"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	test? (
		dev-cpp/gmock
		dev-cpp/gtest
	)
"

DOCS=( AUTHORS README.md README_CppUTest_for_C.txt )

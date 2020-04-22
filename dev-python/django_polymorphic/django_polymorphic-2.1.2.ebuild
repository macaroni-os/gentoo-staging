# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="Seamless Polymorphic Inheritance for Django Models"
HOMEPAGE="https://pypi.org/project/django-polymorphic/"
SRC_URI="https://github.com/django-polymorphic/django-polymorphic/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${P//_/-}"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/django-1.11[$PYTHON_USEDEP]
"

DEPEND="
	test? (
		${RDEPEND}
		dev-python/dj-database-url[${PYTHON_USEDEP}]
	)
"

python_test() {
	"${EPYTHON}" runtests.py || die "Tests fail with ${EPYTHON}"
}

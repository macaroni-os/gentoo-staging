# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=SKNPP
DIST_VERSION=2.41
inherit perl-module

DESCRIPTION="Pragma to implement lvalue accessors with options"
SRC_URI+=" https://dev.gentoo.org/~tove/distfiles/${CATEGORY}/${PN}/${PN}-2.300.0-patch.tar.bz2"

SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	dev-perl/Module-Build
	test? (
		dev-perl/CGI
	)
"

EPATCH_SUFFIX=patch

PATCHES=(
	"${WORKDIR}"/${DIST_NAME:-${PN}}-patch
)

PERL_RM_FILES=( t/test_pod.t t/test_pod_coverage.t )

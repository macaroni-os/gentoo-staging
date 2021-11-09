# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=AKZHAN
DIST_VERSION=0.54
inherit perl-module

DESCRIPTION="Write tests in a declarative specification style"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Exporter
	>=dev-perl/Package-Stash-0.230.0
	>=virtual/perl-Scalar-List-Utils-1.110.0
	>=dev-perl/Test-Deep-0.103.0
	virtual/perl-Test-Harness
	>=virtual/perl-Test-Simple-0.880.0
	dev-perl/Test-Trap
	dev-perl/Tie-IxHash
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Devel-GlobalPhase
	)
"

# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DIST_AUTHOR=ELMEX
DIST_VERSION=0.93
inherit perl-module

DESCRIPTION="A simple lightweight event based web (application) server"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-perl/AnyEvent
	dev-perl/AnyEvent-HTTP
	dev-perl/common-sense
	virtual/perl-IO-Compress
	dev-perl/Object-Event
	virtual/perl-Time-Local
	dev-perl/URI
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Carp
	test? ( virtual/perl-Test-Simple )
"

DIST_TEST=do

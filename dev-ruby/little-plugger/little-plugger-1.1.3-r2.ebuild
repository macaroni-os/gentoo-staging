# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

USE_RUBY="ruby19 ruby20 ruby21 ruby22"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"

RUBY_FAKEGEM_EXTRADOC="History.txt README.rdoc"

inherit ruby-fakegem eutils

DESCRIPTION="Module that provides Gem based plugin management"
HOMEPAGE="https://github.com/TwP/little-plugger"

IUSE="test"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

all_ruby_prepare() {
	# Remove default metadata because it confused jruby.
	rm -f ../metadata || die

	epatch "${FILESDIR}"/${P}-ruby20-spec.patch
}

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/http/http-0.6.3.ebuild,v 1.5 2015/02/20 11:23:08 ago Exp $

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="CHANGES.md README.md"

inherit ruby-fakegem

DESCRIPTION="An easy-to-use client library for making requests from Ruby"
HOMEPAGE="https://github.com/tarcieri/http"

LICENSE="MIT"
SLOT="0.6"
KEYWORDS="amd64 ~ppc ~ppc64 x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/http_parser_rb-0.6.0 =dev-ruby/http_parser_rb-0.6*"

all_ruby_prepare() {
	sed -i -e '/simplecov/,/end/ s:^:#:' \
		-e '1irequire "cgi"' spec/spec_helper.rb || die
}

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/fakefs/fakefs-0.4.2.ebuild,v 1.15 2014/12/02 12:37:53 mrueg Exp $

EAPI=4

USE_RUBY="ruby19"

RUBY_FAKEGEM_RECIPE_TEST="none"

# requires sdoc
RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_EXTRADOC="CONTRIBUTORS README.markdown"

inherit ruby-fakegem eutils

DESCRIPTION="A fake filesystem. Use it in your tests"
HOMEPAGE="http://github.com/defunkt/fakefs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 sparc x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

ruby_add_bdepend "
	test? (
		dev-ruby/rspec:2
		>=dev-ruby/test-unit-2.5.1-r1
	)"

all_ruby_prepare() {
	# Remove bundler
	rm Gemfile || die
}

each_ruby_test() {
	ruby-ng_rspec
	ruby-ng_testrb-2 -Ilib:test test/**/*_test.rb
}

# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby24 ruby25 ruby26 ruby27"

RUBY_FAKEGEM_RECIPE_TEST="rspec3"
RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_BINWRAP=""

inherit ruby-fakegem

DESCRIPTION="A Text Progress Bar Library for Ruby"
HOMEPAGE="https://github.com/jfelchner/ruby-progressbar"
SRC_URI="https://github.com/jfelchner/ruby-progressbar/archive/releases/v${PV}.tar.gz -> ${P}.tar.gz"
RUBY_S="ruby-progressbar-releases-v${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

IUSE="test"

ruby_add_bdepend "test? ( dev-ruby/rspectacular dev-ruby/timecop )"

all_ruby_prepare() {
	sed -i -e '/warning_filter/ s:^:#:' \
		spec/spec_helper.rb || die
	# Avoid ruby24 syntax for an unneeded check
	sed -i -e '/^return/ s:^:#:' spec/ruby-progressbar/refinements/enumerator_spec.rb || die
}

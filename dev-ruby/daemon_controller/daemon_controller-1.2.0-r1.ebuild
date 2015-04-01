# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/daemon_controller/daemon_controller-1.2.0-r1.ebuild,v 1.2 2015/03/02 18:55:46 graaff Exp $

EAPI=5

USE_RUBY="ruby19 ruby20 ruby21 ruby22"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.markdown"

inherit ruby-fakegem

DESCRIPTION="A library for starting and stopping specific daemons programmatically in a robust manner"
HOMEPAGE="https://github.com/FooBarWidget/daemon_controller"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

all_ruby_prepare() {
	# fix tests with RSpec 2
	sed -i -e '1irequire "thread"' spec/test_helper.rb || die
}

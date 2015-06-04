# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/capistrano/capistrano-3.3.5.ebuild,v 1.5 2015/06/04 06:03:26 graaff Exp $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.md README.md"

inherit ruby-fakegem

DESCRIPTION="A distributed application deployment system"
HOMEPAGE="http://capistranorb.com/"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "
	>=dev-ruby/capistrano-stats-1.1.0:1
	>=dev-ruby/sshkit-1.3:0
	>=dev-ruby/rake-10.0.0
	dev-ruby/i18n:*
	!!<dev-ruby/capistrano-2.15.5-r2"
ruby_add_bdepend "
	test? (	dev-ruby/mocha:0.12 )"

pkg_postinst() {
	einfo "Capistrano 3.1 has some breaking changes. Please check the CHANGELOG: http://goo.gl/SxB0lr"
	einfo "If you're upgrading Capistrano from 2.x, we recommend to read the upgrade guide: http://goo.gl/4536kB"
	einfo "The 'deploy:restart' hook for passenger applications is now in a separate gem called capistrano-passenger.  Just add it to your Gemfile and require it in your Capfile."
}

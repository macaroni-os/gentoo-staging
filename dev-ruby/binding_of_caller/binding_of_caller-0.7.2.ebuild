# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/binding_of_caller/binding_of_caller-0.7.2.ebuild,v 1.1 2015/03/06 06:56:59 graaff Exp $

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="HISTORY README.md"

inherit ruby-fakegem

DESCRIPTION="Retrieve the binding of a method's caller"
HOMEPAGE="https://github.com/banister/binding_of_caller"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

ruby_add_rdepend ">=dev-ruby/debug_inspector-0.0.1"

ruby_add_bdepend "test? ( dev-ruby/bacon )"

each_ruby_test() {
	${RUBY} -S bacon -Itest -rubygems -a -q || die
}

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby-shadow/ruby-shadow-2.4.1.ebuild,v 1.2 2015/03/25 20:04:51 graaff Exp $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22"

RUBY_FAKEGEM_TASK_TEST=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="HISTORY README README.euc"

inherit multilib ruby-fakegem

DESCRIPTION="ruby shadow bindings"
HOMEPAGE="https://github.com/apalmblad/ruby-shadow http://ttsky.net"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~sparc ~x86"
IUSE=""

each_ruby_configure() {
	${RUBY} extconf.rb || die "Configuration failed."
	sed -i -e "/^ldflags  =/s/$/ \$(LDFLAGS)/" Makefile || die
}

each_ruby_compile() {
	emake V=1
	mkdir -p lib
	cp shadow$(get_modname) lib/ || die
}

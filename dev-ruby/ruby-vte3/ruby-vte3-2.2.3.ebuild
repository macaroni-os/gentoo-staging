# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby-vte3/ruby-vte3-2.2.3.ebuild,v 1.1 2014/12/13 01:11:08 naota Exp $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-ng-gnome2

DESCRIPTION="Ruby VTE bindings"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND="${DEPEND} x11-libs/vte:2.90"
RDEPEND="${RDEPEND} x11-libs/vte:2.90"

ruby_add_bdepend ">=dev-ruby/ruby-glib2-${PV}"
ruby_add_rdepend ">=dev-ruby/ruby-gtk3-${PV}"

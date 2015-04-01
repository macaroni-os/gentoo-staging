# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/gemoji/gemoji-2.1.0.ebuild,v 1.2 2014/10/28 18:00:39 graaff Exp $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_EXTRADOC="CONTRIBUTING.md README.md"
RUBY_FAKEGEM_RECIPE_DOC="rdoc"

RUBY_FAKEGEM_EXTRAINSTALL="images"

inherit ruby-fakegem

DESCRIPTION="Emoji images and names"
HOMEPAGE="https://github.com/github/gemoji"
SRC_URI="https://github.com/github/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

all_ruby_prepare() {
	# Avoid a test depending on a UTF-8 locale.
	sed -i -e '/missing or incorrect unicodes/a skip "gentoo: requires UTF-8 locale"' test/integrity_test.rb || die
}

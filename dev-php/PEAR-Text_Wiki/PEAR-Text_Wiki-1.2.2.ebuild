# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-php/PEAR-Text_Wiki/PEAR-Text_Wiki-1.2.2.ebuild,v 1.2 2015/04/18 04:25:21 jer Exp $

EAPI=5

inherit php-pear-r1

DESCRIPTION="Abstracts parsing and rendering rules for Wiki markup in structured plain text"
LICENSE="LGPL-2.1 PHP-2.02"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""
# Pull from github as pear.php.net is not updated
SRC_URI="https://github.com/pear/${PHP_PEAR_PKG_NAME}/archive/${PEAR_PV}.tar.gz -> ${P}.tar.gz"

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-leechcraft/lc-lastfmscrobble/lc-lastfmscrobble-0.6.70.ebuild,v 1.1 2014/08/03 18:54:53 maksbotan Exp $

EAPI="4"

inherit leechcraft

DESCRIPTION="Last.FM scrobbler plugin for LeechCraft"

SLOT="0"
KEYWORDS=" ~amd64 ~x86"
IUSE="debug"

DEPEND="~app-leechcraft/lc-core-${PV}
	media-libs/liblastfm"
RDEPEND="${DEPEND}"

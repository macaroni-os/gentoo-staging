# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-admin/gentoo-rsync-mirror/gentoo-rsync-mirror-1.0-r5.ebuild,v 1.7 2015/01/05 03:13:09 dlan Exp $

EAPI=5

DESCRIPTION="Ebuild for setting up a Gentoo rsync mirror"
HOMEPAGE="https://wiki.gentoo.org/wiki/Project:Infrastructure/Rsync"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~alpha ~ppc ~sparc ~x86 ~hppa ~ppc64"
IUSE=""

S="${WORKDIR}"

src_install() {
	exeinto /opt/gentoo-rsync
	doexe "${FILESDIR}"/rsync-gentoo-portage.sh
	doexe "${FILESDIR}"/rsynclogparse-extended.pl
	insinto etc/rsync
	doins "${FILESDIR}"/rsyncd.conf
	doins "${FILESDIR}"/rsyncd.motd
	doins "${FILESDIR}"/gentoo-mirror.conf
	dodir /opt/gentoo-rsync/portage
}

pkg_postinst() {
	elog "The rsync-mirror is now installed into /opt/gentoo-rsync"
	elog "The local portage copy resides in      /opt/gentoo-rsync/portage"
	elog "Please change /opt/gentoo-rsync/rsync-gentoo-portage.sh for"
	elog "configuration of your main rsync server and use it to sync."
	elog "Change /etc/rsync/rsyncd.motd to display your correct alias."
	elog
	elog "RSYNC_OPTS="--config=/etc/rsync/rsyncd.conf" needs"
	elog "to be set in /etc/conf.d/rsyncd to make allow syncing."
	elog
	elog "The service can be started using /etc/init.d/rsyncd start"
	elog "If you are setting up an official mirror, don't forget to add"
	elog "00,30 * * * *      root    /opt/gentoo-rsync/rsync-gentoo-portage.sh"
	elog "to your /etc/crontab to sync your tree every 30 minutes."
	elog
	elog "If you are setting up a private (unofficial) mirror, you can add"
	elog "0 3 * * *	root	/opt/gentoo-rsync/rsync-gentoo-portage.sh"
	elog "to your /etc/crontab to sync your tree once per day."
	elog
	elog "****IMPORTANT****"
	elog "If you are setting up a private mirror, DO NOT sync against the"
	elog "gentoo.org official rotations more than once a day.  Doing so puts"
	elog "you at risk of having your IP address banned from the rotations."
	elog
	elog "For more information visit: https://wiki.gentoo.org/wiki/Project:Infrastructure/Rsync"
}

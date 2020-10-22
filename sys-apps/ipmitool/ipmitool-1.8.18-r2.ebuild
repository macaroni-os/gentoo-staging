# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit autotools eutils

DESCRIPTION="Utility for controlling IPMI enabled devices."
HOMEPAGE="http://ipmitool.sf.net/"
DEBIAN_PR="9.debian"
DEBIAN_PV="${PV/_p*}"
DEBIAN_P="${PN}_${DEBIAN_PV}"
DEBIAN_PF="${DEBIAN_P}-${DEBIAN_PR}"
COMMIT_ID=
if [[ -n "${COMMIT_ID}" ]]; then
	S="${WORKDIR}/${PN}-${COMMIT_ID}"
	SRC_URI="https://github.com/ipmitool/ipmitool/archive/${COMMIT_ID}.tar.gz -> ${P}.tar.gz"
else
	SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
fi
SRC_URI+="
	http://http.debian.net/debian/pool/main/i/${PN}/${DEBIAN_PF}.tar.xz"
	# https://launchpad.net/ubuntu/+archive/primary/+files/${DEBIAN_PF}.tar.xz
#IUSE="freeipmi openipmi status"
IUSE="libressl openipmi static"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
LICENSE="BSD"

RDEPEND="
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )
	sys-libs/readline:0="
DEPEND="${RDEPEND}
		openipmi? ( sys-libs/openipmi )
		virtual/os-headers"
		#freeipmi? ( sys-libs/freeipmi )
# ipmitool CAN build against || ( sys-libs/openipmi sys-libs/freeipmi )
# but it doesn't actually need either.

PATCHES=(
	#"${FILESDIR}"/${P}-openssl-1.1.patch
)

src_prepare() {
	default
	[ -d "${S}"/debian ] && mv "${S}"/debian{,.package}
	ln -s "${WORKDIR}"/debian "${S}"
	for p in $(grep -v "^#" debian/patches/series) ; do
		eapply debian/patches/$p
	done

	eautoreconf
}

src_configure() {
	# - LIPMI and BMC are the Solaris libs
	# - OpenIPMI is unconditionally enabled in the configure as there is compat
	# code that is used if the library itself is not available
	# FreeIPMI does build now, but is disabled until the other arches keyword it
	#	`use_enable freeipmi intf-free` \
	# --enable-ipmievd is now unconditional
	econf \
		$(use_enable static) \
		--enable-ipmishell \
		--enable-intf-lan \
		--enable-intf-lanplus \
		--enable-intf-open \
		--enable-intf-serial \
		--disable-intf-bmc \
		--disable-intf-dummy \
		--disable-intf-free \
		--disable-intf-imb \
		--disable-intf-lipmi \
		--disable-internal-md5 \
		--with-kerneldir=/usr --bindir=/usr/sbin

	# Fix linux/ipmi.h to compile properly. This is a hack since it doesn't
	# include the below file to define some things.
	echo "#include <asm/byteorder.h>" >>config.h
}

src_install() {
	emake DESTDIR="${D}" PACKAGE="${PF}" install

	into /usr
	dosbin contrib/bmclanconf
	rm -f "${D}"/usr/share/doc/${PF}/COPYING
	docinto contrib
	cd "${S}"/contrib
	dodoc collect_data.sh create_rrds.sh create_webpage_compact.sh create_webpage.sh README

	newinitd "${FILESDIR}"/${PN}-1.8.9-ipmievd.initd ipmievd
	newconfd "${FILESDIR}"/${PN}-1.8.9-ipmievd.confd ipmievd
	# TODO: init script for contrib/bmc-snmp-proxy
	# TODO: contrib/exchange-bmc-os-info
}

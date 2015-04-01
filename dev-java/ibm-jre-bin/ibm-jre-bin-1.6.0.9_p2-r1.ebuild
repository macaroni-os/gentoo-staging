# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-java/ibm-jre-bin/ibm-jre-bin-1.6.0.9_p2-r1.ebuild,v 1.5 2014/11/02 08:19:39 swift Exp $

EAPI="4"

inherit java-vm-2 versionator eutils

JDK_RELEASE=$(get_version_component_range 2-3)
SERVICE_RELEASE=$(get_version_component_range 4)
SERVICE_RELEASE_LINK="${SERVICE_RELEASE}"

# versions ending with _pX translate to .X in distfile and fpX in SRC_URI
if [[ $(get_version_component_count) == 5 ]]; then
	FP_VERSION="$(get_version_component_range 5)"
	FP_VERSION="${FP_VERSION#p}"
	FP_WEB="-FP${FP_VERSION}"
	FP_LINK="fp${FP_VERSION}"
	TGZ_PV="${JDK_RELEASE}-${SERVICE_RELEASE}.${FP_VERSION}"
else
	FP_WEB=""
	FP_LINK=""
	TGZ_PV="${JDK_RELEASE}-${SERVICE_RELEASE}.0"
fi

JRE_DIST_PREFIX="ibm-java-jre-${TGZ_PV}-linux"

X86_JRE_DIST="${JRE_DIST_PREFIX}-i386.tgz"
AMD64_JRE_DIST="${JRE_DIST_PREFIX}-x86_64.tgz"
PPC_JRE_DIST="${JRE_DIST_PREFIX}-ppc.tgz"
PPC64_JRE_DIST="${JRE_DIST_PREFIX}-ppc64.tgz"

DESCRIPTION="IBM Java SE Runtime Environment"
HOMEPAGE="http://www.ibm.com/developerworks/java/jdk/"
SRC_URI="x86? ( ${X86_JRE_DIST} )
	amd64? ( ${AMD64_JRE_DIST} )
	ppc? ( ${PPC_JRE_DIST} )
	ppc64? ( ${PPC64_JRE_DIST} )"

LICENSE="IBM-J1.6"
SLOT="1.6"
KEYWORDS="-* ~amd64 ppc ~ppc64 ~x86"
RESTRICT="fetch"
IUSE="X alsa nsplugin odbc selinux"

RDEPEND="
	X? (
		x11-libs/libXext
		x11-libs/libXft
		x11-libs/libXi
		x11-libs/libXp
		x11-libs/libXtst
		x11-libs/libX11
		x11-libs/libXt
	)
	alsa? ( media-libs/alsa-lib )
	odbc? ( dev-db/unixODBC )
	selinux? ( sec-policy/selinux-java )"

DEPEND=""

QA_TEXTRELS_x86="opt/${P}/lib/i386/libj9jvmti24.so
opt/${P}/lib/i386/libj9vm24.so
opt/${P}/lib/i386/libjclscar_24.so
opt/${P}/lib/i386/motif21/libmawt.so
opt/${P}/lib/i386/libj9thr24.so
opt/${P}/lib/i386/libj9jit24.so
opt/${P}/lib/i386/libj9dbg24.so
opt/${P}/lib/i386/libj9gc24.so"

QA_EXECSTACK_x86="opt/${P}/bin/classic/libjvm.so
opt/${P}/lib/i386/j9vm/libjvm.so
opt/${P}/lib/i386/libj9jvmti24.so
opt/${P}/lib/i386/libj9hookable24.so
opt/${P}/lib/i386/libj9vm24.so
opt/${P}/lib/i386/libjclscar_24.so
opt/${P}/lib/i386/libj9thr24.so
opt/${P}/lib/i386/libj9dmp24.so
opt/${P}/lib/i386/libj9prt24.so
opt/${P}/lib/i386/libj9jit24.so
opt/${P}/lib/i386/libiverel24.so
opt/${P}/lib/i386/libj9trc24.so
opt/${P}/lib/i386/libj9dbg24.so
opt/${P}/lib/i386/libj9shr24.so
opt/${P}/lib/i386/libj9gc24.so
opt/${P}/lib/i386/libj9bcv24.so
opt/${P}/lib/i386/classic/libjvm.so"

QA_EXECSTACK_amd64="opt/${P}/lib/amd64/default/libjvm.so
opt/${P}/lib/amd64/default/libj9jvmti24.so
opt/${P}/lib/amd64/default/libj9hookable24.so
opt/${P}/lib/amd64/default/libj9vm24.so
opt/${P}/lib/amd64/default/libjclscar_24.so
opt/${P}/lib/amd64/default/libj9jpi24.so
opt/${P}/lib/amd64/default/libj9thr24.so
opt/${P}/lib/amd64/default/libj9dmp24.so
opt/${P}/lib/amd64/default/libj9prt24.so
opt/${P}/lib/amd64/default/libj9jit24.so
opt/${P}/lib/amd64/default/libiverel24.so
opt/${P}/lib/amd64/default/libj9trc24.so
opt/${P}/lib/amd64/default/libj9dbg24.so
opt/${P}/lib/amd64/default/libj9shr24.so
opt/${P}/lib/amd64/default/libj9gc24.so
opt/${P}/lib/amd64/default/libj9bcv24.so
opt/${P}/lib/amd64/default/libj9ute24.so
opt/${P}/lib/amd64/compressedrefs/libjvm.so
opt/${P}/lib/amd64/compressedrefs/libj9jvmti24.so
opt/${P}/lib/amd64/compressedrefs/libj9hookable24.so
opt/${P}/lib/amd64/compressedrefs/libj9vm24.so
opt/${P}/lib/amd64/compressedrefs/libjclscar_24.so
opt/${P}/lib/amd64/compressedrefs/libj9jpi24.so
opt/${P}/lib/amd64/compressedrefs/libj9thr24.so
opt/${P}/lib/amd64/compressedrefs/libj9dmp24.so
opt/${P}/lib/amd64/compressedrefs/libj9prt24.so
opt/${P}/lib/amd64/compressedrefs/libj9jit24.so
opt/${P}/lib/amd64/compressedrefs/libiverel24.so
opt/${P}/lib/amd64/compressedrefs/libj9trc24.so
opt/${P}/lib/amd64/compressedrefs/libj9dbg24.so
opt/${P}/lib/amd64/compressedrefs/libj9shr24.so
opt/${P}/lib/amd64/compressedrefs/libj9gc24.so
opt/${P}/lib/amd64/compressedrefs/libj9bcv24.so
opt/${P}/lib/amd64/compressedrefs/libj9ute24.so"

pkg_nofetch() {
	if use x86; then
		JRE_DIST=${X86_JRE_DIST}
		LINK_ARCH="intel"
	elif use amd64; then
		JRE_DIST=${AMD64_JRE_DIST}
		LINK_ARCH="amd64"
	elif use ppc; then
		JRE_DIST=${PPC_JRE_DIST}
		LINK_ARCH="ipseries32"
	elif use ppc64; then
		JRE_DIST=${PPC64_JRE_DIST}
		LINK_ARCH="ipseries64"
	fi

	DIRECT_DOWNLOAD="https://www14.software.ibm.com/webapp/iwm/web/preLogin.do?source=swg-sdk6"
	DIRECT_DOWNLOAD+="&S_PKG=${LINK_ARCH}_6sr${SERVICE_RELEASE}${FP_LINK}&S_TACT=105AGX05&S_CMP=JDK"
	DOWNLOADPAGE="${HOMEPAGE}linux/download.html"
	# bug #125178
	ALT_DOWNLOADPAGE="${HOMEPAGE}linux/older_download.html"

	elog "Due to license restrictions, we cannot redistribute or fetch the distfiles"
	elog "Please visit: ${DOWNLOADPAGE}"

	elog "Under Java SE 6, download SR${SERVICE_RELEASE}${FP_WEB} for your arch:"
	elog "${JRE_DIST}"

	elog "You can use direct link to your arch download page:"
	elog "${DIRECT_DOWNLOAD}"
	elog "Place the file(s) in: ${DISTDIR}"
	elog "Then restart emerge: 'emerge --resume'"

	elog "Note: if SR${SERVICE_RELEASE}${FP_WEB} is not available at ${DOWNLOADPAGE}"
	elog "it may have been moved to ${ALT_DOWNLOADPAGE}. Lately that page"
	elog "isn't updated, but the files should still available through the"
	elog "direct link to arch download page. If it doesn't work, file a bug."
}

src_unpack() {
	default

	local sdir=( ibm-java-* )
	S="${WORKDIR}/${sdir[0]}"
}

src_compile() { :; }

src_install() {
	# Copy all the files to the designated directory
	dodir /opt/${P}
	cp -pR jre/* "${ED}"/opt/${P} || die

	if use x86 || use ppc; then
		local plugin="/opt/${P}/plugin/$(get_system_arch)/ns7/libjavaplugin_oji.so"
		if use nsplugin; then
			install_mozilla_plugin "${plugin}"
		else
			rm "${ED}"/${plugin} || die
		fi
	fi

	# Install desktop file for the Java Control Panel. Using VMHANDLE as file
	# name to prevent file collision with jre and or other slots.
	sed -e "s/\(Name=\)Java/\1 Java Control Panel for IBM JRE ${SLOT}/" \
		-e "s#Exec=.*#Exec=${EPREFIX}/opt/${P}/bin/jcontrol#" \
		-e "s#Icon=.*#Icon=${EPREFIX}/opt/${P}/plugin/desktop/sun_java.png#" \
		"${ED}"/opt/${P}/plugin/desktop/sun_java.desktop \
		> "${T}"/${VMHANDLE}.desktop || die
	domenu "${T}"/${VMHANDLE}.desktop || die

	dohtml -a html,htm,HTML -r docs
	dodoc copyright notices.txt readmefirst.lnx.txt

	set_java_env
	java-vm_set-pax-markings "${ED}"/opt/${P}
	java-vm_revdep-mask
}

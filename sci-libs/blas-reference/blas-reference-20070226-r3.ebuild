# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-libs/blas-reference/blas-reference-20070226-r3.ebuild,v 1.2 2015/03/31 20:10:55 ulm Exp $

EAPI=3

inherit eutils fortran-2 autotools multilib flag-o-matic toolchain-funcs

LAPACKPV="3.1.1"
LAPACKPN="lapack-lite"

DESCRIPTION="Basic Linear Algebra Subprograms F77 reference implementations"
HOMEPAGE="http://www.netlib.org/blas/"
SRC_URI="http://www.netlib.org/lapack/${LAPACKPN}-${LAPACKPV}.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="doc"

DEPEND="app-eselect/eselect-blas"
RDEPEND="${DEPEND}
	doc? ( app-doc/blas-docs )"

S="${WORKDIR}/${LAPACKPN}-${LAPACKPV}"

src_prepare() {
	ESELECT_PROF=reference
	epatch \
		"${FILESDIR}"/${P}-autotool.patch \
		"${FILESDIR}"/${P}-pkg-config.patch
	eautoreconf

	cp "${FILESDIR}"/eselect.blas.reference-ng "${T}"/eselect.blas.reference || die
	sed -i -e "s:/usr:${EPREFIX}/usr:" "${T}"/eselect.blas.reference || die
	if [[ ${CHOST} == *-darwin* ]] ; then
		sed -i -e 's/\.so\([\.0-9]\+\)\?/\1.dylib/g' \
			"${T}"/eselect.blas.reference || die
	fi
}

src_configure() {
	econf \
		--libdir="${EPREFIX}"/usr/$(get_libdir)/blas/reference
}

src_compile() {
	emake LDFLAGS="${LDFLAGS}" || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	eselect blas add $(get_libdir) "${T}"/eselect.blas.reference ${ESELECT_PROF}
}

pkg_postinst() {
	local p=blas
	local current_lib=$(eselect ${p} show | cut -d' ' -f2)
	if [[ ${current_lib} == ${ESELECT_PROF} || -z ${current_lib} ]]; then
		# work around eselect bug #189942
		local configfile="${EROOT}"/etc/env.d/${p}/$(get_libdir)/config
		[[ -e ${configfile} ]] && rm -f ${configfile}
		eselect ${p} set ${ESELECT_PROF}
		elog "${p} has been eselected to ${ESELECT_PROF}"
	else
		elog "Current eselected ${p} is ${current_lib}"
		elog "To use ${p} ${ESELECT_PROF} implementation, you have to issue (as root):"
		elog "\t eselect ${p} set ${ESELECT_PROF}"
	fi
}

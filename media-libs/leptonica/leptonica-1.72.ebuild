# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/leptonica/leptonica-1.72.ebuild,v 1.1 2015/05/01 23:24:02 chewi Exp $

EAPI=5

inherit autotools-multilib

DESCRIPTION="C library for image processing and analysis"
HOMEPAGE="http://code.google.com/p/leptonica/"
SRC_URI="http://www.leptonica.com/source/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~mips ~ppc ~ppc64 ~sparc ~x86"
IUSE="gif jpeg jpeg2k png static-libs test tiff utils webp zlib"

# N.B. Tests need some features enabled:
REQUIRED_USE="test? ( jpeg png tiff )"

DEPEND="gif? ( media-libs/giflib:=[${MULTILIB_USEDEP}] )
	jpeg? ( virtual/jpeg:=[${MULTILIB_USEDEP}] )
	jpeg2k? ( media-libs/openjpeg:2=[${MULTILIB_USEDEP}] )
	png? ( media-libs/libpng:=[${MULTILIB_USEDEP}]
		   sys-libs/zlib:=[${MULTILIB_USEDEP}] )
	tiff? ( media-libs/tiff:=[${MULTILIB_USEDEP}] )
	webp? ( media-libs/libwebp:=[${MULTILIB_USEDEP}] )
	zlib? ( sys-libs/zlib:=[${MULTILIB_USEDEP}] )"
RDEPEND="${DEPEND}"

DOCS=( README version-notes )

src_prepare() {
	# unhtmlize docs
	local X
	for X in ${DOCS[@]}; do
		awk '/<\/pre>/{s--} {if (s) print $0} /<pre>/{s++}' \
			"${X}.html" > "${X}" || die 'awk failed'
		rm -f -- "${X}.html"
	done

	# Don't spam /tmp.
	sed -i -r 's/(#define\s+ADD_LEPTONICA_SUBDIR\s+)0/\11/' \
		src/environ.h || die

	autotools-utils_src_prepare
}

multilib_src_configure() {
	local myeconfargs=(
		$(use_with gif giflib)
		$(use_with jpeg)
		$(use_with jpeg2k libopenjpeg)
		$(use_with png libpng)
		$(use_with tiff libtiff)
		$(use_with webp libwebp)
		$(use_with zlib)
		$(use_enable static-libs static)
		$(multilib_native_use_enable utils programs)
	)
	autotools-utils_src_configure
}

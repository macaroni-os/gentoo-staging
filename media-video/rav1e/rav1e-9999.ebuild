# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

if [[ ${PV} == *9999 ]] ; then
	EGIT_REPO_URI="https://github.com/xiph/rav1e.git"
	inherit git-r3
fi

DESCRIPTION="The fastest and safest AV1 encoder"
HOMEPAGE="https://github.com/xiph/rav1e/"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="BSD-2"
SLOT="0"

KEYWORDS=""
IUSE="+capi"

ASM_DEP=">=dev-lang/nasm-2.14"
DEPEND="amd64? ( ${ASM_DEP} )"
RDEPEND="capi? ( dev-util/cargo-c )"

src_unpack() {
	if [[ "${PV}" == *9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	fi
}

src_compile() {
	export CARGO_HOME="${ECARGO_HOME}"
	local args=$(usex debug "" --release)

	cargo build ${args} \
		|| die "cargo build failed"

	if use capi; then
		cargo cbuild ${args} \
			--prefix="/usr" --libdir="/usr/$(get_libdir)" --destdir="${ED}" \
			|| die "cargo cbuild failed"
	fi
}

src_install() {
	export CARGO_HOME="${ECARGO_HOME}"
	local args=$(usex debug "" --release)

	if use capi; then
		cargo cinstall $args \
			--prefix="/usr" --libdir="/usr/$(get_libdir)" --destdir="${ED}" \
			|| die "cargo cinstall failed"
	fi

	cargo_src_install
}

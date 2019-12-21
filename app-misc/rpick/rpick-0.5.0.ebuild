# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.2.0

EAPI=7

CRATES="
ansi_term-0.11.0
arrayref-0.3.5
arrayvec-0.5.1
atty-0.2.13
backtrace-0.3.40
backtrace-sys-0.1.32
base64-0.10.1
bitflags-1.2.1
blake2b_simd-0.5.9
byteorder-1.3.2
c2-chacha-0.2.3
cc-1.0.48
cfg-if-0.1.10
clap-2.33.0
cloudabi-0.0.3
constant_time_eq-0.1.4
crossbeam-utils-0.6.6
dirs-2.0.2
dirs-sys-0.3.4
dtoa-0.4.4
failure-0.1.6
failure_derive-0.1.6
fuchsia-cprng-0.1.1
getrandom-0.1.13
heck-0.3.1
lazy_static-1.4.0
libc-0.2.66
linked-hash-map-0.5.2
ppv-lite86-0.2.6
proc-macro-error-0.2.6
proc-macro2-1.0.6
quote-1.0.2
rand-0.7.2
rand_chacha-0.2.1
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_distr-0.2.2
rand_hc-0.2.0
rand_os-0.1.3
rand_pcg-0.2.1
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.1
rpick-0.5.0
rust-argon2-0.5.1
rustc-demangle-0.1.16
serde-1.0.103
serde_derive-1.0.103
serde_yaml-0.8.11
strsim-0.8.0
structopt-0.3.5
structopt-derive-0.3.5
syn-1.0.11
synstructure-0.12.3
textwrap-0.11.0
unicode-segmentation-1.6.0
unicode-width-0.1.7
unicode-xid-0.2.0
vec_map-0.8.1
wasi-0.7.0
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.4.3
"

inherit cargo

DESCRIPTION="Helps you pick items from a list by various algorithms"
HOMEPAGE="https://gitlab.com/bowlofeggs/rpick"
SRC_URI="$(cargo_crate_uris ${CRATES})"

# You can get a description of the licenses by running cargo license.
# See https://github.com/onur/cargo-license/
LICENSE="GPL-3 Apache-2.0 BSD-2 CC0-1.0 ISC MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DOCS=( CHANGELOG.md README.md )

# Rust packages ignore CFLAGS and LDFLAGS so let's silence the QA warnings
QA_FLAGS_IGNORED="usr/bin/rpick"

src_install() {
	cargo_src_install --path=.

	einstalldocs
}

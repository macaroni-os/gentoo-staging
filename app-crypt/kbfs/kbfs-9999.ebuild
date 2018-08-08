# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 golang-build systemd

DESCRIPTION="Keybase Filesystem (KBFS)"
HOMEPAGE="https://keybase.io/docs/kbfs"
EGIT_REPO_URI="https://github.com/keybase/kbfs.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="git"

DEPEND=""
RDEPEND="
	app-crypt/gnupg
	sys-fs/fuse
	"

src_unpack() {
	git-r3_src_unpack
	mkdir -vp "${S}/src/github.com/keybase" || die
	ln -vs "${S}" "${S}/src/github.com/keybase/kbfs" || die
}

src_compile() {
	EGO_PN="github.com/keybase/kbfs/kbfsfuse" \
		EGO_BUILD_FLAGS="-tags production -o ${T}/kbfsfuse" \
		golang-build_src_compile
	EGO_PN="github.com/keybase/kbfs/kbfsgit/git-remote-keybase" \
		EGO_BUILD_FLAGS="-tags production -o ${T}/git-remote-keybase" \
		golang-build_src_compile
	EGO_PN="github.com/keybase/kbfs/redirector" \
		EGO_BUILD_FLAGS="-tags production -o ${T}/keybase-redirector" \
		golang-build_src_compile
}

src_test() {
	EGO_PN="github.com/keybase/kbfs/kbfsfuse" \
		golang-build_src_test
}

src_install() {
	dobin "${T}/kbfsfuse"
	dobin "${T}/git-remote-keybase"
	dobin "${T}/keybase-redirector"
	systemd_douserunit "${S}/packaging/linux/systemd/kbfs.service"
}

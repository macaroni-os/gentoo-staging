# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ml/reactiveData/reactiveData-0.1.ebuild,v 1.1 2014/12/01 10:21:45 aballier Exp $

EAPI="5"

DESCRIPTION="Functional reactive programming with incremental changes in data structures"
HOMEPAGE="https://github.com/hhugo/reactiveData"
SRC_URI="https://github.com/hhugo/reactiveData/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ocamlopt"

RDEPEND=">=dev-lang/ocaml-3.12:=[ocamlopt?]
	dev-ml/react:="
DEPEND="${RDEPEND}
	dev-ml/findlib
	dev-ml/opam
"

src_compile() {
	ocaml pkg/build.ml \
		native=$(usex ocamlopt true false) \
		native-dynlink=$(usex ocamlopt true false) \
		|| die
}

src_install() {
	opam-installer \
		--prefix="${ED}/usr" \
		--libdir="${D}/$(ocamlc -where)" \
		--docdir="${ED}/usr/share/doc/${PF}" \
		|| die
	dodoc README.md
}

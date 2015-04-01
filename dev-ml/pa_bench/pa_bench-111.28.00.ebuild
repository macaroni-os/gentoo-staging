# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ml/pa_bench/pa_bench-111.28.00.ebuild,v 1.2 2014/11/28 17:53:12 aballier Exp $

EAPI="5"

inherit oasis

MY_P=${PN/-/_}-${PV}
DESCRIPTION="Syntax extension writing inline benchmarks"
HOMEPAGE="http://www.janestreet.com/ocaml"
SRC_URI="http://ocaml.janestreet.com/ocaml-core/${PV%.*}.00/individual/${MY_P}.tar.gz
	http://dev.gentoo.org/~aballier/distfiles/${MY_P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-ml/type-conv-109:=
	dev-ml/pa_ounit:=
	|| ( dev-ml/camlp4:= <dev-lang/ocaml-4.02.0 )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

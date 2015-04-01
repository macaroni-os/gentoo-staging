# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-texlive/texlive-publishers/texlive-publishers-2014.ebuild,v 1.1 2014/11/03 07:00:25 aballier Exp $

EAPI="5"

TEXLIVE_MODULE_CONTENTS="IEEEconf IEEEtran aastex abntex2 acmconf active-conf adfathesis afparticle afthesis aguplus aiaa ametsoc anufinalexam aomart apa apa6 apa6e arsclassica articleingud asaetr ascelike bangorcsthesis beamer-FUBerlin bgteubner brandeis-dissertation cascadilla chem-journal classicthesis cmpj confproc dccpaper dithesis ebook ebsthesis ejpecp elbioimp elsarticle elteikthesis erdc estcpmm fbithesis fcltxdoc gaceta gatech-thesis har2nat hobete icsv ieeepes ijmart imac imtekda jmlr jpsj kdgdocs kluwer lps matc3 matc3mem mentis msu-thesis mugsthesis musuos muthesis nature nddiss nih nostarch nrc onrannual opteng philosophersimprint pittetd pkuthss powerdot-FUBerlin pracjourn procIAGssymp proposal ptptex psu-thesis resphilosophica resumecls revtex revtex4 ryethesis sageep sapthesis scrjrnl schule seuthesis soton sphdthesis spie sr-vorl stellenbosch suftesi sugconf tabriz-thesis texilikechaps texilikecover thesis-ekf thesis-titlepage-fhac thuthesis toptesi tudscr tugboat tugboat-plain tui uaclasses uadocs uafthesis ucbthesis ucdavisthesis ucthesis uestcthesis uiucredborder uiucthesis ulthese umthesis umich-thesis unamth-template unamthesis unswcover ut-thesis uothesis uowthesis uowthesistitlepage uspatent uwthesis vancouver wsemclassic xcookybooky yathesis york-thesis collection-publishers
"
TEXLIVE_MODULE_DOC_CONTENTS="IEEEconf.doc IEEEtran.doc aastex.doc abntex2.doc acmconf.doc active-conf.doc adfathesis.doc afparticle.doc afthesis.doc aguplus.doc aiaa.doc ametsoc.doc anufinalexam.doc aomart.doc apa.doc apa6.doc apa6e.doc arsclassica.doc articleingud.doc asaetr.doc ascelike.doc bangorcsthesis.doc beamer-FUBerlin.doc bgteubner.doc brandeis-dissertation.doc cascadilla.doc classicthesis.doc cmpj.doc confproc.doc dccpaper.doc dithesis.doc ebook.doc ebsthesis.doc ejpecp.doc elbioimp.doc elsarticle.doc elteikthesis.doc erdc.doc estcpmm.doc fbithesis.doc fcltxdoc.doc gaceta.doc gatech-thesis.doc har2nat.doc hobete.doc icsv.doc ieeepes.doc ijmart.doc imac.doc imtekda.doc jmlr.doc jpsj.doc kdgdocs.doc kluwer.doc lps.doc matc3.doc matc3mem.doc mentis.doc msu-thesis.doc mugsthesis.doc musuos.doc muthesis.doc nature.doc nddiss.doc nih.doc nostarch.doc nrc.doc onrannual.doc opteng.doc philosophersimprint.doc pittetd.doc pkuthss.doc powerdot-FUBerlin.doc pracjourn.doc procIAGssymp.doc proposal.doc ptptex.doc psu-thesis.doc resphilosophica.doc resumecls.doc revtex.doc revtex4.doc ryethesis.doc sageep.doc sapthesis.doc scrjrnl.doc schule.doc seuthesis.doc soton.doc sphdthesis.doc spie.doc sr-vorl.doc stellenbosch.doc suftesi.doc sugconf.doc tabriz-thesis.doc thesis-ekf.doc thesis-titlepage-fhac.doc thuthesis.doc toptesi.doc tudscr.doc tugboat.doc tugboat-plain.doc tui.doc uaclasses.doc uadocs.doc uafthesis.doc ucbthesis.doc ucdavisthesis.doc ucthesis.doc uestcthesis.doc uiucredborder.doc uiucthesis.doc ulthese.doc umthesis.doc umich-thesis.doc unamth-template.doc unamthesis.doc unswcover.doc ut-thesis.doc uothesis.doc uowthesis.doc uowthesistitlepage.doc uspatent.doc uwthesis.doc vancouver.doc wsemclassic.doc xcookybooky.doc yathesis.doc york-thesis.doc "
TEXLIVE_MODULE_SRC_CONTENTS="IEEEconf.source aastex.source acmconf.source active-conf.source adfathesis.source afparticle.source aiaa.source aomart.source apa6.source apa6e.source articleingud.source bangorcsthesis.source bgteubner.source brandeis-dissertation.source confproc.source dccpaper.source ebsthesis.source ejpecp.source elbioimp.source elsarticle.source elteikthesis.source erdc.source estcpmm.source fbithesis.source fcltxdoc.source icsv.source ijmart.source imtekda.source jmlr.source kdgdocs.source kluwer.source lps.source matc3.source matc3mem.source mentis.source mugsthesis.source musuos.source nddiss.source nostarch.source nrc.source philosophersimprint.source pittetd.source pracjourn.source proposal.source resphilosophica.source resumecls.source revtex.source revtex4.source ryethesis.source sageep.source scrjrnl.source schule.source seuthesis.source sr-vorl.source stellenbosch.source suftesi.source thesis-ekf.source thesis-titlepage-fhac.source thuthesis.source toptesi.source tudscr.source tugboat.source uaclasses.source uadocs.source ucdavisthesis.source uiucredborder.source uiucthesis.source ulthese.source uothesis.source wsemclassic.source xcookybooky.source yathesis.source york-thesis.source "
inherit  texlive-module
DESCRIPTION="TeXLive Publisher styles, theses, etc."

LICENSE=" Apache-2.0 BSD GPL-1 GPL-2 GPL-3 LPPL-1.2 LPPL-1.3 public-domain TeX-other-free "
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~mips ~ppc ~ppc64 ~s390 ~sh ~x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE=""
DEPEND=">=dev-texlive/texlive-latex-2014
!<dev-texlive/texlive-latexextra-2014
"
RDEPEND="${DEPEND} "

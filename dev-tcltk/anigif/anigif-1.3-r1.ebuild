# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-tcltk/anigif/anigif-1.3-r1.ebuild,v 1.3 2015/03/20 10:19:28 jlec Exp $

EAPI=5

inherit multilib

DESCRIPTION="Image rotation package"
HOMEPAGE="http://cardtable.sourceforge.net/tcltk/"
SRC_URI="http://dev.gentoo.org/~jlec/distfiles/${P}.zip"

LICENSE="tcltk"
SLOT="0"
KEYWORDS="amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND="dev-lang/tcl:0"
DEPEND="app-arch/unzip"

S="${WORKDIR}"

src_install() {
	insinto /usr/$(get_libdir)/${P}
	doins *
}

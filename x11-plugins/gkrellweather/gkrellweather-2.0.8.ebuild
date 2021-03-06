# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-plugins/gkrellweather/gkrellweather-2.0.8.ebuild,v 1.3 2015/03/20 16:07:57 jlec Exp $

EAPI=5

inherit gkrellm-plugin toolchain-funcs

DESCRIPTION="GKrellM2 Plugin that monitors a METAR station and displays weatherinfo"
HOMEPAGE="http://sites.google.com/site/makovick/gkrellm-plugins"
SRC_URI="http://sites.google.com/site/makovick/projects/${P}.tgz"

SLOT="2"
LICENSE="GPL-2"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="
	>=dev-lang/perl-5.6.1
	>=net-misc/wget-1.5.3"
DEPEND=">=sys-apps/sed-4.0.5"

src_prepare() {
	epatch \
		"${FILESDIR}"/${P}-Respect-LDFLAGS.patch \
		"${FILESDIR}"/${P}-Move-GrabWeather.patch
}

src_compile() {
	emake PREFIX=/usr CC=$(tc-getCC) CFLAGS="${CFLAGS}"
}

src_install () {
	gkrellm-plugin_src_install

	exeinto /usr/libexec/gkrellweather
	doexe GrabWeather
}

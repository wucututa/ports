# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-wm/xmonad/xmonad-0.11-r3.ebuild,v 1.1 2015/02/27 08:45:58 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.3.1

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="A tiling window manager"
HOMEPAGE="http://xmonad.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~sparc ~x86"
IUSE="+default-term no-autorepeat-keys"

RDEPEND="dev-haskell/extensible-exceptions:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/utf8-string-0.3:=[profile?]
		>=dev-haskell/x11-1.5:=[profile?]
		<dev-haskell/x11-1.7:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
PDEPEND="default-term? ( x11-terms/xterm )
	x11-apps/xmessage
"

SAMPLE_CONFIG="xmonad.hs"
SAMPLE_CONFIG_LOC="man"

src_prepare() {
	epatch "$FILESDIR"/${P}-ghc-7.10.patch
	epatch "$FILESDIR"/${P}-sample.patch
	use no-autorepeat-keys && epatch "$FILESDIR"/${PN}-check-repeat.patch

	cabal_chdeps \
		"utf8-string >= 0.3 && < 0.4" "utf8-string >= 0.3 && < 1.1"

	# allow user patches
	epatch_user
}

src_install() {
	cabal_src_install

	echo -e "#!/bin/sh\n/usr/bin/xmonad" > "${T}/${PN}"
	exeinto /etc/X11/Sessions
	doexe "${T}/${PN}"

	insinto /usr/share/xsessions
	doins "${FILESDIR}/${PN}.desktop"

	doman man/xmonad.1
	dohtml man/xmonad.1.html

	dodoc CONFIG README
}

pkg_postinst() {
	ghc-package_pkg_postinst

	elog "A sample ${SAMPLE_CONFIG} configuration file can be found here:"
	elog "    /usr/share/${PF}/ghc-$(ghc-version)/${SAMPLE_CONFIG_LOC}/${SAMPLE_CONFIG}"
	elog "The parameters in this file are the defaults used by xmonad."
	elog "To customize xmonad, copy this file to:"
	elog "    ~/.xmonad/${SAMPLE_CONFIG}"
	elog "After editing, use 'mod-q' to dynamically restart xmonad "
	elog "(where the 'mod' key defaults to 'Alt')."
	elog ""
	elog "Read the README or man page for more information, and to see "
	elog "other possible configurations go to:"
	elog "    http://haskell.org/haskellwiki/Xmonad/Config_archive"
	elog "Please note that many of these configurations will require the "
	elog "x11-wm/xmonad-contrib package to be installed."
}
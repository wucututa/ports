# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-skype/selinux-skype-9999.ebuild,v 1.5 2014/11/27 09:58:53 swift Exp $
EAPI="5"

IUSE="alsa"
MODS="skype"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for skype"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi
DEPEND="${DEPEND}
	sec-policy/selinux-xserver
"
RDEPEND="${RDEPEND}
	sec-policy/selinux-xserver
"
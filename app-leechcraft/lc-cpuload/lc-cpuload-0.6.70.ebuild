# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-leechcraft/lc-cpuload/lc-cpuload-0.6.70.ebuild,v 1.1 2014/08/03 18:47:59 maksbotan Exp $

EAPI="5"

inherit leechcraft

DESCRIPTION="CPU load graph quark"

SLOT="0"
KEYWORDS=" ~amd64 ~x86"
IUSE="debug"

DEPEND="~app-leechcraft/lc-core-${PV}"
RDEPEND="${DEPEND}
	virtual/leechcraft-quark-sideprovider
"

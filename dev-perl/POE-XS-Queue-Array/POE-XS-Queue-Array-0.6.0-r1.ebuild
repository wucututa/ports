# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/POE-XS-Queue-Array/POE-XS-Queue-Array-0.6.0-r1.ebuild,v 1.1 2014/08/26 19:21:35 axs Exp $

EAPI=5

MODULE_AUTHOR=TONYC
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION="An XS implementation of POE::Queue::Array"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/POE"
RDEPEND="${DEPEND}"

SRC_TEST="do"

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-resindvd/gst-plugins-resindvd-1.2.4-r1.ebuild,v 1.10 2014/09/15 08:22:45 ago Exp $

EAPI="5"

GST_ORG_MODULE=gst-plugins-bad
inherit gstreamer

KEYWORDS="alpha amd64 ~arm hppa ~ia64 ppc ppc64 sparc x86 ~amd64-fbsd"
IUSE=""

RDEPEND="
	>=media-libs/libdvdnav-4.2.0-r1[${MULTILIB_USEDEP}]
	>=media-libs/libdvdread-4.2.0-r1[${MULTILIB_USEDEP}]
"
DEPEND="${RDEPEND}"

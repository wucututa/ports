# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/aniso8601/aniso8601-0.90.ebuild,v 1.1 2014/12/07 05:22:55 idella4 Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A library for parsing ISO 8601 strings"
HOMEPAGE="https://bitbucket.org/nielsenb/aniso8601/ https://pypi.python.org/pypi/aniso8601/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	local testdir=python2
	python_is_python3 && testdir=python3

	"${PYTHON}" -m unittest discover ${testdir}/${PN}/tests || die "Tests fail with ${EPYTHON}"
}

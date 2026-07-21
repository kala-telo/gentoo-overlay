# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )
DISTUTILS_USE_PEP517=no

inherit distutils-r1 pypi

DESCRIPTION="Pure python Aho-Corasick library."
HOMEPAGE="https://github.com/FrederikP/ahocorapy"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

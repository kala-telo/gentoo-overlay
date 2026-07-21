# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )

inherit distutils-r1 pypi

DESCRIPTION="Pure python Aho-Corasick library."
HOMEPAGE="https://github.com/FrederikP/ahocorapy"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

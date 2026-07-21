# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="natto-py combines the Python programming language with MeCab"
HOMEPAGE="https://github.com/buruzaemon/natto-py"
LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/cffi
	app-text/mecab
	app-dicts/mecab-ipadic
"
RDEPEND="${DEPEND}"

src_prepare() {
	distutils-r1_src_prepare
	sed -i "/, 'tests'/d" setup.py || die
}

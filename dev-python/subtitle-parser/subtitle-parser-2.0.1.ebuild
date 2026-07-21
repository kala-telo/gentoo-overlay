# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )

DISTUTILS_USE_PEP517="poetry-core"

inherit distutils-r1 pypi

DESCRIPTION="Parser for SRT and WebVTT subtitle files"

HOMEPAGE="https://github.com/remram44/subtitle-parser"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

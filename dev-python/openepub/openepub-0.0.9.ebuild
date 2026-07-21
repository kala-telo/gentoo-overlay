# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )

DISTUTILS_USE_PEP517="hatchling"

inherit distutils-r1 pypi

DESCRIPTION="Library to interact with EPUB files."

HOMEPAGE=""
LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup4-4.12.2[${PYTHON_USEDEP}]
	<dev-python/beautifulsoup4-5[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
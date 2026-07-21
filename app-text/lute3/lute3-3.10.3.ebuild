# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )

DISTUTILS_USE_PEP517="flit"

inherit distutils-r1 pypi

DESCRIPTION="Learning Using Texts"

HOMEPAGE="https://luteorg.github.io/lute-manual/ https://github.com/LuteOrg/lute-v3"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="japanese"

DEPEND="
	>=dev-python/flask-sqlalchemy-3.1.1[${PYTHON_USEDEP}]
	<dev-python/flask-sqlalchemy-4[${PYTHON_USEDEP}]
	>=dev-python/flask-wtf-1.2.1[${PYTHON_USEDEP}]
	<dev-python/flask-wtf-2[${PYTHON_USEDEP}]
	>=dev-python/jaconv-0.3.4[${PYTHON_USEDEP}]
	<dev-python/jaconv-1[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
	<dev-python/requests-3[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup4-4.12.2[${PYTHON_USEDEP}]
	<dev-python/beautifulsoup4-5[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-6.0.1[${PYTHON_USEDEP}]
	<dev-python/pyyaml-7[${PYTHON_USEDEP}]
	>=dev-python/toml-0.10.2[${PYTHON_USEDEP}]
	<dev-python/toml-1[${PYTHON_USEDEP}]
	>=dev-python/waitress-2.1.2[${PYTHON_USEDEP}]
	>=dev-python/openepub-0.0.9[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-3.1.4[${PYTHON_USEDEP}]
	>=dev-python/pypdf-3.17.4[${PYTHON_USEDEP}]
	>=dev-python/subtitle-parser-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/ahocorapy-1.6.2[${PYTHON_USEDEP}]

	japanese? ( >=dev-python/natto-py-1.0.1[${PYTHON_USEDEP}] )
	japanese? ( <dev-python/natto-py-2[${PYTHON_USEDEP}] )
"

RDEPEND="${DEPEND}"
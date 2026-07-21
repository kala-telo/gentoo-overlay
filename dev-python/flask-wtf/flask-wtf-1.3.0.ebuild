# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )

DISTUTILS_USE_PEP517="hatchling"

inherit distutils-r1 pypi

DESCRIPTION="Form rendering, validation, and CSRF protection for Flask with WTForms."

HOMEPAGE=""
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/flask[${PYTHON_USEDEP}]
	dev-python/wtforms[${PYTHON_USEDEP}]
	dev-python/itsdangerous[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
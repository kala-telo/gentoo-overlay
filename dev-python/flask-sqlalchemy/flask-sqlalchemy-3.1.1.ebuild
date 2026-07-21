# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_11 python3_12 python3_13 python3_14 )

DISTUTILS_USE_PEP517="flit"

inherit distutils-r1 pypi

DESCRIPTION="Add SQLAlchemy support to your Flask application."

HOMEPAGE="https://flask-sqlalchemy.readthedocs.io https://github.com/pallets-eco/flask-sqlalchemy"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-python/flask-2.2.5[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-2.0.16[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
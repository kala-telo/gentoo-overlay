# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="C engine for simulating rigid bodies in 2D games"
HOMEPAGE="https://box2d.org/"
SRC_URI="https://github.com/erincatto/Box2D/archive/v${PV}.tar.gz -> ${P}.tar.gz https://github.com/dougbinks/enkiTS/archive/refs/tags/v1.11.tar.gz -> enkiTS.tar.gz"

LICENSE="ZLIB"
SLOT="3"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc64 ~riscv ~x86"
IUSE="doc test"
RESTRICT="!test? ( test )"

DEPEND="test? ( dev-cpp/doctest )"
BDEPEND="doc? ( app-text/doxygen )"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DFETCHCONTENT_SOURCE_DIR_ENKITS="${WORKDIR}/enkiTS-1.11"
		-DBOX2D_BENCHMARKS=OFF
		-DBOX2D_SAMPLES=OFF
		-DCMAKE_POLICY_VERSION_MINIMUM=3.5
		-DCMAKE_CXX_STANDARD=17
	)
	cmake_src_configure
}

src_test() {
	"${BUILD_DIR}"/bin/unit_test || die
}

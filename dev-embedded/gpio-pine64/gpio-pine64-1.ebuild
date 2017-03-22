# Copyright 2017 Chris Mansfield
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4} )

inherit distutils-r1 eutils git-2

#I dont know what this does
MY_P=${P/pine64-gpio/RPi.GPIO}

DESCRIPTION="GPIO Library for the Pine A64"
HOMEPAGE="https://github.com/swkim01/RPi.GPIO-PineA64"

EGIT_REPO_URI=https://github.com/swkim01/RPi.GPIO-PineA64.git
EGIT_PROJECT="RPi.GPIO-PineA64.git"
EGIT_BRANCH="master"

RESTRICT="mirror test"

LICENSE=""
SLOT="0"
KEYWORDS="arm64"
IUSE="doc"

S="${WORKDIR}/${MY_P}"

python_test() {
    cd test || die
    "${PYTHON}" test.py || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
    distutils-r1_python_install_all

    if use doc; then
        dodoc README.txt
		dodoc CHANGELOG.txt
    fi
}

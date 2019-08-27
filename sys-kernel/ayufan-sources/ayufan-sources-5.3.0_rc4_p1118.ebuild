# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eapi7-ver

ETYPE=sources
CKV="$(ver_cut 1-3)"
K_DEFCONFIG="rockchip_linux_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-r3 versionator
EGIT_REPO_URI=https://github.com/ayufan-rock64/linux-mainline-kernel.git
EGIT_PROJECT="linux-mainline-kernel.git"
EGIT_BRANCH="master"
EGIT_COMMIT="5.3.0-rc4-1118-ayufan"

DESCRIPTION="Rock64 kernel sources"
HOMEPAGE="https://github.com/ayufan-rock64/linux-mainline-kernel"

KEYWORDS=""

src_unpack() {
        git-2_src_unpack
        unpack_set_extraversion
}

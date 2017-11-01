# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

ETYPE=sources
K_DEFCONFIG="sun50iw1p1smp_linux_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-2 versionator
EGIT_REPO_URI=https://github.com/longsleep/linux-pine64.git
EGIT_PROJECT="linux-pine64.git"
EGIT_BRANCH="pine64-hacks-1.2"

DESCRIPTION="Pine64 kernel sources"
HOMEPAGE="https://github.com/longsleep/linux-pine64"

KEYWORDS=""

src_unpack() {
        git-2_src_unpack
        unpack_set_extraversion
}


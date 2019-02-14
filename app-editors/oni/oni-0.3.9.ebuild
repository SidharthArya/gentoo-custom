# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7
inherit eutils

DESCRIPTION="A command-line fuzzy finder written in Go"
HOMEPAGE="https://github.com/junegunn/fzf"
SRC_URI="https://github.com/onivim/oni/releases/download/v0.3.9/Oni-0.3.9-x64-linux.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+go bash zsh fish tmux vim doc"

DEPEND="go? ( dev-lang/go )
        !go? ( dev-lang/ruby )"
RDEPEND="${DEPEND}"

src_compile() {
	ls
}

src_install() {
	      dobin bin/fzf
	      dobin bin/fzf-tmux
}

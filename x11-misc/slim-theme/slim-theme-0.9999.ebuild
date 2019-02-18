EAPI=7

inherit autotools elisp-common flag-o-matic multilib readme.gentoo-r1  git-r3
EGIT_REPO_URI="https://github.com/adi1090x/slim_themes.git"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${WORKDIR}/slim-theme"
S="${EGIT_CHECKOUT_DIR}"
DESCRIPTION="The extensible, customizable, self-documenting real-time display editor"
HOMEPAGE="https://www.gnu.org/software/emacs/"
LICENSE="GPL-3+ FDL-1.3+ BSD HPND MIT W3C unicode PSF-2"
SLOT="0"
RESTRICT="test"

RDEPEND="x11-misc/slim:0"

DEPEND="${RDEPEND}"

src_install () {
	mkdir -p ${D}/usr/share/slim/themes
	mv themes/* ${D}/usr/share/slim/themes/
}


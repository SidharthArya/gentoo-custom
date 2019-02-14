# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools elisp-common flag-o-matic multilib readme.gentoo-r1

DESCRIPTION="The extensible, customizable, self-documenting real-time display editor"
HOMEPAGE="https://www.gnu.org/software/emacs/"
SRC_URI="ftp://alpha.gnu.org/gnu/smalltalk/${P}.tar.xz"

LICENSE="GPL-3+ FDL-1.3+ BSD HPND MIT W3C unicode PSF-2"
SLOT="26"
KEYWORDS="alpha amd64 arm ~arm64 hppa ia64 ~mips ppc ppc64 ~sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE="acl alsa aqua athena cairo dbus dynamic-loading games gconf gfile gif gpm gsettings gtk gtk2 gzip-el imagemagick +inotify jpeg kerberos lcms libxml2 livecd m17n-lib mailutils motif png selinux sound source ssl svg systemd +threads tiff toolkit-scroll-bars wide-int X Xaw3d xft +xpm xwidgets zlib"
REQUIRED_USE="?? ( aqua X )"

RDEPEND="sys-libs/ncurses:0=
	>=app-eselect/eselect-emacs-1.16
	>=app-emacs/emacs-common-gentoo-1.5[games?,X?]
	acl? ( virtual/acl )
	alsa? ( media-libs/alsa-lib )
	dbus? ( sys-apps/dbus )
	gpm? ( sys-libs/gpm )
	!inotify? ( gfile? ( >=dev-libs/glib-2.28.6 ) )
	kerberos? ( virtual/krb5 )
	lcms? ( media-libs/lcms:2 )
	libxml2? ( >=dev-libs/libxml2-2.2.0 )
	mailutils? ( net-mail/mailutils[clients] )
	!mailutils? ( net-libs/liblockfile )
	selinux? ( sys-libs/libselinux )
	ssl? ( net-libs/gnutls:0= )
	systemd? ( sys-apps/systemd )
	zlib? ( sys-libs/zlib )
	X? (
		x11-libs/libICE
		x11-libs/libSM
		x11-libs/libX11
		x11-libs/libXext
		x11-libs/libXfixes
		x11-libs/libXinerama
		x11-libs/libXrandr
		x11-libs/libxcb
		x11-misc/xbitmaps
		gconf? ( >=gnome-base/gconf-2.26.2 )
		gsettings? ( >=dev-libs/glib-2.28.6 )
		gif? ( media-libs/giflib:0= )
		jpeg? ( virtual/jpeg:0= )
		png? ( >=media-libs/libpng-1.4:0= )
		svg? ( >=gnome-base/librsvg-2.0 )
		tiff? ( media-libs/tiff:0 )
		xpm? ( x11-libs/libXpm )
		imagemagick? ( >=media-gfx/imagemagick-6.6.2:0= )
		xft? (
			media-libs/fontconfig
			media-libs/freetype
			x11-libs/libXft
			x11-libs/libXrender
			cairo? ( >=x11-libs/cairo-1.12.18 )
			m17n-lib? (
				>=dev-libs/libotf-0.9.4
				>=dev-libs/m17n-lib-1.5.1
			)
		)
		gtk? (
			gtk2? ( x11-libs/gtk+:2 )
			!gtk2? (
				x11-libs/gtk+:3
				xwidgets? (
					net-libs/webkit-gtk:4=
					x11-libs/libXcomposite
				)
			)
		)
		!gtk? (
			motif? (
				>=x11-libs/motif-2.3:0
				x11-libs/libXpm
				x11-libs/libXmu
				x11-libs/libXt
			)
			!motif? (
				Xaw3d? (
					x11-libs/libXaw3d
					x11-libs/libXmu
					x11-libs/libXt
				)
				!Xaw3d? ( athena? (
					x11-libs/libXaw
					x11-libs/libXmu
					x11-libs/libXt
				) )
			)
		)
	)"

DEPEND="${RDEPEND}
	X? ( x11-base/xorg-proto )"

BDEPEND="virtual/pkgconfig
	gzip-el? ( app-arch/gzip )"
#	pax_kernel? ( sys-apps/attr )

RDEPEND="${RDEPEND}
	!<app-editors/emacs-vcs-${PV}"


SITEFILE="20${PN}-${SLOT}-gentoo.el"
# FULL_VERSION keeps the full version number, which is needed in
# order to determine some path information correctly for copy/move
# operations later on



src_configure() {

	./configure --prefix=/usr
}

src_compile() {
	# Disable sandbox when dumping. For the unbelievers, see bug #131505
	emake 
}

src_install () {
	emake DESTDIR="${D}" install

}


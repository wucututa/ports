# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Meta ebuild for LXQt, the Lightweight Desktop Environment"
HOMEPAGE="http://lxqt.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~*"
IUSE="admin +filemanager +icons lightdm lximage -minimal +policykit powermanagement
	sddm ssh-askpass"

S="${WORKDIR}"

RDEPEND="
	>=lxde-base/lxmenu-data-0.1.2
	~lxqt-base/lxqt-about-${PV}
	=lxqt-base/lxqt-common-0.9*
	~lxqt-base/lxqt-config-${PV}
	~lxqt-base/lxqt-globalkeys-${PV}
	~lxqt-base/lxqt-notificationd-${PV}
	~lxqt-base/lxqt-panel-${PV}
	~lxqt-base/lxqt-qtplugin-${PV}
	~lxqt-base/lxqt-runner-${PV}
	~lxqt-base/lxqt-session-${PV}
	admin? (
		~lxqt-base/lxqt-admin-${PV} )
	filemanager? (
		~x11-misc/pcmanfm-qt-${PV} )
	icons? ( kde-base/oxygen-icons )
	lightdm? (
		x11-misc/lightdm )
	lximage? (
		media-gfx/lximage-qt )
	!minimal? (
		x11-wm/openbox
		x11-misc/obconf-qt )
	policykit? (
		~lxqt-base/lxqt-policykit-${PV}
		|| ( sys-auth/consolekit[policykit(-)]
			sys-apps/systemd[policykit(-)] ) )
	powermanagement? (
		~lxqt-base/lxqt-powermanagement-${PV} )
	sddm? (
		>=x11-misc/sddm-0.10.0 )
	ssh-askpass? (
		~lxqt-base/lxqt-openssh-askpass-${PV} )
"

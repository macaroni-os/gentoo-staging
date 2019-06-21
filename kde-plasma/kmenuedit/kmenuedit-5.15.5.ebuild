# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KDE_HANDBOOK="forceoptional"
inherit kde5

DESCRIPTION="KDE Plasma menu editor"
HOMEPAGE="https://cgit.kde.org/kmenuedit.git"
KEYWORDS="amd64 ~arm arm64 x86"
IUSE="+hotkeys"

RDEPEND="
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdbusaddons)
	$(add_frameworks_dep kdelibs4support)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kservice)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_frameworks_dep sonnet)
	$(add_qt_dep qtdbus)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtwidgets)
	$(add_qt_dep qtxml)
	hotkeys? ( $(add_plasma_dep khotkeys) )
"
DEPEND="${RDEPEND}
	$(add_frameworks_dep kinit)
"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package hotkeys KHotKeysDBusInterface)
	)

	kde5_src_configure
}

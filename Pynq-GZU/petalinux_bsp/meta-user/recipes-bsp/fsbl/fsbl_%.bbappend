FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "\
	file://0001-Commented-I2C-mux-code-for-Digilent-Genesys-ZU.patch \
	file://0002-Exclude-fsbl-code-to-make-it-fit.patch \
	file://0003-fsbl-Reset-usb-phys-and-hub-upon-board-init.patch \
	file://0004-zynqmp_fsbl-Authentication-restored-for-booting-BOOT.patch \
	file://0005-zynqmp_fsbl-Fixed-Genesys-ZU-board-defines-to-match-.patch \
	file://0006-zynqmp_fsbl-Missing-includes-and-guards-for-board-de.patch \
	file://0007-Optimized-code-size-to-fit-dynamic-DDR-init-feature.patch \
	file://0008-Added-Genesys-ZU-to-list-of-boards-supporting-DDR4-d.patch \
	file://0009-Print-board-specific-message-at-current-DEBUG-level.patch \
	"

# Enable UHS-I speeds for SD
YAML_COMPILER_FLAGS_append = " -DUHS_MODE_ENABLE"
YAML_COMPILER_FLAGS_append = " -DXPS_BOARD_GZU_3EG"

# Workaround erroneous -O2 compilation setting in FSBL
do_configure_append() {
    sed -i "/BSP_FLAGS := -O2 -c/d" ${WORKDIR}/build/fsbl/Makefile
}

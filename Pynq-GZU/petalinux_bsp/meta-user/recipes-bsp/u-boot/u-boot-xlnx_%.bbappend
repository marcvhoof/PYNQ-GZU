FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://platform-top.h \
            file://devtool-fragment.cfg \
            file://user_2022-08-15-16-23-00.cfg \
            "

do_configure_append () {
	if [ "${U_BOOT_AUTO_CONFIG}" = "1" ]; then
		install ${WORKDIR}/platform-auto.h ${S}/include/configs/
		install ${WORKDIR}/platform-top.h ${S}/include/configs/
	fi
}

do_configure_append_microblaze () {
	if [ "${U_BOOT_AUTO_CONFIG}" = "1" ]; then
		install -d ${B}/source/board/xilinx/microblaze-generic/
		install ${WORKDIR}/config.mk ${B}/source/board/xilinx/microblaze-generic/
	fi
}

# Copyright (C) 2021 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

ARCH_Pynq-GZU := aarch64
BSP_Pynq-GZU := 
BITSTREAM_Pynq-GZU := base/base.bit

STAGE4_PACKAGES_Pynq-GZU := pynq usbgadget usb-eth0 boot_leds
STAGE4_PACKAGES_Pynq-GZU += vbus-det python_pmbus xrt
STAGE4_PACKAGES_Pynq-GZU += pynq_peripherals

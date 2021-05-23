#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board flags
-include device/samsung/gts7-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts7xlwifi

# TWRP support for ianmacd/twrp_gts7xl
TARGET_OTA_ASSERT_DEVICE := gts7xl,gts7xlwifi,gts7xlwifixx

# Board
BOARD_BOOT_HEADER_NAME := SRPTD21A002

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# INIT
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_gts7xlwifi

# Kernel
TARGET_KERNEL_CONFIG := vendor/gts7xlwifi_eur_open_defconfig

# Keystore
TARGET_KEYMASTER_VARIANT := samsung

# Partitions
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1887436800
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif

# Platform
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Recovery
# ianmacd/twrp_gts7xl
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Inherit from proprietary vendor
-include vendor/samsung/gts7xlwifi/BoardConfigVendor.mk

#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board flags
-include device/samsung/gts7-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts7xlwifi

# TWRP support for ianmacd/twrp_gts7xl
TARGET_OTA_ASSERT_DEVICE := gts7xl,gts7xlxx,gts7xlxxx,gts7xlwifi,gts7xlwifixx

# Board
BOARD_BOOT_HEADER_NAME := SRPTD21A002

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# INIT
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_gts7xlwifi

# Kernel
TARGET_KERNEL_CONFIG := vendor/gts7xlwifi_eur_open_custom_defconfig

# Keystore
TARGET_KEYMASTER_VARIANT := samsung

# Partitions
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1887436800
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif

# gts7xlwifi
# BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 10171187200
# BOARD_SUPER_PARTITION_SIZE := 10171187200
# BOARD_SUPER_PARTITION_SIZE := 7907226240

# twrp gts7xl
# BOARD_GOOGLE_DYNAMIC_PARTITIONS_SIZE is set to BOARD_SUPER_PARTITION_SIZE / 2 - 4MB
# BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 3949418816
# BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 5085593600

# Set error limit to BOARD_SUPER_PARTITION_SIZE - 500MB
# BOARD_SUPER_PARTITION_ERROR_LIMIT := 7382938240

# Platform
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Recovery
# ianmacd/twrp_gts7xl
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
# gts7xl
# TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Inherit from proprietary vendor
-include vendor/samsung/gts7xlwifi/BoardConfigVendor.mk

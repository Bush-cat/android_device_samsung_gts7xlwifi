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

### Dynamic Partitions
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system vendor

# gts7xlwifi - extracted from BUC1
# BOARD_SUPER_PARTITION_SIZE := 7907226240
# BOARD_SUPER_PARTITION_SIZE - 4194304 (4MB)
# BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 7903031936

# gts7xlwifi - pit-analysis BUD2
BOARD_SUPER_PARTITION_SIZE := 10171187200
# BOARD_SUPER_PARTITION_SIZE - 4194304 (4MB)
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 10166992896

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# INIT
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_gts7xlwifi

# Kernel
TARGET_KERNEL_CONFIG := vendor/gts7xlwifi_eur_open_defconfig

# Keystore
TARGET_KEYMASTER_VARIANT := samsung

# Platform
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Recovery
# ianmacd/twrp_gts7xl
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Inherit from proprietary vendor
-include vendor/samsung/gts7xlwifi/BoardConfigVendor.mk

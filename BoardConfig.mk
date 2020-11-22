#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/y2qdcmw

# Assert
TARGET_OTA_ASSERT_DEVICE := y2qdcmw

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Kernel
TARGET_KERNEL_CONFIG := vendor/y2q_jpn_dcmw_defconfig

# Platform
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Inherit common board flags
-include device/samsung/sm8250-common/BoardConfigCommon.mk

# Inherit from proprietary vendor
-include vendor/samsung/y2qdcmw/BoardConfigVendor.mk

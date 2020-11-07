#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Resolution
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit common device configuration
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/y2qdcmw/y2qdcmw-vendor.mk)

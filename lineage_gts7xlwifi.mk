#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from gts7xlwifi device
$(call inherit-product, device/samsung/gts7xlwifi/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_gts7xlwifi
PRODUCT_DEVICE := gts7xlwifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T970
PRODUCT_PDA_MODEL := T970
PRODUCT_PDA_MODEL_VERSION := XXS2BUC1
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=gts7xlwifi \
    PRODUCT_NAME=gts7xlwifixx \
    TARGET_DEVICE=SM-T970 \
    PRIVATE_BUILD_DESC="gts7xlwifixx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys" \
    BUILD_DISPLAY_ID="$(BUILD_ID).$(PRODUCT_PDA_VERSION)" \
    BUILD_NUMBER=$(PRODUCT_PDA_VERSION) \
    TARGET_BUILD_FLAVOR="gts7xlwifi-$(TARGET_BUILD_VARIANT)"

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

BUILD_FINGERPRINT := samsung/gts7xlwifixx/gts7xlwifi:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

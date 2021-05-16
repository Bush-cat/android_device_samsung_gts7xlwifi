#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml

# Display
TARGET_SCREEN_HEIGHT := 2800
TARGET_SCREEN_WIDTH := 1752
# TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x546C00000000
# TARGET_USES_COLOR_METADATA := true
# TARGET_USES_DISPLAY_RENDER_INTENTS := true
# TARGET_USES_DRM_PP := true
# TARGET_USES_GRALLOC1 := true
# TARGET_USES_GRALLOC4 := true
# TARGET_USES_HWC2 := true
# TARGET_USES_ION := true
# TARGET_USES_QCOM_DISPLAY_BSP := true
# TARGET_USES_QTI_MAPPER_2_0 := true
# TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true

# Device init scripts
PRODUCT_PACKAGES += \
    init.gts7xlwifi.rc \
    init.recovery.target.rc

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit common device configuration
$(call inherit-product, device/samsung/gts7-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/gts7xlwifi/gts7xlwifi-vendor.mk)

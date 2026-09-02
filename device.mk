
#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
$(call inherit-product, device/xiaomi/sm8850-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/popsicle/popsicle-vendor.mk)

# Camera
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator-V1-ndk.vendor \
    vendor.qti.hardware.camera.offlinecamera-V2-ndk.vendor

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayPopsicle \
    FrameworksResPopsicle \
    SettingsOverlayPopsicle \
    SystemUIResPopsicle \
    UwbResPopsicle

# Touch
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/keylayout/Xiaomi_Touch_Input_1.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/Xiaomi_Touch_Input_1.idc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# UWB
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.uwb.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.uwb.xml

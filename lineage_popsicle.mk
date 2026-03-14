#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from popsicle device.
$(call inherit-product, device/xiaomi/popsicle/device.mk)

## Device identifier
PRODUCT_DEVICE := popsicle
PRODUCT_NAME := lineage_popsicle
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2509FPN0BC
PRODUCT_MANUFACTURER := xiaomi

BUILD_FINGERPRINT := Xiaomi/popsicle/popsicle:16/BQ2A.250705.001-BP2A.250605.031.A3/OS3.0.315.0.WPBCNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
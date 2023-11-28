#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# VNDK Level
PRODUCT_TARGET_VNDK_VERSION := 31

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from S96Pro device
$(call inherit-product, device/doogee/S96Pro/device.mk)

PRODUCT_DEVICE := S96Pro
PRODUCT_NAME := twrp_S96Pro
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := S96GT
PRODUCT_MANUFACTURER := doogee

PRODUCT_GMS_CLIENTID_BASE := android-doogee

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ZN129T-user 12 SP1A.210812.016 1670059838 release-keys"

BUILD_FINGERPRINT := DOOGEE/ZN129T_RU/S96Pro:12/SP1A.210812.016/1670059838:user/release-keys

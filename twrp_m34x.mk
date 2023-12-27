#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m34x device
$(call inherit-product, device/samsung/m34x/device.mk)

PRODUCT_DEVICE := m34x
PRODUCT_NAME := twrp_m34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M346B2
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m34xjxx-user 12 SP1A.210812.016 M346B2XUS2AWI6 release-keys"

BUILD_FINGERPRINT := samsung/m34xjxx/m34x:12/SP1A.210812.016/M346B2XUS2AWI6:user/release-keys

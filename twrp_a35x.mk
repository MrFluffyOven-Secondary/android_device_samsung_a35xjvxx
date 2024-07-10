#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a35x device
$(call inherit-product, device/samsung/a35x/device.mk)

PRODUCT_DEVICE := a35x
PRODUCT_NAME := twrp_a35x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A356E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a35xjvxx-user 13 TP1A.220624.014 A356EXXS2AXEC release-keys"

BUILD_FINGERPRINT := samsung/a35xjvxx/a35x:13/TP1A.220624.014/A356EXXS2AXEC:user/release-keys

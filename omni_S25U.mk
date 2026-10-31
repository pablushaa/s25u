#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S25U device
$(call inherit-product, device/android/S25U/device.mk)

PRODUCT_DEVICE := S25U
PRODUCT_NAME := omni_S25U
PRODUCT_BRAND := android
PRODUCT_MODEL := S25U
PRODUCT_MANUFACTURER := android

PRODUCT_GMS_CLIENTID_BASE := android-mobiwire

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k50sv1_64_bsp-user 10 QP1A.190711.020 mp1V91221 release-keys"

BUILD_FINGERPRINT := UMIDIGI/MT02_ROW/MT02_ROW:11/RP1A.201005.001/20211229:user/release-keys

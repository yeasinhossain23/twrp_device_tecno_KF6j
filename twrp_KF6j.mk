#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from KF6j device
$(call inherit-product, device/tecno/KF6j/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KF6j
PRODUCT_NAME := twrp_KF6j
PRODUCT_BRAND := tecno
PRODUCT_MODEL := KF6j
PRODUCT_MANUFACTURER := TECNO
PRODUCT_RELEASE_NAME := Tecno Spark 7 (KF6j)

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 11 RP1A.200720.011 261623 release-keys"

BUILD_FINGERPRINT := TECNO/TSSI/FULL-64:11/RP1A.200720.011/230302V388:user/release-keys

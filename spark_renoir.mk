#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from renoir device
$(call inherit-product, device/xiaomi/renoir/device.mk)

# Inherit some common Spark stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080


PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := renoir
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K9G
PRODUCT_NAME := spark_renoir

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Spark config 
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
WITH_GAPPS := true
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

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := renoir
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K9G
PRODUCT_NAME := lineage_renoir

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

RICE_CHIPSET := Snapdragon_780G
RICE_MAINTAINER := Mejsi
RICE_PACKAGE_TYPE := GAPPS
SUSHI_BOOTANIMATION := 1080

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_USE_PIXEL_FINGERPRINT := true
WITH_GMS := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := false
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false

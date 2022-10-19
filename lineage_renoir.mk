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


# chipset flag (one word only/no spacing)
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rice.chipset", "Snapdragon 870 5G");
RICE_CHIPSET := lahaina

# maintainer flag (one word only/no spacing)
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rice.maintainer", "get riced");
RICE_MAINTAINER := Mejsi

# package type flag (one word only/no spacing)
# this will reflect on build/display version, a firmware package/zip name 
# e.g. riceDroid-7.0-COMMUNITY-device-AOSP.zip - AOSP is the default package type, WITH_GMS will override the package type to PIXEL
RICE_PACKAGE_TYPE := AOSP

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false

# Allow usage of custom binary linker (LD), default is false
TARGET_KERNEL_OPTIONAL_LD := false

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true

# Customized GMS Flags 
# WITH_GMS flag is required

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Compiler will only build GMS playstore services, its dependencies, and Gboard app.
# package type will change from PIXEL/GMS -> CORE
TARGET_CORE_GMS := true

# extra flag under TARGET_CORE_GMS
TARGET_CORE_GMS_EXTRAS := false

# memory management [2]
persist.sys.fw.bg_apps_limit=96

# Adapted LMKD [1] & [2]
# kill_heaviest_task_dup
ro.lmk.kill_heaviest_task=true
# kill_timeout_ms_dup
ro.lmk.kill_timeout_ms=100
# thrashing_threshold
ro.lmk.thrashing_limit=30
# thrashing_decay
ro.lmk.thrashing_limit_decay=5
# nstrat_low_swap
ro.lmk.swap_free_low_percentage=10
# nstrat_psi_partial_ms
ro.lmk.psi_partial_stall_ms=70
# nstrat_psi_complete_ms
ro.lmk.psi_complete_stall_ms=70
# use_new_strategy_dup
ro.lmk.use_new_strategy=true
# CLO lmkd [1] - others were not defined (will use default values from lmkd binary)
ro.lmk.psi_scrit_complete_stall_ms=75
ro.lmk.nstrat_wmark_boost_factor=4
ro.lmk.enable_watermark_check=true
ro.lmk.enable_userspace_lmk=true
ro.lmk.super_critical=701
ro.lmk.direct_reclaim_pressure=45
ro.lmk.reclaim_scan_threshold=0

# app compaction - [1] & [2]
# disabled app compaction due to app freezes when switching tasks
persist.sys.appcompact.enable_app_compact=false
persist.sys.appcompact.full_compact_type=2
persist.sys.appcompact.some_compact_type=4
persist.sys.appcompact.compact_throttle_somesome=5000
persist.sys.appcompact.compact_throttle_somefull=10000
persist.sys.appcompact.compact_throttle_fullsome=500
persist.sys.appcompact.compact_throttle_fullfull=10000
persist.sys.appcompact.compact_throttle_bfgs=600000
persist.sys.appcompact.compact_throttle_persistent=600000
persist.sys.appcompact.rss_throttle_kb=12000
persist.sys.appcompact.delta_rss_throttle_kb=8000
persist.sys.perf.topAppRenderThreadBoost.enable=false
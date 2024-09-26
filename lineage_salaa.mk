#
#  Copyright (C) 2024 The LineageOS Project
#  SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Rising stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS flags
RISING_BUILDTYPE := UNOFFICIAL
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_BCR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
RISING_BATTERY := 5000mAh
RISING_DISPLAY := 1080X2400
RISING_CHIPSET :="Helio G95"
RISING_MAINTAINER :="Luks"

# GMS
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true

# Build_Prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Helio G95" \
    RISING_MAINTAINER="Luks"

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# EPPE
#TARGET_DISABLE_EPPE := true

# Device Information
PRODUCT_DEVICE := salaa
PRODUCT_NAME := lineage_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_MODEL := realme 7/Narzo 20 Pro/Narzo 30 4G
PRODUCT_SYSTEM_NAME := RMX2155
PRODUCT_SYSTEM_DEVICE := RMX2155L1

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Fingerprint
BUILD_FINGERPRINT := "realme/RMX2155/RMX2155L1:12/SP1A.210812.016/Q.GDPR.bf75e7-1:user/release-keys"
BUILD_DESCRIPTION := "sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1668670161293 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=$(BUILD_DESCRIPTION)

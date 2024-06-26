#
# SPDX-FileCopyrightText: 2023-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Everest stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Inherit the proprietary files
$(call inherit-product-if-exists, vendor/certification/BoardConfig.mk)

# Everest Maintainer Stuff
EVEREST_BUILD_TYPE := UNOFFICIAL
EVEREST_MAINTAINER := Luks
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true

# Build GAPPS
WITH_GAPPS := true

# Build Launcher3 in GAPPS
TARGET_INCLUDE_PIXEL_LAUNCHER := true

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device Information
PRODUCT_DEVICE := salaa
PRODUCT_NAME := everest_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_SYSTEM_NAME := RMX2155
PRODUCT_SYSTEM_DEVICE := RMX2155L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1668670161293 release-keys"

# Build info
BUILD_FINGERPRINT := "realme/RMX2155EEA/RMX2155L1:12/SP1A.210812.016/Q.GDPR.bf75e7-1:user/release-keys"
PRODUCT_PROPERTY_OVERRIDES := ro.build.fingerprint=$(BUILD_FINGERPRINT)
PRODUCT_GMS_CLIENTID_BASE := android-realme

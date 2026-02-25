#
# SPDX-FileCopyrightText: The Android Open Source Project
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/salaa/device.mk)

# Flags
IS_OFFICIAL := true

# Device Information
PRODUCT_NAME := custom_salaa
PRODUCT_DEVICE := salaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2151/RMX2155/RMX2156

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_SYSTEM_NAME := RMX2155
PRODUCT_SYSTEM_DEVICE := RMX2155L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1711679158901 release-keys" \
    BuildFingerprint=realme/RMX2155/RMX2155L1:12/SP1A.210812.016/Q.GDPR.bf75e7-1:user/release-keys \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

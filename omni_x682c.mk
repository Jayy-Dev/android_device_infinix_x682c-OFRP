#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from x682c device
$(call inherit-product, device/infinix/x682c/device.mk)

PRODUCT_DEVICE := x682c
PRODUCT_NAME := omni_x682c
PRODUCT_BRAND := infinix
PRODUCT_MODEL := Infinix X682C
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x682c_h694-user 10 QP1A.190711.020 222960 release-keys"

BUILD_FINGERPRINT := Infinix/X682C-GL/Infinix-X682C:10/QP1A.190711.020/220109V295:user/release-keys

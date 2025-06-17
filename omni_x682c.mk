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

# include prebuilt
# PRODUCT_COPY_FILES += device/infinix/x682c/prebuilt/

PRODUCT_DEVICE := x682c
PRODUCT_NAME := omni_x682c
PRODUCT_BRAND := infinix
PRODUCT_MODEL := Infinix Hot 10
PRODUCT_MANUFACTURER := infinix

PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_GMS_CLIENTID_BASE := android-infinix

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Rootdir
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root/,$(TARGET_COPY_OUT_RECOVERY)/root/)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT := Infinix/X682C-GL/Infinix-X682C:10/QP1A.190711.020/220109V295:user/release-keys
    PRIVATE_BUILD_DESC="vnd_x682c_h694-user 10 QP1A.190711.020 222960 release-keys"
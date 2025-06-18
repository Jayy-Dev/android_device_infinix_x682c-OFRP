$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)
# Inherit from device
$(call inherit-product, device/infinix/X682C/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := X682C
DEVICE_PATH := device/infinix/X682C
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := X682C
PRODUCT_MANUFACTURER := infinix

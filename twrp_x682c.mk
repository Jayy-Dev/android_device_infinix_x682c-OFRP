PRODUCT_RELEASE_NAME := x682c
DEVICE_PATH := device/infinix/x682c
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := infinix
PRODUCT_MODEL := infinix x682c
PRODUCT_MANUFACTURER := infinix

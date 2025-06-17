include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.gatekeeper@1.0-service
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := android.hardware.gatekeeper@1.0-service
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/vendor/bin/hw
LOCAL_PREBUILT_MODULE_FILE := $(LOCAL_PATH)/android.hardware.gatekeeper@1.0-service
include $(BUILD_PREBUILT)
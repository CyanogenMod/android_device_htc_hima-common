LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    icu53.c \
    ril_shim.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder libicuuc

LOCAL_MODULE := libril_shim
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 64

include $(BUILD_SHARED_LIBRARY)

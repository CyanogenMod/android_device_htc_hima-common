LOCAL_PATH := $(call my-dir)

# Camera
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES := \
    camera/camera_shim.cpp \
    camera/gui/SensorManager.cpp \
    camera/ui/GraphicBuffer.cpp \
    camera/ui/GraphicBufferAllocator.cpp \
    camera/ui/GraphicBufferMapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder libcutils libgui libhardware liblog libsync libui libutils

LOCAL_MODULE := libcamera_shim
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := 32

include $(BUILD_SHARED_LIBRARY)

# Radio
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    ril/icu53.c \
    ril/ril_shim.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder libicuuc

LOCAL_MODULE := libril_shim
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 64

include $(BUILD_SHARED_LIBRARY)

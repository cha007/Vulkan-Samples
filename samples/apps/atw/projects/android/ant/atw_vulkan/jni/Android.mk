LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE			:= atw_vulkan
LOCAL_C_INCLUDES		:= ../../../../../../../Vulkan-LoaderAndValidationLayers/include
LOCAL_C_INCLUDES		+= $(VK_SDK_PATH)/Include
LOCAL_SRC_FILES			:= ../../../../../atw_vulkan.c
LOCAL_CFLAGS			:= -std=c99 -O3 -Wall
LOCAL_LDLIBS			:= -llog -landroid -ldl
LOCAL_STATIC_LIBRARIES	:= android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)

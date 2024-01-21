LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS += -Wno-unused-parameter -Wno-int-to-pointer-cast
LOCAL_CFLAGS += -Wno-uninitialized -Wno-parentheses
LOCAL_CPPFLAGS += -Wno-conversion-null

ifeq ($(TARGET_ARCH), arm)
    LOCAL_CFLAGS += -DPACKED="__attribute__ ((packed))"
else
    LOCAL_CFLAGS += -DPACKED=""
endif

LOCAL_CPPFLAGS += -std=c++11

LOCAL_MODULE := jaroWinkler
LOCAL_SRC_FILES := jaroWinkler.cpp utf8_unicode.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)

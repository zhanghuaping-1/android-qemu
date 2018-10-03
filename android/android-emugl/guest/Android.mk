LOCAL_PATH := $(call my-dir)

# Implementation of enough Android for graphics#################################

# Android libraries
$(call emugl-begin-shared-library,libutils)
LOCAL_SRC_FILES := \
    androidImpl/libutils_placeholder.cpp \

$(call emugl-end-module)

$(call emugl-begin-shared-library,libcutils)
LOCAL_SRC_FILES := \
    androidImpl/Ashmem.cpp \
    androidImpl/Properties.cpp \
    androidImpl/GrallocDispatch.cpp \

$(call emugl-end-module)

$(call emugl-begin-shared-library,liblog)
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(ANDROID_EMU_BASE_INCLUDES)
LOCAL_SRC_FILES := \
    androidImpl/Log.cpp \

$(call emugl-end-module)
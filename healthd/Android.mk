LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := healthd_board_mtk.cpp
LOCAL_MODULE := libhealthd.mt6580
LOCAL_STATIC_LIBRARIES := libc liblog libcutils
LOCAL_C_INCLUDES := system/core/healthd
LOCAL_CFLAGS := -Werror
include $(BUILD_STATIC_LIBRARY)


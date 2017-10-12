LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_DEVICE),ZC500TG)

include $(call first-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

endif

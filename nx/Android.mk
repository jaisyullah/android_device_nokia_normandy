LOCAL_PATH := $(call my-dir)

ifneq ($(filter msm7x27a,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-makefiles-under,$(LOCAL_PATH))

#Copying ETC files of 7x27a
    $(shell [ -f $(TARGET_OUT)/etc/ ] || mkdir -p $(TARGET_OUT)/etc/)
    $(shell cp $(LOCAL_PATH)/etc/* $(TARGET_OUT)/etc/)

#Copying scripts files of PAC-Man Files
    $(shell [ -f $(TARGET_OUT)/etc/init.d ] || mkdir -p $(TARGET_OUT)/etc/init.d)
    $(shell cp $(LOCAL_PATH)/scripts/* $(TARGET_OUT)/etc/init.d/)

#Fixing Adreno2xx Drivers
    $(shell [ -f $(TARGET_OUT)/lib ] || mkdir -p $(TARGET_OUT)/lib)
    $(shell cp -r $(LOCAL_PATH)/adreno/* $(TARGET_OUT)/lib/)

#Copying other files
    $(shell [ -f $(TARGET_OUT)/bin ] || mkdir -p $(TARGET_OUT)/bin)
    $(shell cp $(LOCAL_PATH)/other/bin/* $(TARGET_OUT)/bin/)
    $(shell [ -f $(TARGET_OUT)/lib ] || mkdir -p $(TARGET_OUT)/lib)
    $(shell cp -r $(LOCAL_PATH)/other/lib/* $(TARGET_OUT)/lib/)
    $(shell [ -f $(TARGET_OUT)/lib/bluez-plugin ] || mkdir -p $(TARGET_OUT)/lib/bluez-plugin)
    $(shell cp $(LOCAL_PATH)/other/bluez-plugin/* $(TARGET_OUT)/lib/bluez-plugin/)
    $(shell [ -f $(PRODUCT_OUT)/root ] || mkdir -p $(PRODUCT_OUT)/root)
    $(shell cp -r $(LOCAL_PATH)/other/root/* $(PRODUCT_OUT)/root/)

#Copying 7x27a drivers(Display, Audio, Sensors, Wifi)
    $(shell [ -f $(TARGET_OUT)/lib/hw ] || mkdir -p $(TARGET_OUT)/lib/hw)
    $(shell cp -r $(LOCAL_PATH)/7627a/* $(TARGET_OUT)/lib/)

#Fixing lost libs
include $(CLEAR_VARS)
LOCAL_MODULE := libqdutils
LOCAL_MODULE_OWNER := nokia
LOCAL_SRC_FILES := 7627a/libqdutils.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

endif

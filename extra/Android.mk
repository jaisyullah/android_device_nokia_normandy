LOCAL_PATH := $(call my-dir)

ifeq ($(strip $(INSTALL_OLD_SENSORS)),true)
    $(shell [ -f $(TARGET_OUT)/lib/hw/ ] || mkdir -p $(TARGET_OUT)/lib/hw/)
    $(shell cp $(LOCAL_PATH)/hw/* $(TARGET_OUT)/lib/hw/)
endif

ifeq ($(strip $(INSTALL_QCOM_ROOT_SCRIPTS)),true)
    $(shell [ -f $(PRODUCT_OUT)/root/ ] || mkdir -p $(PRODUCT_OUT)/root/)
    $(shell cp -r $(LOCAL_PATH)/root/* $(TARGET_ROOT_OUT)/)
endif

ifeq ($(strip $(INSTALL_NOKIAX_MODULES)),true)
    $(shell [ -f $(TARGET_OUT)/lib/modules/ ] || mkdir -p $(TARGET_OUT)/lib/modules/)
    $(shell cp -r $(LOCAL_PATH)/modules/* $(TARGET_OUT)/lib/modules/)
endif

ifeq ($(strip $(INSTALL_ADDITIONAL_SCRIPTS)),true)
    $(shell [ -f $(TARGET_OUT)/etc/init.d/ ] || mkdir -p $(TARGET_OUT)/etc/init.d/)
    $(shell cp $(LOCAL_PATH)/scripts/* $(TARGET_OUT)/etc/init.d/)
endif

ifeq ($(strip $(INSTALL_ADDITIONAL_ETC)),true)
    $(shell [ -f $(TARGET_OUT)/etc/ ] || mkdir -p $(TARGET_OUT)/etc/)
    $(shell cp -r $(LOCAL_PATH)/etc/* $(TARGET_OUT)/etc/)
endif


#Apps
ifeq ($(strip $(ADD_SETUP_WIZARD)),true)
    $(shell [ -f $(TARGET_OUT)/priv-app/ ] || mkdir -p $(TARGET_OUT)/priv-app/)
    $(shell cp -r $(LOCAL_PATH)/prebuilts/SetupWizard $(TARGET_OUT)/priv-app/)
endif
ifeq ($(strip $(ADD_SlimFileManager)),true)
    $(shell [ -f $(TARGET_OUT)/priv-app/ ] || mkdir -p $(TARGET_OUT)/priv-app/)
    $(shell cp -r $(LOCAL_PATH)/prebuilts/SlimFileManager $(TARGET_OUT)/priv-app/)
endif
ifeq ($(strip $(ADD_CUSTOM_WEBVIEW)),true)
    $(shell [ -f $(TARGET_OUT)/app/ ] || mkdir -p $(TARGET_OUT)/app/)
    $(shell [ -f $(TARGET_OUT)/lib/ ] || mkdir -p $(TARGET_OUT)/lib/)
    $(shell cp -r $(LOCAL_PATH)/prebuilts/webview $(TARGET_OUT)/app/)
    $(shell cp -r $(LOCAL_PATH)/prebuilts/libs/* $(TARGET_OUT)/lib/)
endif


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/nokia/normandy/normandy-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nokia/normandy/overlay


#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := device/nokia/normandy/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_normandy
PRODUCT_DEVICE := normandy

LOCAL_PATH := device/nokia/normandy

PRODUCT_LOCALES := ar_EG
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Files
PRODUCT_COPY_FILES += \
    device/nokia/normandy/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/nokia/normandy/rootdir/vold.fstab:root/vold.fstab \
    device/nokia/normandy/rootdir/init.target.rc:root/init.target.rc \
    device/nokia/normandy/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/nokia/normandy/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/nokia/normandy/rootdir/fstab.qcom:root/fstab.qcom \
    device/nokia/normandy/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/nokia/normandy/rootdir/sh/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.ril.sh:root/init.qcom.ril.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.sh:root/init.qcom.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.unicorn-dpi.sh:root/init.qcom.unicorn-dpi.sh \
    device/nokia/normandy/rootdir/sh/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/nokia/normandy/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/nokia/normandy/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/nokia/normandy/etc/thermald.conf:system/etc/thermald.conf \
    device/nokia/normandy/etc/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    device/nokia/normandy/etc/thermald-LA-M1.conf:system/etc/thermald-LA-M1.conf

#Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/rootdir/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/rootdir/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/rootdir/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/rootdir/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/rootdir/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/rootdir/charger/battery_0.png:root/res/images/charger/battery_charge.png

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/dhcpcd.conf:system/etc/dhcpcd.conf \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_7627a.xml:system/etc/media_codecs.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio_policy.conf \
    audio_policy.msm7x27a \
    audio.r_submix.default \
    audio.usb.default \
    libaudioparameter \
    libaudio-resampler \
    libtinyalsa \
    tinycap \
    tinymix \
    tinyplay

# Display
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libc2dcolorconvert \
    liboverlay \
    libtilerenderer \
    libgenlock \
    libqdutils \
    libqdMetaData

# Keys
PRODUCT_PACKAGES += \
    7x27a_kp.kcm \
    atmel_mxt_ts.kl \
    synaptics_rmi4_i2c.kl \
    ft5x06_ts.kl \
    surf_keypad.kl \
    7k_handset.kl \
    7x27a_kp.kl \
    ft6306.kl

# Filesystem management tools
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    hwmac \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a

### Add system daemons
PRODUCT_PACKAGES += \
    rild

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxVidEnc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

# Newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += \
   camera2.portability.force_api=1

PRODUCT_PACKAGES += \
    camera.msm7x27a

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

#Options
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    service.adb.root=1 \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    ro.zygote=zygote32 \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=512m \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=64m \
    ro.dalvik.vm.native.bridge=0

PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    dalvik.vm.jit.codecachesize=0 \
    persist.sys.force_highendgfx=true \
    ro.config.low_ram=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16 \
    dalvik.vm.dex2oat-filter=interpret-only \
    dalvik.vm.image-dex2oat-filter=speed

# Extras
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    Superuser \
    su

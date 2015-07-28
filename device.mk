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
PRODUCT_LOCALES += en_US
PRODUCT_LOCALES += en_UK
PRODUCT_LOCALES += fr_FR
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BOOT_JARS += qcmediaplayer

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

#Root
PRODUCT_PACKAGES += \
   fstab.qcom \
   ueventd.qcom.rc \
   init.target.rc \
   init.qcom.usb.rc \
   init.qcom.rc

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/cmdline:root/cmdline \

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

 # GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a

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
    libnl_2

# Lights
PRODUCT_PACKAGES += \
   lights.msm7x27a

#Health HAL
PRODUCT_PACKAGES += \
    libhealthd.msm7x27a

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a \
    libsurfaceflinger_client

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
    wpa_supplicant_overlay.conf \
    wpa_supplicant.conf \
    wpa_supplicant

# Newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += \
   camera2.portability.force_api=1

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
    ro.zygote=zygote32

# Extras
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    Superuser \
    su \
    dump.f2fs \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    dexopt \
    dex2oat \
    librpc
    
# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    FMRadio \
    libqcomfm_jni \
    qcom.fmradio

PRODUCT_PACKAGES += \
    llvm

#Props
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    persist.hwc.mdpcomp.enable=false \
    debug.mdpcomp.logs=0 \
    debug.gralloc.map_fb_memory=1 \
    debug.hwc.fakevsync=1 \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.vold.umsdirtyratio=50

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/smd0 \
    ro.telephony.call_ring.delay=100 \
    ro.telephony.call_ring.multiple=false

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    telephony.lteOnGsmDevice=0 \
    ro.telephony.call_ring.delay=3000 \
    persist.multisim.config=dsds \
    persist.radio.multisim.config=dsds \
    ro.multi.rild=true \
    persist.sys.usb.config=mass_storage,adb \
    wlan.driver.ath=1 \
    ro.config.low_ram=true \
    dalvik.vm.heapgrowthlimit=52m \
    dalvik.vm.heapsize=128m \
    ro.qualcomm.bluetooth.ftp=true \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true \
    ro.telephony.ril.config=datacallapn,signalstrength

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.version.baseband=2030 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.ril.v3=qcomdsds,skippinpukcount,signalstrength \
    ro.telephony.ril_class=HuaweiRIL

#Low-Ram
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    dalvik.vm.jit.codecachesize=0 \
    persist.sys.force_highendgfx=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16

# Stagefright
PRODUCT_PROPERTY_OVERRIDES += \
   media.stagefright.enable-player=true \
   media.stagefright.enable-meta=false \
   media.stagefright.enable-scan=true \
   media.stagefright.enable-http=true \
   media.stagefright.enable-fma2dp=true \
   media.stagefright.enable-aac=true \
   media.stagefright.enable-qcp=true

PRODUCT_PROPERTY_OVERRIDES += \
   mm.enable.smoothstreaming=true

# Use ART small mode
PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.dex2oat-filter=interpret-only \
   dalvik.vm.image-dex2oat-filter=speed

# ART properties
ADDITIONAL_DEFAULT_PROPERTIES += \
   dalvik.vm.dex2oat-Xms=8m \
   dalvik.vm.dex2oat-Xmx=96m \
   dalvik.vm.image-dex2oat-Xms=48m \
   dalvik.vm.image-dex2oat-Xmx=48m

#Additional
PRODUCT_PACKAGES += \
   radiooptions

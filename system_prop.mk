#Root Props
ADDITIONAL_DEFAULT_PROPERTIES += \
    service.adb.root=1 \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    ro.zygote=zygote32 \
    dalvik.vm.dex2oat-Xms=8m \
    dalvik.vm.dex2oat-Xmx=96m \
    dalvik.vm.image-dex2oat-Xms=48m \
    dalvik.vm.image-dex2oat-Xmx=48m

#7x27a configs
PRODUCT_PROPERTY_OVERRIDES += \
    headset.hook.delay=500

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=52m

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    gsm.version.baseband=1040 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.ril.config=qcomdsds,skippinpukcount,signalstrength \
    ro.telephony.ril_class=HuaweiRIL

PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    rild.libargs=-d/dev/smd0 \
    ro.telephony.call_ring.delay=100 \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=50

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.gapless.playback.disable=true
    
# FM Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

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

#Nokia X configs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fmcv2support=1 \
    wlan.driver.ath=1 \
    debug.sf.hw=1 \
    debug.sf.swaprect=1 \
    debug.composition.7x27A.type=dyn \
    debug.composition.7x25A.type=dyn \
    debug.composition.8x25.type=gpu \
    ro.sf.7x27A.lcd_density=240 \
    ro.sf.8x25.lcd_density=240 \
    persist.gralloc.cp.level3=1

#
#for using emmc partition instead sdcard
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.emmcsdcard.enabled=1

#
# system props for SD card emulation of emmc partition
#
PRODUCT_PROPERTY_OVERRIDES += \
   ro.emmc.sdcard.partition=21 \
   ro.ksm.default=1 \
   dalvik.vm.jit.codecachesize=0 \
   persist.sys.dalvik.multithread=false \
   persist.sys.dun.override=0 \
   persist.sys.root_access=1 \
   ro.bluetooth.remote.autoconnect=true \
   ro.bluetooth.request.master=true \
   ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
   ro.qualcomm.bluetooth.dun=true \
   ro.qualcomm.bluetooth.ftp=true \
   ro.cwm.enable_key_repeat=true \
   debug.composition.type=dyn \
   debug.hwc.dynThreshold=1.9 \
   ro.bq.gpu_to_cpu_unsupported=1 \
   ro.max.fling_velocity=4000 \
   ro.opengles.version=131072 \
   ro.sf.lcd_density=240 \
   dalvik.vm.heapgrowthlimit=48m \
   dalvik.vm.heapsize=128m \
   persist.sys.usb.config=mass_storage,adb \
   persist.webview.provider=classic \
   wifi.interface=wlan0 \
   wifi.supplicant_scan_interval=60 \
   ro.adb.qemud=1 \
   dalvik.vm.heapstartsize=5m \
   dalvik.vm.heaptargetutilization=0.25 \
   dalvik.vm.heapminfree=512k \
   dalvik.vm.heapmaxfree=2m \
   persist.sys.dalvik.vm.lib=libdvm.so \
   dalvik.vm.lockprof.threshold=500 \
   dalvik.vm.dexopt-flags=m=y \
   net.bt.name=Android \
   dalvik.vm.stack-trace-file=/data/anr/traces.txt \
   persist.hwc.mdpcomp.enable=false \
   debug.mdpcomp.logs=0 \
   debug.gralloc.map_fb_memory=1 \
   debug.hwc.fakevsync=1 \
   persist.sys.usb.config=mtp,adb

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true

#Low-Ram
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    persist.sys.force_highendgfx=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16

# Use ART small mode
PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.dex2oat-filter=interpret-only \
   dalvik.vm.image-dex2oat-filter=speed


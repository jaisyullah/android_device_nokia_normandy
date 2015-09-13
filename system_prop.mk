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
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    persist.sys.emmcsdcard.enabled=1 \
    ro.emmc.sdcard.partition=21 \
    rild.libargs=-d/dev/smd0 \
    ril.subscription.types=NV,RUIM \
    ro.telephony.call_ring.delay=3000 \
    gsm.version.baseband=1040 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.ril.config=qcomdsds,skippinpukcount,signalstrength \
    ro.telephony.ril_class=HuaweiRIL \
    persist.multisim.config=dsds \
    persist.radio.multisim.config=dsds \
    ro.multi.rild=true \
    ro.telephony.call_ring.multiple=false \
    ro.use_data_netmgrd=true \
    persist.data_netmgrd_nint=16 \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.qualcomm.bluetooth.dun=true \
    ro.qualcomm.bluetooth.ftp=true \
    ro.adb.qemud=1 \
    ro.cwm.enable_key_repeat=true \
    debug.composition.type=dyn \
    debug.sf.hw=1 \
    debug.composition.7x27A.type=dyn \
    debug.composition.7x25A.type=dyn \
    debug.composition.8x25.type=gpu \
    debug.composition.n_plus.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=220 \
    dalvik.vm.heapgrowthlimit=32m \
    dalvik.vm.heapsize=64m \
    persist.sys.usb.config=mass_storage,adb \
    ro.vold.umsdirtyratio=50 \
    persist.webview.provider=classic \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60 \
    persist.sys.thermal.monitor=1 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    persist.sys.dalvik.vm.lib=libdvm.so \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    net.bt.name=Android \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt

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

#GAPPS
# begin addon properties
PRODUCT_PROPERTY_OVERRIDES += \
   ro.addon.type=gapps \
   ro.addon.platform=51 \
   ro.addon.pa_type=pico \
   ro.addon.pa_version=20150315
# end addon properties

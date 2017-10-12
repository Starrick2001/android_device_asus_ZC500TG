

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/asus/ZC500TG/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/asus/ZC500TG/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS += device/asus/ZC500TG/overlay

PRODUCT_COPY_FILES += \
    device/asus/ZC500TG/prebuilt/kernel:kernel

PRODUCT_COPY_FILES += \
    device/asus/ZC500TG/etc/init/audioserver.rc:system/etc/init/audioserver.rc \
    device/asus/ZC500TG/etc/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    device/asus/ZC500TG/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/asus/ZC500TG/config/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Ramdisk
PRODUCT_PACKAGES += \
    enableswap.sh \
    fstab.mt6580 \
    init.aee.rc \
    init.modem.rc \
    init.mt6580.rc \
    init.mt6580.usb.rc \
    init.nvdata.rc \
    init.project.rc \
    init.xlog.rc \
    meta_init.rc \
    ueventd.mt6580.rc

# Key layout files
PRODUCT_COPY_FILES += \
    device/asus/ZC500TG/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    device/asus/ZC500TG/keylayout/AVRCP.kl:system/usr/keychars/AVRCP.kl \
    device/asus/ZC500TG/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# LiveDisplay
PRODUCT_PACKAGES += \
    libjni_livedisplay

# RIL
PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_PACKAGES += \
    Torch \
    libxlog \
    libmtk_symbols \
    libperfservicenative \
    libcurl

PRODUCT_PACKAGES += power.mt6580

# Wifi
#PRODUCT_PACKAGES += \
#    libwpa_client \
#    dhcpcd.conf \
#    wpa_supplicant \
#    wpa_supplicant.conf

# Audio componets from source
PRODUCT_PACKAGES += \
    audio.usb.default \
    audio.r_submix.default \
    audio.a2dp.default \
    audio.primary.default

# BT A2DP
# PRODUCT_COPY_FILES += \
#    vendor/mediatek/mt6580/proprietary/vendor/lib/hw/audio.a2dp.blueangel.so:system/vendor/lib/hw/audio.a2dp.mt6735.so

# Audio components from source
#PRODUCT_PACKAGES += \
#    MtkCamera libDocVfbEngineLib_m81 libpanorama

#libarchoscamera

#PRODUCT_PACKAGES += stlport_shared
PRODUCT_COPY_FILES += \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/armeabi-v7a/libstlport_shared.so:system/lib/libstlport.so

#PRODUCT_EXTRA_RECOVERY_KEYS += device/mediatek/mt6580/archos

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=320 \
persist.radio.multisim.config=dsds \
ro.mtk_lte_support=1 \
ro.telephony.ril_class=MT6580 \
ro.telephony.ril.config=fakeiccid \
ro.telephony.sim.count=2 \
persist.gemini.sim_num=2 \
ril.current.share_modem=2 \
ro.mtk_gps_support=1 \
ro.mtk_agps_app=1 \
persist.debug.xlog.enable=1 \

# These additionals go to /system/build.prop
#ADDITIONAL_BUILD_PROPERTIES += \
#cm.updater.type=plain \
#cm.updater.uri=https://localhost/decker/update-site/master/updates-14.1.json \

# drm wvm
PRODUCT_PACKAGES += \
    libshims_wvm


$(call inherit-product-if-exists, vendor/asus/ZC500TG/ZC500TG-vendor.mk)

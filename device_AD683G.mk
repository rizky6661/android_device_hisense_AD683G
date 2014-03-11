$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/hisense/AD683G/AD683G-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/hisense/AD683G/overlay

LOCAL_PATH := device/hisense/AD683G
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/rmt_storage:recovery/root/sbin/rmt_storage \
    $(LOCAL_PATH)/recovery/init.rc:recovery/root/init.rc

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/hisense/AD683G/ramdisk,root)

# permission
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/hisense/AD683G/prebuilt/system,system)

# GPS
PRODUCT_PACKAGES += \
    gps.default

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.default \
    audio.primary.msm7627a \
    audio.policy.default \
    audio.policy.msm7627a

# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7627a \
    gralloc.default \
    gralloc.msm7627a \
    hwcomposer.msm7627a \
    libgenlock \
    lights.msm7627a

# mm-audio
PRODUCT_PACKAGES += \
    sw-adec-omxaac-test \
    sw-adec-omxamr-test \
    sw-adec-omxamrwb-test \
    sw-adec-omxmp3-test \
    libOmxAacEnc \
    mm-aenc-omxaac-test \
    libOmxAmrEnc \
    mm-aenc-omxamr-test \
    libOmxEvrcEnc \
    mm-aenc-omxevrc-test \
    libOmxQcelp \
    mm-aenc-omxqcelp13-test

# misc
PRODUCT_PACKAGES += \
    dexpreopt \
    com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    persist.adb.notify=0 \
    wifi.supplicant_scan_interval=30

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_AD683G
PRODUCT_DEVICE := AD683G

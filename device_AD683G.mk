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

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_AD683G
PRODUCT_DEVICE := AD683G

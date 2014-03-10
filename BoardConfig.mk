USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/hisense/AD683G/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/hisense/AD683G/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7627a
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
BOARD_USES_QCOM_HARDWARE := true

TARGET_BOOTLOADER_BOARD_NAME := AD683G

BOARD_KERNEL_CMDLINE := console=tty,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00e3b004
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 9461760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 358400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2191360000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/hisense/AD683G/kernel

# vold
BOARD_VOLD_MAX_PARTITIONS := 21

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := device/hisense/AD683G/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/hisense/AD683G/recovery/graphics.c

# Charger
BOARD_CHARGER_RES := device/hisense/AD683G/ramdisk/res/images/charger

# Use our own modified init.rc
TARGET_PROVIDES_INIT_RC := true

# egl configuration for adreno200
BOARD_EGL_CFG := device/hisense/AD683G/egl.cfg

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

# Graphics
USE_OPENGL_RENDERER := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_ath6kl
BOARD_WLAN_DEVICE                := ath6kl
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME             := "cfg80211"
WIFI_EXT_MODULE_ARG              := ""

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

COMMON_GLOBAL_CFLAGS   += -DTARGET_7x27A -DCHECK_FOR_EXTERNAL_FORMAT -DNO_UPDATE_PREVIEW -DANCIENT_GL -DFORCE_CPU_UPLOAD -DREFRESH_RATE=65
COMMON_GLOBAL_CFLAGS   += -DUSE_AAC_HW_DEC -DCAMERA_MM_HEAP -DTARGET7x27A -DQCOM_ICS_DECODERS -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK

# TWRP
DEVICE_RESOLUTION := 480x800
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NEVER_UNMOUNT_SYSTEM := true 
TW_DEFAULT_EXTERNAL_STORAGE := true

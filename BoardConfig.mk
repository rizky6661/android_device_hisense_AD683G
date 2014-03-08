USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/hisense/AD683G/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7627a
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

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

# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

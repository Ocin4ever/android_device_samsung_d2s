#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/beyond2lte

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal9820
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := $(PRODUCT_PLATFORM)

# Kernel
TARGET_KERNEL_ARCH := $(TARGET_ARCH)
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

BOARD_KERNEL_CMDLINE := \
    androidboot.hardware=exynos9820 \
    androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := \
    --base 0x10000000 \
    --kernel_offset 0x00008000 \
    --pagesize 2048 \
    --ramdisk_offset 0x01000000 \
    --os_version 14.0.0 \
    --tags_offset 0x00000100 \
    --header_version 1

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 61865984
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_DTBIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152
BOARD_CACHEIMAGE_PARTITION_SIZE := 629145600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5976883200
BOARD_VENDORIMAGE_PARTITION_SIZE := 1153433600
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 650117120

BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    data_mirror \
    efs \
    keydata \
    keyrefuge \
    omr \
    spu

# Filesystem
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 365
TW_DEFAULT_BRIGHTNESS := 219
TW_Y_OFFSET := 98
TW_H_OFFSET := -98
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_DEVICE_VERSION := GrassKernel
TW_USE_SAMSUNG_HAPTICS := true

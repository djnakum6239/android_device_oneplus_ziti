#
# Copyright (C) 2026 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/ziti

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Platform & Bootloader Identification
TARGET_BOARD_PLATFORM := sm7325
TARGET_BOOTLOADER_BOARD_NAME := ziti
TARGET_NO_BOOTLOADER := true

# Architecture Setup
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Virtual A/B & Core Partition Target Framework
AB_OTA_UPDATER := true
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_BUILD_VENDOR_BOOT_IMAGE := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TARGET_COPY_OUT_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true

# Kernel Layout parameters (Forced to v4 header layout required by Nord CE 3)
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image

# Prebuilt Kernel Binary Binding
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
endif

# Dynamic Partitions Size Matrix Setup
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm my_product my_engineering my_company my_carrier my_region my_heytap my_stock
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200

# Recovery Interface Graphics & Formatting
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Verified Boot (AVB) Bypasses
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Anti-Rollback Bypass Stubs
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Include Qualcomm initialization rules into target ramdisk
TARGET_RECOVERY_DEVICE_MODULES += init.recovery.qcom

# TeamWin User Interface Custom Configurations
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

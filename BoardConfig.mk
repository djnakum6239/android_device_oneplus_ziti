DEVICE_PATH := device/oneplus/ziti

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ziti
TARGET_NO_BOOTLOADER := true

# Platform / Kernel Specifications (Updated from Vendor Prop)
TARGET_BOARD_PLATFORM := lahaina
BOARD_USES_QCOM_HARDWARE := true
BOARD_BOOT_HEADER_VERSION := 3

# Storage & File System Protocols (Android 15 Sync)
BOARD_VOLD_SECURE_A_B_SUPPORT := true
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_USES_VENDOR_BOOTIMAGE := true
BOARD_SUPER_PARTITION_GROUPS := oplus_dynamic_partitions

# TWRP Theme & Brightness Limits
TW_THEME := portrait_hdpi
TW_EXTRA_FLAVOR := CPH2569_A15
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1200

# Advanced Decryption Flags (Matching dm-default-key & wrappedkey configs)
PLATFORM_VERSION := 15
PLATFORM_SDK_VERSION := 35
PLATFORM_SECURITY_PATCH := 2025-10-01
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# MTP / Storage Utilities
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_MTP := true

# Encryption & Decryption Flags
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# Direct wrappedkey parameters matching your active fstab
TW_KEYMASTER_MAX_API_LEVEL := 5
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Graphics & Rendering Configuration (Pulled directly from your default.prop)
BOARD_HAS_FLIPPED_SCREEN := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Boot Image Configuration variables parsed from Magiskboot header properties
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_FLASH_BLOCK_SIZE := 262144

# TWRP Debugging Options
TW_INCLUDE_LOGCAT := true
TW_OUTPUT_PROCESS_DATA := true

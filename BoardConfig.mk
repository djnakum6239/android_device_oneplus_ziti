DEVICE_PATH := device/oneplus/ziti

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# A/B & Virtual A/B Configuration
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    vendor \
    odm \
    system_ext \
    product \
    system

# Fix partition layout for Vendor Boot
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TARGET_COPY_OUT_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_DTBO := true

# Architecture (Fixed to standard generic 64-bit templates)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader & Platform Identification (Corrected for Snapdragon 782G)
TARGET_BOOTLOADER_BOARD_NAME := ziti
TARGET_BOARD_PLATFORM := sm7325
TARGET_NO_BOOTLOADER := true

# Kernel Layout (Forced to v4 header layout required by Nord CE 3)
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image

# Kernel - prebuilt mapping
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
endif

# Dynamic Partitions Setup (OnePlus/Oppo specific dynamic groups)
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm my_product my_engineering my_company my_carrier my_region my_heytap my_stock
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200

# Recovery graphics and file types
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Anti-rollback bypass blocks
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

# Ramdisk Custom Init Configuration
TARGET_RECOVERY_DEVICE_MODULES += \
    init.recovery.qcom \
    init.environ.rc \
    ueventd.qcom.rc

# Copy custom configurations directly to the recovery root layout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/init.environ.rc:$(TARGET_COPY_OUT_VENDOR_BOOT)/recovery/root/init.environ.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.qcom.rc:$(TARGET_COPY_OUT_VENDOR_BOOT)/recovery/root/init.recovery.qcom.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.qcom.rc:$(TARGET_COPY_OUT_VENDOR_BOOT)/recovery/root/ueventd.qcom.rc

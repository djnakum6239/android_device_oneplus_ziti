# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit TWRP minimal configuration framework
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device configurations
$(call inherit-product, device/oneplus/ziti/device.mk)

# Explicitly force the AOSP Product Engine to build the vendor_boot image layout
PRODUCT_BUILD_VENDOR_BOOT_IMAGE := true
PRODUCT_BUILD_RECOVERY_IMAGE := false

PRODUCT_DEVICE := ziti
PRODUCT_NAME := twrp_ziti
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := Nord CE 3 5G
PRODUCT_MANUFACTURER := oneplus

# Inherit from those market standard generic configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit TWRP configuration
$(call inherit-product, vendor/twrp/config/twrp.mk)

PRODUCT_DEVICE := ziti
PRODUCT_NAME := twrp_ziti
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2569
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

LOCAL_PATH := device/oneplus/ziti

# A/B Configuration handling
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control components needed for A/B slot swapping in TWRP
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.sm7325

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_verifier \
    update_engine_sideload
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.sm7325 \
    bootctrl.sm7325.recovery


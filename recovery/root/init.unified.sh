#!/sbin/sh

# Check if the active ROM is stock OOS/ColorOS by looking for Oplus specific files
if [ -d /system/system/oplus ] || [ -f /vendor/etc/init/hw/init.oplus.rc ]; then
    echo "UnifiedTWRP: Stock OxygenOS detected."
    setprop twrp.unified.rom "stock"
    # Start Oplus crypto services
    start oplus_keymaster
else
    echo "UnifiedTWRP: AOSP Custom ROM detected."
    setprop twrp.unified.rom "aosp"
    # Start standard AOSP / Qualcomm keymaster
    start android-keymaster-4-1
fi

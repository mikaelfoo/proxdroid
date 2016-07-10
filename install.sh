adb shell su -c "mount -o remount,rw /system"
adb push libs/arm64-v8a/libusb.so /system/lib
adb push libs/arm64-v8a/libreadline.so /system/lib
adb push libs/arm64-v8a/libtermcap.so /system/lib
adb push libs/arm64-v8a/proxmark3 /system/bin
adb shell su -c "mount -o remount,ro /system"


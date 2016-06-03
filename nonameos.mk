# Release name
PRODUCT_RELEASE_NAME := common_device

# Inherit some common CM stuff.
$(call inherit-product, vendor/nonameos/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/device/common/device_benefit_m7.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Configure hwui memory
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := common_device
PRODUCT_NAME := nonameos_common_device
PRODUCT_BRAND := device
PRODUCT_MODEL := common_device
PRODUCT_MANUFACTURER := device


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/device/common/benefit_m7-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/device/common/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi 
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := common

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/device/common/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from J8210 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sony
PRODUCT_DEVICE := J8210
PRODUCT_MANUFACTURER := sony
PRODUCT_NAME := lineage_J8210
PRODUCT_MODEL := Xperia 5

PRODUCT_GMS_CLIENTID_BASE := android-sony
TARGET_VENDOR := sony
TARGET_VENDOR_PRODUCT_NAME := J8210
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="J8210-user 9 55.0.A.11.25 3446636912 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Sony/J8210_EEA/J8210:9/55.0.A.11.25/3446636912:user/release-keys

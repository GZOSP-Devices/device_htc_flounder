# Release name
PRODUCT_RELEASE_NAME := flounder

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1536

# Inherit some common Tesla stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)
$(call inherit-product, vendor/tesla/config/caf_fw.mk)

# Enhanced NFC
$(call inherit-product, vendor/tesla/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := tesla_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder \
    BUILD_FINGERPRINT=google/volantis/flounder:7.1.1/N4F26T/3687331:user/release-keys \
    PRIVATE_BUILD_DESC="flounder-user 7.1.1 N4F26T 3687331 release-keys"

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := AD683G

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hisense/AD683G/device_AD683G.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := AD683G
PRODUCT_NAME := cm_AD683G
PRODUCT_BRAND := hisense
PRODUCT_MODEL := AD683G
PRODUCT_MANUFACTURER := hisense

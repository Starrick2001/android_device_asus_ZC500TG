
# Inherit some common
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fireball device
$(call inherit-product, device/asus/ZC500TG/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := ASUS Zenfone Go 
PRODUCT_BRAND := asus
PRODUCT_DEVICE := ZC500TG
PRODUCT_MANUFACTURER := Asus
PRODUCT_MODEL := ZC500TG
PRODUCT_NAME := lineage_ZC500TG

# Boot animation 
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WEIGHT := 720
TARGET_BOOTANIMATION_NAME := 720

PRODUCT_DEFAULT_LANGUAGE := vi
PRODUCT_DEFAULT_REGION := VN

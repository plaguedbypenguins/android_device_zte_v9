# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/v9/v9.mk)

# Smaller bootanim to save space in /system
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240
TARGET_BOOTANIMATION_HALF_RES := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v9
PRODUCT_NAME := cm_v9
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := V9
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := V9

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=v9 BUILD_ID=JRO03C BUILD_FINGERPRINT=ZTE/N880E_JB4_2/atlas40:4.2/JOP40C/20121121.110335:user/release-keys PRIVATE_BUILD_DESC="N880E_JB4_2-user 4.2 JOP40C 20121121.110335 release-keys" BUILD_NUMBER=20121121.110335

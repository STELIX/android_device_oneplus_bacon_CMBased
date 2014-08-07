## Specify phone tech before including full_phone
#$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := bacon

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

# Inherit some common Slim stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bacon
PRODUCT_NAME := carbon_bacon
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := A0001
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.bacon.$(shell date +%m%d%y).$(shell date +%H%M%S)
CARBON_BUILDTYPE := ALPHA

TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=carbon_bacon BUILD_FINGERPRINT="fingerprint: oneplus/bacon/A0001:4.4.2/KVT49L/XNPH22R:user/release-keys" PRIVATE_BUILD_DESC="bacon-user 4.4.2 KVT49L XNPH22R release-keys"

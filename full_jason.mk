# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jason device
$(call inherit-product, device/xiaomi/jason/device.mk)


PRODUCT_NAME := aosp_jason
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jason
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Note 3
TARGET_VENDOR := Xiaomi

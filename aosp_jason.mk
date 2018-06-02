# 
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jason device
$(call inherit-product, device/xiaomi/jason/device.mk)

# Inherit some common JDC stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

WITH_ROOT := true
KBUILD_BUILD_USER="enessastim"
KBUILD_BUILD_HOST="jason"

PRODUCT_NAME := aosp_jason
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jason
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Note 3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="jason" \
    PRODUCT_NAME="jason" \
    BUILD_FINGERPRINT="Xiaomi/jason/jason:7.1.1/NMF26X/V9.5.8.0.NCHCNFA:user/release-keys" \
    PRIVATE_BUILD_DESC="jason-user 7.1.1 NMF26X V9.5.8.0.NCHCNFA release-keys"

TARGET_VENDOR := Xiaomi

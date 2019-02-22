#
# Copyright 2015 The CyanogenMod Project
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

# Inherit AOSCP common bits
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aosp/config/telephony.mk)

# Inherit from h815 device
$(call inherit-product, device/lge/h815/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h815
PRODUCT_NAME := aosp_h815
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H815
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4_global_com" \
    PRIVATE_BUILD_DESC="p1_global_com-user 8.0 NRD90U 171931902b165 release-keys"

BUILD_FINGERPRINT := "lge/p1_global_com/p1:8.1.0/OPM4.171019.016.A1/4720815:user/release-keys"

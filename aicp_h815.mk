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

# Inherit ROM vendor common stuff
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Overlays (inherit after vendor to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from h815 device
$(call inherit-product, device/lge/h815/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aicp_h815
PRODUCT_DEVICE := h815
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H815
PRODUCT_MANUFACTURER := LGE

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="masemoel"

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="p1_global_com" \
    PRIVATE_BUILD_DESC="p1_global_com-user 6.0 MRA58K 152940055675e release-keys"

BUILD_FINGERPRINT := "lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.do_not_init_csvt=1 \
    rild.libargs=-d /dev/smd0 \
    ril.subscription.types=NV,RUIM \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.default_network=12 \
    telephony.lteOnCdmaDevice=0 \
    telephony.lteOnGsmDevice=1

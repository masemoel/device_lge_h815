#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the 
# "License"); you may not use this file except in 
# compliance with the License. You may obtain a copy of the 
# License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#

# Unless required by applicable law or agreed to in 
# writing, software distributed under the License is 
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
# CONDITIONS OF ANY KIND, either express or implied. See 
# the License for the specific language governing 
# permissions and limitations under the License.
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aicp_h815.mk

# Screen density
# must be defined here as they get readonly later on
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

COMMON_LUNCH_CHOICES := \
    aicp_h815-eng \
    aicp_h815-userdebug \
    aicp_h815-user

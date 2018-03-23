#
# Copyright 2017 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common.mk)

# Inherit from berkeley device
$(call inherit-product, device/huawei/berkeley/device.mk)

$(call inherit-product-if-exists, vendor/huawei/berkely/berkeley-vendor.mk)

 PRODUCT_COPY_FILES_OVERRIDES := device/huawei/berkeley/apns-full-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGES += \
    Dialer \
    Launcher3 \
    WallpaperPicker

PRODUCT_NAME := aosp_berkeley
PRODUCT_DEVICE := berkeley
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor View 10

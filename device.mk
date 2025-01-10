#
# Copyright (C) 2023 The LineageOS Project
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

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/gta9p/gta9p-vendor.mk)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device init scripts
PRODUCT_PACKAGES += \
    init.gta9pwifi.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc

# RIL
PRODUCT_PACKAGES += \
    libxml2 \
    secril_config_svc \
    vendor.samsung.hardware.radio@2.2

# Inherit from gta4l-common
$(call inherit-product, device/samsung/gta9p-common/gta9p.mk)

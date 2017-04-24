#
# Copyright 2013 The Android Open-Source Project
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

$(call inherit-product, device/samsung/santos10-common/device-common.mk)
$(call inherit-product, device/samsung/santos10-common/device-common-gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/santos10lte/overlay

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9

$(call inherit-product, vendor/samsung/santos10lte/santos10lte-vendor.mk)

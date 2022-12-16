#
# Copyright (C) 2020 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal7420-common

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal7420_32 \
    android.hardware.audio@2.0-impl:32 \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl:32 \
    android.hardware.audio.effect@2.0-service \
    libtinycompress

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal7420-common/universal7420-common-vendor.mk)

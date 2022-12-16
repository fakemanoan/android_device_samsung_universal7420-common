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

COMMON_PATH := device/samsung/universal7420-common

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
    
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/mixer_paths_0.xml \
	$(COMMON_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
	$(COMMON_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    wificond \
    wifilogd \
    wlutil \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl \
    android.hardware.wifi@1.0-service

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal7420-common/universal7420-common-vendor.mk)

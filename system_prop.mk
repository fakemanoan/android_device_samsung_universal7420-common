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

#
# Board
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.chipname=exynos7420 \
	ro.arch=exynos7420

#
# Dalvik
#
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.image-dex2oat-filter=speed \
	dalvik.vm.dex2oat-filter=speed \
	dalvik.vm.heapgrowthlimit=256m \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapsize=512m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=8m \
	dalvik.vm.dex2oat64.enabled=true

#
# Ril
#
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.add_power_save=1 \
	persist.radio.apm_sim_not_pwdn=1 \
	rild.libpath=/system/vendor/lib64/libsec-ril.so \
	rild.libpath2=/system/vendor/lib64/libsec-ril-dsds.so \
	telephony.lteOnGsmDevice=1 \
	telephony.lteOnCdmaDevice=0 \
	ro.telephony.default_network=9 \
	ro.use_data_netmgrd=false \
	persist.data.netmgrd.qos.enable=false \
	ro.ril.hsxpa=1 \
	ro.ril.telephony.mqanelements=6 \
	ro.ril.gprsclass=10

#
# OMX / Media
#
PRODUCT_PROPERTY_OVERRIDES += \
	debug.stagefright.ccodec=0 \
	media.stagefright.legacyencoder=true \
	media.stagefright.less-secure=true \
	debug.stagefright.omx_default_rank.sw-audio=1 \
	debug.stagefright.omx_default_rank=0 \
	vendor.mediacodec.binder.size=4 \
	media.stagefright.thumbnail.prefer_hw_codecs=true
#
# Miracast (Wireless Display)
#
PRODUCT_PROPERTY_OVERRIDES += \
	wlan.wfd.hdcp=disable \
	persist.debug.wfd.enable=1 \
	persist.sys.wfd.virtual=0

#
# NFC
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.sec_hal=true \
	ro.nfc.fw_dl_on_boot=false

#
# HWC
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.egl=mali \
	debug.sf.latch_unsignaled=1 \
	debug.hwc.winupdate=1 \
	debug.slsi_platform=1 \
	ro.sf.blurs_are_expensive=1 \
	ro.surface_flinger.max_frame_buffer_acquired_buffers=3

#
# Graphics
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196610

#
# Audio
#
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	audio_hal.force_voice_config=wide

#
# Storage
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.sdcardfs=1

#
# Vendor Security Patch Level
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.lineage.build.vendor_security_patch=2019-01-01

#
# Wi-Fi
#
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.direct.interface=p2p-dev-wlan0

#
# USB
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.adb.nonblocking_ffs=0 \
	persist.adb.nonblocking_ffs=0 \
	sys.usb.ffs.aio_compat=1

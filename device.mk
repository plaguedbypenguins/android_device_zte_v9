#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL v9 devices, and
# are also specific to v9 devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/zte/v9/overlay
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Graphics
PRODUCT_PACKAGES := \
        gralloc.msm7x27 \
        copybit.msm7x27 \
        hwcomposer.msm7x27

# OMX
PRODUCT_PACKAGES += \
        libmm-omxcore \
        libOmxCore \
        libstagefrighthw

# Camera
PRODUCT_PACKAGES += \
        camera.msm7x27

# GPS
PRODUCT_PACKAGES += \
        librpc \
        gps.v9

# V9 specific
PRODUCT_PACKAGES += \
        lights.v9 \
        sensors.v9

# Power HAL
PRODUCT_PACKAGES += \
        power.msm7x27

# Audio
PRODUCT_PACKAGES += \
        audio.primary.v9 \
        audio_policy.v9 \
        audio.a2dp.default \
        libaudioutils

# FM Radio
PRODUCT_PACKAGES += \
		libfmradio.si4708

# Other
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs

# Dalvik
DISABLE_DEXPREOPT := true

# Enable repeatable keys in CWM
PRODUCT_PROPERTY_OVERRIDES += \
        ro.cwm.enable_key_repeat=true

PRODUCT_COPY_FILES := \
        device/zte/v9/prebuilt/root/init.v9.rc:root/init.v9.rc \
        device/zte/v9/prebuilt/root/init.v9.usb.rc:root/init.v9.usb.rc \
        device/zte/v9/prebuilt/root/ueventd.v9.rc:root/ueventd.v9.rc

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Prebuilt
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,device/zte/v9/prebuilt/system,system)

# FM Radio
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/com.stericsson.hardware.fm.receiver.xml:system/etc/permissions/com.stericsson.hardware.fm.receiver.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
        frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/zte/v9/v9-vendor.mk)

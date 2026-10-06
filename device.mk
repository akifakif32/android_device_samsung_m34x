#
# Copyright (C) The LineageOS Project
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

# Inherit proprietary files
$(call inherit-product, vendor/samsung/m34x/m34x-vendor.mk)

# Inherit common makefile
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit Dalvik VM configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

DEVICE_PATH := device/samsung/m34x

# Audio - Configuration
PRODUCT_PACKAGES += mixer_paths.xml

$(call soong_config_set,samsungAudioVars,soundbooster_dsp_library,//vendor/samsung/m34x:lib_SoundBooster_ver1130)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Init
PRODUCT_PACKAGES += \
    init.m34x.rc \
    init.m34x.unify.rc

# Nfc
PRODUCT_PACKAGES += android.hardware.nfc-service.st

# Nfc - Configuration
PRODUCT_PACKAGES += \
    libnfc-nci.conf \
    libnfc-hal-st.conf

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

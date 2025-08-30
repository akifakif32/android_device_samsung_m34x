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

# Inherit from the common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/m34x/m34x-vendor.mk)

DEVICE_PATH := device/samsung/m34x

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_board_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_board_info.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/init.s5e8825.unify.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.s5e8825.unify.rc

# Nfc
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.st

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/nfc/libnfc-hal-st.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-hal-st.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/manifest.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Placeholders
EMPTY_PLACEHOLDER := $(DEVICE_PATH)/configs/placeholder

PRODUCT_COPY_FILES += \
    $(EMPTY_PLACEHOLDER):$(TARGET_COPY_OUT_VENDOR)/firmware/calliope_sram.bin \
    $(EMPTY_PLACEHOLDER):$(TARGET_COPY_OUT_VENDOR)/firmware/mfc_fw.bin \
    $(EMPTY_PLACEHOLDER):$(TARGET_COPY_OUT_VENDOR)/firmware/os.checked.bin \
    $(EMPTY_PLACEHOLDER):$(TARGET_COPY_OUT_VENDOR)/firmware/NPU.bin \
    $(EMPTY_PLACEHOLDER):$(TARGET_COPY_OUT_VENDOR)/firmware/vts.bin

# SKU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sku/system_m34x/system_SM-E346B.prop:$(TARGET_COPY_OUT_SYSTEM)/build_SM-E346B.prop \
    $(LOCAL_PATH)/configs/sku/system_m34x/system_SM-M346B.prop:$(TARGET_COPY_OUT_SYSTEM)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/system_m34x/system_SM-M346B1.prop:$(TARGET_COPY_OUT_SYSTEM)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/system_m34x/system_SM-M346B2.prop:$(TARGET_COPY_OUT_SYSTEM)/build_SM-M346B2.prop \
    $(LOCAL_PATH)/configs/sku/vendor_m34x/vendor_SM-E346B.prop:$(TARGET_COPY_OUT_VENDOR)/build_SM-E346B.prop \
    $(LOCAL_PATH)/configs/sku/vendor_m34x/vendor_SM-M346B.prop:$(TARGET_COPY_OUT_VENDOR)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/vendor_m34x/vendor_SM-M346B1.prop:$(TARGET_COPY_OUT_VENDOR)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/vendor_m34x/vendor_SM-M346B2.prop:$(TARGET_COPY_OUT_VENDOR)/build_SM-M346B2.prop \
    $(LOCAL_PATH)/configs/sku/odm_m34x/odm_SM-E346B.prop:$(TARGET_COPY_OUT_ODM)/build_SM-E346B.prop \
    $(LOCAL_PATH)/configs/sku/odm_m34x/odm_SM-M346B.prop:$(TARGET_COPY_OUT_ODM)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/odm_m34x/odm_SM-M346B1.prop:$(TARGET_COPY_OUT_ODM)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/odm_m34x/odm_SM-M346B2.prop:$(TARGET_COPY_OUT_ODM)/build_SM-M346B2.prop \
    $(LOCAL_PATH)/configs/sku/product_m34x/product_SM-E346B.prop:$(TARGET_COPY_OUT_PRODUCT)/build_SM-E346B.prop \
    $(LOCAL_PATH)/configs/sku/product_m34x/product_SM-M346B.prop:$(TARGET_COPY_OUT_PRODUCT)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/product_m34x/product_SM-M346B1.prop:$(TARGET_COPY_OUT_PRODUCT)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/product_m34x/product_SM-M346B2.prop:$(TARGET_COPY_OUT_PRODUCT)/build_SM-M346B2.prop \
    $(LOCAL_PATH)/configs/sku/system_ext_m34x/system_ext_SM-E346B.prop:$(TARGET_COPY_OUT_SYSTEM_EXT)/build_SM-E346B.prop \
    $(LOCAL_PATH)/configs/sku/system_ext_m34x/system_ext_SM-M346B.prop:$(TARGET_COPY_OUT_SYSTEM_EXT)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/system_ext_m34x/system_ext_SM-M346B1.prop:$(TARGET_COPY_OUT_SYSTEM_EXT)/build_SM-M346B.prop \
    $(LOCAL_PATH)/configs/sku/system_ext_m34x/system_ext_SM-M346B2.prop:$(TARGET_COPY_OUT_SYSTEM_EXT)/build_SM-M346B2.prop

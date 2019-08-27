# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/sony/griffin/rootdir

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/griffin/overlay

# Keymaster 4
TARGET_KEYMASTER_V4 := true

# Device Specific Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/etc/permissions/android.software.verified_boot.xml

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/sensors/config/ak991x_dri_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/ak991x_dri_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bma2x2_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bma2x2_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bme680_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bme680_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bmg160_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bmg160_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bmi160_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bmi160_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bmm150_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bmm150_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bmp285_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bmp285_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bmp380_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bmp380_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/bu52053nvx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/bu52053nvx_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/cm3526_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/cm3526_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/default_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/default_sensors.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/dps368_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/dps368_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/icp101xx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/icp101xx_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6ds3_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6ds3_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6dsm_0_16g.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6dsm_0_16g.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6dsm_0_8g.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6dsm_0_8g.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6dsm_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6dsm_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6dso_0_16g.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6dso_0_16g.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6dso_0_8g.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6dso_0_8g.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/lsm6dso_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/lsm6dso_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/ltr308_0_on_change.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/ltr308_0_on_change.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_ak991x_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_ak991x_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_bme680_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_bme680_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_bmp380_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_bmp380_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_bu52053nvx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_bu52053nvx_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_cm3526_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_cm3526_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_dps368_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_dps368_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_hdk_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_hdk_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_hdk_lsm6dso_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_hdk_lsm6dso_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_hdk_tmd2725.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_hdk_tmd2725.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_irq.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_irq.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_lsm6dsm_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_lsm6dsm_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_lsm6dsm_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_lsm6dsm_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_lsm6dso_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_lsm6dso_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_power_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_power_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_qrd_2_lsm6dso_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_qrd_2_lsm6dso_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_qrd_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_qrd_ak991x_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_qrd_lsm6dso_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_qrd_lsm6dso_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_qrd_tmd2725.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_qrd_tmd2725.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_shtw2_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_shtw2_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_tmd2725.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_tmd2725.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_tmd2725_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_tmd2725_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_tmd3725.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_tmd3725.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/msmnile_tmd3725_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/msmnile_tmd3725_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/pah_8011_0_platform.ppg_enable_ex_1.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/pah_8011_0_platform.ppg_enable_ex_1.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/pah_8011_0_platform.ppg_enable_ex_2.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/pah_8011_0_platform.ppg_enable_ex_2.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/rpr0521rs_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/rpr0521rs_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/shtw2_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/shtw2_0.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_amd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_amd.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_amd_sw_disabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_amd_sw_disabled.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_amd_sw_enabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_amd_sw_enabled.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_aont.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_aont.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_basic_gestures.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_basic_gestures.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_bring_to_ear.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_bring_to_ear.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_ccd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_ccd.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_cm.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_cm.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_dae.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_dae.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_device_orient.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_device_orient.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_diag_filter.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_diag_filter.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_distance_bound.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_distance_bound.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_dpc.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_dpc.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_facing.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_facing.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_fmv.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_fmv.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_geomag_rv.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_geomag_rv.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_gyro_cal.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_gyro_cal.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_heart_rate.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_heart_rate.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_mag_cal.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_mag_cal.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_multishake.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_multishake.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_pedometer.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_pedometer.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_rmd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_rmd.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_rotv.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_rotv.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_smd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_smd.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_tilt.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_tilt_sw_disabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt_sw_disabled.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_tilt_sw_enabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt_sw_enabled.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_tilt_to_wake.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt_to_wake.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_wrist_pedo.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_wrist_pedo.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/tmd2725.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/tmd2725.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/tmd3725.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/tmd3725.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/tmx4903.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/tmx4903.json

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Bluetooth_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/General_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Global_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Handset_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Hdmi_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Headset_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Speaker_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/workspaceFile.qwsp \
    $(DEVICE_PATH)/vendor/etc/acdbdata/adsp_avs_config.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/adsp_avs_config.acdb

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# BT/Wifi patch file
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/wlan/qca_cld/bdwlan.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/qca_cld/bdwlan.bin

# Atmel TS
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/touch_module_id_0x61.img:$(TARGET_COPY_OUT_VENDOR)/firmware/touch_module_id_0x61.img

# Device Init
PRODUCT_PACKAGES += \
    fstab.griffin \
    init.recovery.griffin \
    init.griffin

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.griffin

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk

# SAR
PRODUCT_PACKAGES += \
    TransPowerSensors

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=420 \
    ro.usb.pid_suffix=205

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/kumano/platform.mk)

# copy NFC firmware
$(call inherit-product-if-exists, vendor/nxp/nxp-vendor.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/sony/kumano-common/kumano-partial.mk)

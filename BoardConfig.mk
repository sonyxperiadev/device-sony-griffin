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

include device/sony/kumano/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := unknown
ifneq (,$(filter %j8110,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := J8110
else ifneq (,$(filter %j9110,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := J9110
else
TARGET_BOOTLOADER_BOARD_NAME := J8110
$(warning Unrecognized value for TARGET_PRODUCT: "$(TARGET_PRODUCT)", using default value: "$(TARGET_BOOTLOADER_BOARD_NAME)")
endif

# Platform
PRODUCT_PLATFORM := kumano

BOARD_KERNEL_CMDLINE += androidboot.hardware=griffin

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4362076160
# Reserve space for data encryption (114994110464-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114994094080
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# DTBO partition definitions
ifneq ($(TARGET_COMPILE_WITH_MSM_KERNEL),true)
BOARD_PREBUILT_DTBOIMAGE := kernel/sony/msm-4.14/common-kernel/dtbo-griffin.img
else
TARGET_NEEDS_DTBOIMAGE := true
endif
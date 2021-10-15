#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from motorola sdm660-common
-include device/motorola/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/payton

# A/B updater
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# Assertions
TARGET_OTA_ASSERT_DEVICE := payton

# Display
TARGET_SCREEN_DENSITY := 420

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# Kernel
TARGET_KERNEL_CONFIG := cybertron_payton_defconfig
TARGET_PREBUILT_RECOVERY_RAMDISK := $(DEVICE_PATH)/twrp/ramdisk-recovery.cpio.gz

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/touch.xml

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4328521728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20749172224 # 20749204992 - 32768
BOARD_VENDORIMAGE_PARTITION_SIZE := 603979776

# Power
TARGET_HAS_NO_WLAN_STATS := true

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# inherit from the proprietary version
include vendor/motorola/payton/BoardConfigVendor.mk

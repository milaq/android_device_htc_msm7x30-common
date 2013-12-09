# Copyright (C) 2011 The CyanogenMod Project
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

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 36
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/htc/msm7x30-common/rootdir/fstab.msm7x30
BOARD_CUSTOM_GRAPHICS := device/htc/msm7x30-common/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30-3.0
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_PAGE_SIZE := 4096
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Display
TARGET_QCOM_DISPLAY_VARIANT := legacy
# TARGET_QCOM_MEDIA_VARIANT := legacy # causes build failures with our qcom_display
BOARD_EGL_NEEDS_LEGACY_FB := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := false
TARGET_USES_C2D_COMPOSITION := true
BOARD_EGL_CFG := device/htc/msm7x30-common/rootdir/egl.cfg
TARGET_NO_INITLOGO := true
# TARGET_GRALLOC_USES_ASHMEM := true # from qsd8k
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# QCOM enhanced A/V
# TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_HTC_AUDIO := true
# BOARD_USES_QCOM_AUDIO_RESETALL := true
# BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

# GPS
BOARD_USES_QCOM_GPS := true
# BOARD_VENDOR_QCOM_AMSS_VERSION := 1200 # unused
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Webkit
TARGET_FORCE_CPU_UPLOAD := true
ENABLE_WEBGL := true

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true # because we have it renamed for some reason

# Wi-Fi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := "bcmdhd"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true

# Screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Hardware tuning framework
BOARD_HARDWARE_CLASS := device/htc/msm7x30-common/cmhw

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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/zte/v9/BoardConfigVendor.mk

# CPU
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_SMP := false
TARGET_CPU_VARIANT := arm11
ARCH_ARM_HAVE_TLS_REGISTER := false

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_PROVIDES_LIBRIL := true
BOARD_USES_LEGACY_RIL := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOOTLOADER_BOARD_NAME := v9
TARGET_SPECIFIC_HEADER_PATH := device/zte/v9/include

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/v9/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/v9/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/zte/v9/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/zte/v9/ramdisk/fstab.v9
RECOVERY_FSTAB_VERSION := 2
COMMON_GLOBAL_CFLAGS += -DRECOVERY_CANT_USE_CONFIG_EXT4_FS_XATTR
SKIP_SET_METADATA := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/zte/zte-kernel-msm7x27
TARGET_KERNEL_CONFIG := cyanogen_v9_defconfig
BOARD_KERNEL_BASE := 0x02600000
BOARD_KERNEL_CMDLINE := androidboot.hardware=v9 console=null

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WLAN_DEVICE := ath6kl
WIFI_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME := ar6000
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WEXT_NO_COMBO_SCAN := false
WIFI_DRIVER_LOADER_DELAY := 2000000

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_QCOM_VOIP_ENABLED := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/v9/bluetooth

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_QCOM_LEGACY_OMX := true
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Graphics
BOARD_EGL_CFG := device/zte/v9/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
#TARGET_NO_HW_OVERLAY := true    # unused AFAICT
#BOARD_EGL_NEEDS_LEGACY_FB := true
#BOARD_EGL_SKIP_FIRST_DEQUEUE := true  # instead of LEGACY_FB
#COMMON_GLOBAL_CFLAGS += -DANCIENT_GL
#COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
#COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
#TARGET_NO_HW_VSYNC := false
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true

# Fonts
SMALLER_FONT_FOOTPRINT := true

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DZTE_CAMERA_HARDWARE
BOARD_CAMERA_NO_UNWANTED_MSG := true

# Audio
MINIMAL_NEWWAVELABS := true

# Install xattrs
USE_SET_METADATA := false

# Dalvik
TARGET_ARCH_LOWMEM := true

## FM Radio
#BOARD_USES_STE_FMRADIO := true
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DSTE_FM -DQCOM_FM_ENABLED

# OTA script extras file (build/tools/releasetools)
TARGET_OTA_EXTRAS_FILE := device/zte/v9/releasetools-extras.txt

# cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "recovery"
# mtd1: 00500000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 02580000 00020000 "cache"
# mtd5: 0dc00000 00020000 "system"
# mtd6: 0a280000 00020000 "userdata"
# mtd7: 01500000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0dc00000 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072

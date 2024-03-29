# Device config ASUS Zenfone Go ZC500TG

DEVICE_PATH := device/asus/ZC500TG
VENDOR_PATH := vendor/asus/ZC500TG

TARGET_BOARD_PLATFORM := mt6580

USE_CAMERA_STUB := true

# Environment
TARGET_LDPRELOAD += libxlog.so

# CPU
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true

# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_NO_BOOTLOADER := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true


ANDROID_COMPILE_WITH_JACK := true

# disable build zip
BLOCK_BASED_OTA := false

# Board **
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
TARGET_ARCH_VARIANT_CPU := cortex-a7

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6580

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# MTK Hardware need patch
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
##COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING
##COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc
BOARD_USES_MTK_AUDIO := true

# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2634022912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12538347520
BOARD_CACHEIMAGE_PARTITION_SIZE := 553648128
BOARD_CACHEIMAGE_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
##COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
##COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# ano ba to?
TARGET_KMODULES := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x80f00000 --tags_offset 0x0e000000 --board R09
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
KERNEL_BIN := $(DEVICE_PATH)/prebuilt/kernel

# CM Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6580
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# Offline charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_HAL_STATIC_LIBRARIES := libhealthd.mt6580
BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(DEVICE_PATH)/charger/images

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := $(DEVICE_PATH)/config/egl.cfg

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# CyanogenMod Hardware Hooks
BOARD_HARDWARE_CLASS := $(DEVICE_PATH)/cmhw/

# RIL
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

# FMRadio check if there
MTK_FM_SUPPORT := true
MTK_FM_RX_SUPPORT := true
MTK_FM_CHIP := MT6580_FM
FM_LIB_BUILD_MT6580 := yes

#BOARD_GPS_LIBRARIES := true
#BOARD_MEDIATEK_USES_GPS := true
#TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Selinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Consumerir
MTK_IRTX_SUPPORT := true

# build old-style zip files (required for ota updater)
BLOCK_BASED_OTA := false

TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

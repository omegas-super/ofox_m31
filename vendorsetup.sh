# normal seting
export OF_USE_GREEN_LED=0
export FOX_USE_NANO_EDITOR=0
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_SKIP_FBE_DECRYPTION=0
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"
export OF_FLASHLIGHT_ENABLE=0
export ALLOW_MISSING_DEPENDENCIES=true
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export FOX_ASH_IS_BASH=1
export FOX_USE_XZ_UTILS=0
export OF_ENABLE_LPTOOLS=1
export OF_PATCH_AVB20=1
# export FOX_USE_SPECIFIC_MAGISK_ZIP=~/fox_12.1/device/samsung/universal9611/magisk/magisk.zip
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1


# maintanier thingys
export FOX_MAINTAINER_PATCH_VERSION=1
export OF_MAINTAINER=temp

#Scaling fix
#m31
#export OF_SCREEN_H=2340
#export OF_STATUS_H=82
export OF_STATUS_INDENT_LEFT=60
export OF_STATUS_INDENT_RIGHT=60
export OF_CLOCK_POS=1
#a51 and m31
export OF_SCREEN_H=2340
export OF_STATUS_H=100
#m21
#export OF_SCREEN_H=2340
#export OF_STATUS_H=85
#gta4xl
#export OF_STATUS_H=0
#export OF_SCREEN_H=2000

# --- ramdisk budget + Exynos dynamic-partition bootloop fix (2026-11-27) ---
# Measured on device: 14.9 MB ramdisk boots, 17.4 MB loops. The wiki documents
# FOX_DYNAMIC_SAMSUNG_FIX as a workaround for a Samsung Exynos dynamic-partition
# bug that causes a BOOTLOOP on encountering certain binaries, and it strips
# bash/nano/aapt. That is a better explanation than a hard size wall, so it is
# tested here together with the documented size reductions.
# disabled: also strips binaries; test separately once a build reaches the UI
#export FOX_DYNAMIC_SAMSUNG_FIX=1
export OF_REMOVE_AAPT=1
export FOX_REMOVE_ZIP_BINARY=1
export FOX_USE_NANO_EDITOR=0
export FOX_USE_XZ_UTILS=0
export OF_USE_LZMA_COMPRESSION=1
export OF_SKIP_EXTRA_LANGUAGES=1
# FOX_DRASTIC_SIZE_REDUCTION must come AFTER every other export
# disabled: DRASTIC reduction strips init dependencies and is the prime suspect for the hang at starting
#export FOX_DRASTIC_SIZE_REDUCTION=1
# Format Data must also wipe the FBE keys, otherwise stale keys stay in /metadata
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1

# Cloning required repositories for making rum:

# Kernel Source:
git clone  https://github.com/StimLuks87/kernel_oplus_mt6785 kernel/realme/mt6785

# Vendor Source:
git clone https://github.com/StimLuks87/vendor_device_oplus_ossi.git vendor/realme/salaa
unzip vendor/realme/salaa/radio/md1img.zip -d vendor/realme/salaa/radio && rm vendor/realme/salaa/radio/md1img.zip
unzip vendor/realme/salaa/proprietary/odm/lib64/libstfaceunlockppl.zip -d vendor/realme/salaa/proprietary/odm/lib64 && rm vendor/realme/salaa/proprietary/odm/lib64/libstfaceunlockppl.zip

# Hardware of Mediatek and Oplus:
git clone https://github.com/Pixelage-x-Spartan/hardware_oplus hardware/oplus
git clone https://github.com/The-Pixel-Project/hardware_mediatek hardware/mediatek

# Mediatek SEPolicy VNDR:
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr

# Lineage SEPolicy:
git clone https://github.com/LineageOS/android_device_lineage_sepolicy device/lineage/sepolicy

# ViPER4AndroidFX:
git clone https://github.com/StimLuks87/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

# VancedManager
git clone https://github.com/StimLuks87/VancedManager packages/apps/VancedManager

# CameraGo
unzip device/realme/salaa/CameraGo/CameraGo.zip -d device/realme/salaa/CameraGo && rm device/realme/salaa/CameraGo/CameraGo.zip

# Make the build faster using ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true

# Disable and stop systemd-oomd service.
systemctl disable --now systemd-oomd

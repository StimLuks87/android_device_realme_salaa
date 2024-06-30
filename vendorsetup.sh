# Cloning required repositories for making rum:

# Kernel Source:
#git clone https://github.com/StimLuks87/psionic_kernel_realme_mt6785  kernel/realme/mt6785


# Hardware of Mediatek and Oplus:
git clone https://github.com/LineageOS/android_hardware_oplus hardware/oplus
#git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek

# Lineage SEPolicy:
#git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr

# ViPER4AndroidFX:
git clone https://github.com/StimLuks87/VIPER_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

# GoogleCameraGo
rm -rf packages/apps/GoogleCameraGo
if [ ! -d "packages/apps/GoogleCameraGo" ]; then
    mkdir -p packages/apps/GoogleCameraGo
    git clone https://github.com/StimLuks87/GoogleCameraGo.git -b android-14 packages/apps/GoogleCameraGo
unzip packages/apps/GoogleCameraGo/GoogleCameraGo.zip -d packages/apps/GoogleCameraGo && rm packages/apps/GoogleCameraGo/GoogleCameraGo.zip
fi

# Make the build faster using ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true

# Disable and stop systemd-oomd service.
systemctl disable --now systemd-oomd

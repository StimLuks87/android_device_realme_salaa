echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Mediatek SEpolicy_vndr [1/7]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone  https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr
fi

echo 'Cloning Hardware Mediatek [2/7]'
# Hardware Mediatek
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-21 hardware/mediatek 
fi

echo 'Cloning Hardware Oplus [3/7]'
# Hardware Oplus
rm -rf hardware/oplus
if [ ! -d "hardware/oplus" ]; then
    mkdir -p hardware/oplus
    git clone https://github.com/Evolution-XYZ-Devices/hardware_oplus.git -b udc hardware/oplus
fi

echo 'Cloning ViPER4AndroidFX [4/7]'
# ViPER4AndroidFX
rm -rf packages/apps/ViPER4AndroidFX
if [ ! -d "packages/apps/ViPER4AndroidFX" ]; then
    mkdir -p packages/apps/ViPER4AndroidFX
    git clone https://github.com/StimLuks87/VIPER_apps_ViPER4AndroidFX.git -b udc packages/apps/ViPER4AndroidFX
fi

echo 'Cloning GoogleCameraGo [5/7]'
# GoogleCameraGo
rm -rf packages/apps/GoogleCameraGo
if [ ! -d "packages/apps/GoogleCameraGo" ]; then
    mkdir -p packages/apps/GoogleCameraGo
    git clone https://github.com/StimLuks87/GoogleCameraGo.git -b android-14 packages/apps/GoogleCameraGo
unzip packages/apps/GoogleCameraGo/GoogleCameraGo.zip -d packages/apps/GoogleCameraGo && rm packages/apps/GoogleCameraGo/GoogleCameraGo.zip
fi

echo 'Completed, Now proceeding to lunch'

CyanogenMod 10 device configuration for ZTE V9.

http://www.modaco.com/topic/359832-cyanogenmod-10.1

How to build:
-------------

Initialize CyanogenMod repo:

    repo init -u git://github.com/CyanogenMod/android.git -b jellybean
    curl -L -o .repo/local_manifests/manifest_zte_v9.xml -O -L https://raw.github.com/plaguedbypenguins/android_local_manifest/cm-10/manifest_zte_v9.xml
    repo sync

Apply patches:

    cd device/zte/v9/patches
    sh apply.sh

Compile:

    . build/envsetup.sh && lunch cm_v9-userdebug
    make bacon -j8


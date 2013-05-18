CyanogenMod 10 device configuration for ZTE V9.

http://www.modaco.com/topic/362668-devrom-cyanogenmod-10-android-412-for-zte-v9/

How to build:
-------------

Initialize CyanogenMod repo:

    repo init -u git://github.com/CyanogenMod/android.git -b jellybean
    curl -L -o .repo/local_manifests/manifest_zte_v9.xml -O -L https://raw.github.com/plaguedbypenguins/android_local_manifest/cm-10/manifest_zte_v9.xml
    repo sync

Apply patches:

    cd device/zte/v9/patches
    sh apply.sh
    cd device/zte/v9/patches_v9
    sh apply.sh

Compile:

    export PATH=/some/path/to/sun/java/1.6/bin:$PATH
    . build/envsetup.sh && lunch cm_v9-userdebug
    make bacon -j8


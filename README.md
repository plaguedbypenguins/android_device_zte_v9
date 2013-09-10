CyanogenMod 10.2 device configuration for ZTE V9.

see http://www.modaco.com/topic/365005-devrom-cyanogenmod-102-android-43-for-zte-v9/

How to build:
-------------

Initialize repo:

    repo init -u git://github.com/androidarmv6/android.git -b cm-10.2
    curl -L -o .repo/local_manifests/manifest_zte_v9.xml -O -L https://raw.github.com/plaguedbypenguins/android_local_manifest/cm-10.2/manifest_zte_v9.xml
    repo sync

Apply patches:

    cd device/zte/v9/patches
    ./apply.sh

Compile:

    . build/envsetup.sh && brunch v9
    make bacon -j8


CyanogenMod 11.0 device configuration for ZTE V9.

see http://www.modaco.com/topic/367844-devrom-cyanogenmod-110-android-442-for-zte-v9/

How to build:
-------------

Initialize repo:

    repo init -u git://github.com/androidarmv6/android.git -b cm-11.0
    curl -L -o .repo/local_manifests/manifest_zte_v9.xml -O -L https://raw.github.com/plaguedbypenguins/android_local_manifest/cm-11.0/manifest_zte_v9.xml
    repo sync

Apply patches:

    cd device/zte/v9/patches
    ./apply.sh

Compile:

    . build/envsetup.sh && brunch v9
    make bacon -j8


CyanogenMod 10 device configuration for ZTE V9.

http://www.modaco.com/topic/360395-

How to build:
-------------

Initialize CyanogenMod repo:

    repo init -u git://github.com/CyanogenMod/android.git -b jellybean
    repo sync

Add the following to your cm10/.repo/local_manifests/cm10_v9.xml and repo sync again:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <project name="grigorig/android_device_zte_v9" path="device/zte/v9" revision="jellybean" />
        <project name="grigorig/proprietary_vendor_zte" path="vendor/zte" revision="jellybean" />
        <project name="grigorig/zte-kernel-msm7x27" path="kernel/zte/zte-kernel-msm7x27" revision="jellybean" />
        <project name="grigorig/android_packages_apps_Effem" path="packages/apps/Effem" revision="master" />
    </manifest>

Apply patches:

    cd device/zte/v9/patches
    sh apply.sh

Compile:

    . build/envsetup.sh && lunch cm_v9-userdebug
    make bacon -j8


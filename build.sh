#!/bin/bash

# initialize the ROM repo
repo init -u https://github.com/PixelOS-AOSP/android_manifest.git -b sixteen-qpr2 --git-lfs --depth=1

# clone my manifest
rm -rf .repo/local_manifests
git clone https://github.com/maurice-playground/android_local_manifest -b knyprjkt-b .repo/local_manifests

# sync
bash /opt/crave/resync.sh

# prep
source build/envsetup.sh
breakfast spes userdebug
m pixelos

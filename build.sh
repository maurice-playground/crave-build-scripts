#!/bin/bash

# initialize the ROM repo
repo init -u https://github.com/AxionAOSP/android.git -b lineage-23.2 --git-lfs --depth=1

# clone my manifest
rm -rf .repo/local_manifests
git clone https://github.com/maurice-playground/android_local_manifest -b knyprjkt-b .repo/local_manifests

# sync
bash /opt/crave/resync.sh

# prep
source build/envsetup.sh
axion spes gms
ax -br # bacon

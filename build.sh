# initialize the ROM repo
repo init -u https://github.com/Lunaris-AOSP/android -b 16.2 --git-lfs --depth=1

# clone my manifest
rm -rf .repo/local_manifests
git clone https://github.com/maurice-playground/android_local_manifest -b lunaris .repo/local_manifests

# sync
bash /opt/crave/resync.sh

# prep
source build/envsetup.sh
lunch lineage_spes-bp4a-userdebug
m bacon

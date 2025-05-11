rm -rf .repo/local_manifests ; \
rm -rf {device,vendor,kernel,hardware}/xiaomi ; \
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-XYZ/manifest -b vic-qpr1 --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/Failedmush/local_manifests_renoirs.git -b main .repo/local_manifests && \
/opt/crave/resync.sh && \
export BUILD_USERNAME=Failedmush ; \
export BUILD_HOSTNAME=crave ; \
export TARGET_INCLUDE_GAPPS=false
source build/envsetup.sh && \
lunch lineage_apollo-bp1a-userdebug && \
m evolution > /dev/null && \

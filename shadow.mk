#
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This is the product configuration for a generic Motorola Defy (jordan)
#
device_path = device/moto/shadow

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, device/moto/shadow-common/device.mk)

## (3)  Finally, the least specific parts, i.e. the non-CDMA-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	ro.url.safetylegal=http://www.motorola.com/staticfiles/Support/legal/?model=MB525 \
	ro.media.capture.maxres=8m \
	ro.media.capture.flash=led \
	ro.media.capture.flashMinV=3500000 \
	ro.media.capture.torchIntensity=25 \
	ro.media.capture.classification=classE \
	ro.media.capture.flip=horizontalandvertical \
	ro.media.capture.fast.fps=4 \
	ro.media.capture.slow.fps=60 \
	ro.media.capture.useDFR=1 \
	ro.media.capture.shuttertone=1 \
	ro.media.capture.noSensorLSC=1 \
	ro.media.sensor.orient=90 \
	ro.media.panorama.defres=2048x1536 \
	ro.media.panorama.frameres=1280x720

PRODUCT_COPY_FILES += \
	${device_path}/media_profiles.xml:system/etc/media_profiles.xml \
	${device_path}/devtree:system/bootstrap/2nd-boot/devtree \

#
# Copyright (C) 2017 The LineageOS Project
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

# Check for the target product.
ifeq (pa_riva,$(TARGET_PRODUCT))

# Set bootanimation to 720p display.
TARGET_BOOT_ANIMATION_RES := 720

# Most advanced platform features, first.
TARGET_WANTS_EXTENDED_DPM_PLATFORM := true

# Inherit from our common CAF device tree.
include device/qcom/common/common.mk

# Inherit the device configuration itself.
$(call inherit-product, device/xiaomi/riva/full_riva.mk)

PRODUCT_DEVICE := riva
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5A
PRODUCT_NAME := pa_riva
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="riva-user 7.1.2 N2G47H V9.5.6.0.NCKMIFA release-keys"

# Set BUILD_FINGERPRINT variable
BUILD_FINGERPRINT := "Xiaomi/riva/riva:7.1.2/N2G47H/V9.5.6.0.NCKMIFA:user/release-keys"

# Paranoid Android platform
include vendor/pa/main.mk

endif

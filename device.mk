#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd stuff
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mtk \
    android.hardware.fastboot@1.0-impl-mtk.recovery \
    android.hardware.fastboot@1.1-impl-mock \
    android.hardware.fastboot@1.1-impl-mock.recovery \
    fastbootd

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-mtkimpl.recovery \
    android.hardware.boot@1.0-mtkimpl \
    bootctl

PRODUCT_PACKAGES_DEBUG += \
    bootctrl.mt6889

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Drm
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4

# Keystore
PRODUCT_PACKAGES += \
    android.system.keystore2

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1
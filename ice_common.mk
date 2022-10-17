#
# Copyright (C) 2022 Project ICE
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/gs201/overlay-ice

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/gs201/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    packages/modules/Bluetooth/android/app

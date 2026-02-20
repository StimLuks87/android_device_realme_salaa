/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define PRIVATE_SENSOR_TYPE(type) (SENSOR_TYPE_DEVICE_PRIVATE_BASE + type)

#define VIRTUAL_SENSORS_DEVICE "/dev/m_virtual_sensor_misc"
#define VIRTUAL_SENSORS_SYSFS "/sys/class/oplus_sensor/m_virtual_sensor_misc/virtual_sensor"

#define VIRTUAL_SENSORS_ACTIVE VIRTUAL_SENSORS_SYSFS "active"
#define VIRTUAL_SENSORS_BATCH VIRTUAL_SENSORS_SYSFS "batch"
#define VIRTUAL_SENSORS_DEVNUM VIRTUAL_SENSORS_SYSFS "devnum"
#define VIRTUAL_SENSORS_FLUSH VIRTUAL_SENSORS_SYSFS "flush"

enum {
    SENSOR_PICKUP_DETECT,
};

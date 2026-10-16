/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ohos_app_cangjie_entry_test

import std.unittest.testmacro.*
import std.math.*
import kit.SensorServiceKit.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.*
import kit.PerformanceAnalysisKit.Hilog

extend Sensor {
    public operator func ==(other: Sensor): Bool {
        this.sensorId == other.sensorId && this.sensorName == other.sensorName && this.vendorName == other.vendorName &&
            this.firmwareVersion == other.firmwareVersion && this.hardwareVersion == other.hardwareVersion &&
            this.maxRange == other.maxRange && this.minSamplePeriod == other.minSamplePeriod && this.maxSamplePeriod == other
            .maxSamplePeriod && this.precision == other.precision && this.power == other.power
    }

    public operator func !=(other: Sensor): Bool {
        !(this == other)
    }
}

@Test
class TestSensorGetSensorList {
    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorGetGeomagneticInfo_1200
     * @tc.name      : test_get_sensor_list_basic_function_success
     * @tc.desc      : test Sensor test_get_sensor_list_basic_function_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_sensor_list_basic_function_success(): Unit {
        sleepFor(1.second)
        let sensors = getSensorList()
        @Expect(sensors.size > 0)
        for (sensor in sensors) {
            @Expect(sensor.sensorName.size >= 0)
            @Expect(sensor.vendorName.size >= 0)
            @Expect(sensor.firmwareVersion.size >= 0)
            @Expect(sensor.hardwareVersion.size >= 0)
            @Expect(sensor.sensorId >= 0)
            @Expect(sensor.maxRange == sensor.maxRange)
            @Expect(sensor.maxSamplePeriod >= sensor.minSamplePeriod)
            @Expect(sensor.precision == sensor.precision)
            @Expect(sensor.power == sensor.power)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorGetGeomagneticInfo_1300
     * @tc.name      : test_get_single_sensor_unsupported_sensor_throws_exception
     * @tc.desc      : test Sensor test_get_single_sensor_unsupported_sensor_throws_exception
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_single_sensor_unsupported_sensor_throws_exception(): Unit {
        let sensors = getSensorList()
        if (sensors.size == 0) {
            return
        }
        let sensorTypes = [Accelerometer, Gyroscope, AmbientLight, MagneticField, Barometer, Hall, Proximity, Humidity,
            Orientation, Gravity, LinearAccelerometer, RotationVector, AmbientTemperature, MagneticFieldUncalibrated,
            GyroscopeUncalibrated, SignificantMotion, PedometerDetection, Pedometer, HeartRate, WearDetection,
            AccelerometerUncalibrated]
        for (sensorType in sensorTypes) {
            var supported = false
            for (sensor in sensors) {
                if (sensor.sensorId == sensorType.getValue()) {
                    supported = true
                    break
                }
            }
            if (supported) {
                try {
                    let actual = getSingleSensor(sensorType)
                    @Expect(actual.sensorId, sensorType.getValue())
                } catch (e: BusinessException) {
                    @Expect(false)
                }
            } else {
                try {
                    getSingleSensor(sensorType)
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 14500102)
                }
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorGetGeomagneticInfo_1400
     * @tc.name      : test_get_single_sensor_supported_sensor_fields_success
     * @tc.desc      : test Sensor test_get_single_sensor_supported_sensor_fields_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_single_sensor_supported_sensor_fields_success(): Unit {
        let target = Accelerometer
        if (!hasSensor(target)) {
            return
        }
        let actual = getSingleSensor(target)
        @Expect(actual.sensorId, target.getValue())
        @Expect(actual == actual)
        @Expect(!(actual != actual))
        @Expect(actual.sensorName.size >= 0)
        @Expect(actual.vendorName.size >= 0)
        @Expect(actual.firmwareVersion.size >= 0)
        @Expect(actual.hardwareVersion.size >= 0)
        @Expect(actual.maxSamplePeriod >= actual.minSamplePeriod)
    }
}

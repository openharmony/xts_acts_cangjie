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

import kit.SensorServiceKit.*
import std.unittest.*
import std.unittest.testmacro.*

@Test
class TestSensorParameterCoverage {
    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorParameterCoverage_0100
     * @tc.name      : test_sensor_id_enum_and_methods_success
     * @tc.desc      : test_sensor_id_enum_and_methods_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sensor_id_enum_and_methods_success(): Unit {
        let ids = [Accelerometer, Gyroscope, AmbientLight, MagneticField, Barometer, Hall,
            Proximity, Humidity, Orientation, Gravity, LinearAccelerometer, RotationVector,
            AmbientTemperature, MagneticFieldUncalibrated, GyroscopeUncalibrated,
            SignificantMotion, PedometerDetection, Pedometer, HeartRate, WearDetection,
            AccelerometerUncalibrated]
        for (id in ids) {
            @Expect(id.getValue() >= 0)
            @Expect(id.toString().size > 0)
            @Expect(id == id)
            @Expect(!(id != id))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorParameterCoverage_0200
     * @tc.name      : test_interval_option_enum_and_methods_success
     * @tc.desc      : test_interval_option_enum_and_methods_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_interval_option_enum_and_methods_success(): Unit {
        let modes = [NormalMode, GameMode, UIMode, SensorNumber(100000000)]
        for (mode in modes) {
            @Expect(mode.toString().size > 0)
            @Expect(mode == mode)
            @Expect(!(mode != mode))
        }
        @Expect(NormalMode != GameMode)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorParameterCoverage_0300
     * @tc.name      : test_sensor_accuracy_enum_and_methods_success
     * @tc.desc      : test_sensor_accuracy_enum_and_methods_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sensor_accuracy_enum_and_methods_success(): Unit {
        let values = [AccuracyUnreliable, AccuracyLow, AccuracyMedium, AccuracyHigh]
        for (value in values) {
            @Expect(value.toString().size > 0)
            @Expect(value == value)
            @Expect(!(value != value))
        }
        @Expect(AccuracyLow != AccuracyHigh)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorParameterCoverage_0400
     * @tc.name      : test_sensor_info_param_defaults_and_explicit_values_success
     * @tc.desc      : test_sensor_info_param_defaults_and_explicit_values_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sensor_info_param_defaults_and_explicit_values_success(): Unit {
        let defaults = SensorInfoParam()
        @Expect(defaults.deviceId, -1)
        @Expect(defaults.sensorIndex, 0)
        let explicit = SensorInfoParam(deviceId: 0, sensorIndex: 1)
        @Expect(explicit.deviceId, 0)
        @Expect(explicit.sensorIndex, 1)
        let optionsDefault = Options()
        @Expect(optionsDefault.interval == NormalMode)
        let optionsExplicit = Options(interval: GameMode, sensorInfoParam: explicit)
        @Expect(optionsExplicit.interval == GameMode)
        match (optionsExplicit.sensorInfoParam) {
            case Some(value) => @Expect(value.deviceId, 0)
            case None => @Expect(false)
        }
    }
}

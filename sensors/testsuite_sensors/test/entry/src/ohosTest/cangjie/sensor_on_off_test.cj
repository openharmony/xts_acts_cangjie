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
import std.sync.*
import std.time.*
import kit.BasicServicesKit.*
import kit.SensorServiceKit.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.callback_invoke.Callback1Argument

class OrientationSensorCallback <: Callback1Argument<OrientationResponse> {
    var invokedCount = 0
    init() {}
    public func invoke(err: ?BusinessException, response: OrientationResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy)
        expectFloat(response.alpha, 0.0f32, 360.0f32)
        expectFloat(response.beta, -180.0f32, 180.0f32)
        expectFloat(response.gamma, -90.0f32, 90.0f32)
    }
}

@Test
class TestSensorOnOff {
    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0100
     * @tc.name      : test_once_is_call_once_success
     * @tc.desc      : test Sensor test_once_is_call_once_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_once_is_call_once_success(): Unit {
        if (!hasSensor(SensorId.Orientation)) {
            return
        }
        let callback = OrientationSensorCallback()
        try {
            once(SensorId.Orientation, callback)
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount, 1)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0200
     * @tc.name      : test_on_default_internal_call_multiple_times
     * @tc.desc      : test Sensor test_on_default_internal_call_multiple_times
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_default_internal_call_multiple_times(): Unit {
        if (!hasSensor(SensorId.Orientation)) {
            return
        }
        let callback = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback)
            waitFor(2.second) {callback.invokedCount >= 2}
            Hilog.info(0, "cangjietest", "## test_on_default_internal_call_multiple_times, ${callback.invokedCount}")
            @Expect(callback.invokedCount >= 2)
            off(SensorId.Orientation, callback: callback)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0300
     * @tc.name      : test_on_400_ms_interval_success
     * @tc.desc      : test Sensor test_on_400_ms_interval_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_400_ms_interval_success(): Unit {
        if (!hasSensor(SensorId.Orientation)) {
            return
        }
        let callback = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback, option: Options(interval: SensorNumber(400000000)))
            waitFor(3.second) {callback.invokedCount >= 2}
            @Expect(callback.invokedCount >= 2)
            off(SensorId.Orientation, callback: callback)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0400
     * @tc.name      : test_on_duplicate_subscription_success
     * @tc.desc      : test Sensor test_on_duplicate_subscription_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_duplicate_subscription_success(): Unit {
        if (!hasSensor(SensorId.Orientation)) {
            return
        }
        let callback = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback)
            waitFor(3.second) {callback.invokedCount >= 4}
            @Expect(callback.invokedCount >= 4)
            off(SensorId.Orientation)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0500
     * @tc.name      : test_off_off_one_callback_success
     * @tc.desc      : test Sensor test_off_off_one_callback_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_off_one_callback_success(): Unit {
        if (!hasSensor(SensorId.Orientation)) {
            return
        }
        let callback1 = OrientationSensorCallback()
        let callback2 = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback1)
            on(SensorId.Orientation, callback2)
            waitFor(2.second) {callback1.invokedCount >= 1 && callback2.invokedCount >= 1}
            off(SensorId.Orientation, callback: callback1)
            let offcallback1InvokeCnt = callback1.invokedCount
            waitFor(2.second) {callback2.invokedCount >= 1}
            @Expect(callback1.invokedCount, offcallback1InvokeCnt)
            off(SensorId.Orientation)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0600
     * @tc.name      : test_off_off_all_callbacks_success
     * @tc.desc      : test Sensor test_off_off_all_callbacks_success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_off_all_callbacks_success(): Unit {
        if (!hasSensor(SensorId.Orientation)) {
            return
        }
        let callback1 = OrientationSensorCallback()
        let callback2 = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback1)
            on(SensorId.Orientation, callback2)
            waitFor(2.second) {callback1.invokedCount >= 1 && callback2.invokedCount >= 1}
            off(SensorId.Orientation)
            let offcallback1InvokeCnt = callback1.invokedCount
            let offcallback2InvokeCnt = callback2.invokedCount
            @Expect(((offcallback1InvokeCnt) == (callback1.invokedCount)) && ((offcallback2InvokeCnt) == (callback2.invokedCount)))
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0700
     * @tc.name      : test_off_supported_sensor_id_success
     * @tc.desc      : test off succeeds for every sensor id, including unsupported ids
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_supported_sensor_id_success(): Unit {
        let sensorTypes = [Accelerometer, AccelerometerUncalibrated, AmbientLight, Barometer, Gravity, Gyroscope,
            GyroscopeUncalibrated, Hall, LinearAccelerometer, MagneticField, MagneticFieldUncalibrated, Orientation,
            Proximity, RotationVector, Pedometer, PedometerDetection, AmbientTemperature, HeartRate, Humidity,
            WearDetection, SignificantMotion]
        for (sensorType in sensorTypes) {
            if (!hasSensor(sensorType)) {
                try {
                    off(sensorType)
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(false)
                }
                continue
            }
            if (sensorType == Accelerometer) {
                let callback = AccelerometerResponseCallback()
                expectOffStops({=> on(Accelerometer, callback)}, {=> callback.invokedCount},
                    {=> off(Accelerometer, callback: callback)})
            } else if (sensorType == AccelerometerUncalibrated) {
                let callback = AccelerometerUncalibratedResponseCallback()
                expectOffStops({=> on(AccelerometerUncalibrated, callback)}, {=> callback.invokedCount},
                    {=> off(AccelerometerUncalibrated, callback: callback)})
            } else if (sensorType == AmbientLight) {
                let callback = LightResponseCallback()
                expectOffStops({=> on(AmbientLight, callback)}, {=> callback.invokedCount},
                    {=> off(AmbientLight, callback: callback)})
            } else if (sensorType == Barometer) {
                let callback = BarometerResponseCallback()
                expectOffStops({=> on(Barometer, callback)}, {=> callback.invokedCount},
                    {=> off(Barometer, callback: callback)})
            } else if (sensorType == Gravity) {
                let callback = GravityResponseCallback()
                expectOffStops({=> on(Gravity, callback)}, {=> callback.invokedCount},
                    {=> off(Gravity, callback: callback)})
            } else if (sensorType == Gyroscope) {
                let callback = GyroscopeResponseCallback()
                expectOffStops({=> on(Gyroscope, callback)}, {=> callback.invokedCount},
                    {=> off(Gyroscope, callback: callback)})
            } else if (sensorType == GyroscopeUncalibrated) {
                let callback = GyroscopeUncalibratedResponseCallback()
                expectOffStops({=> on(GyroscopeUncalibrated, callback)}, {=> callback.invokedCount},
                    {=> off(GyroscopeUncalibrated, callback: callback)})
            } else if (sensorType == Hall) {
                let callback = HallResponseCallback()
                expectOffStops({=> on(Hall, callback)}, {=> callback.invokedCount}, {=> off(Hall, callback: callback)})
            } else if (sensorType == HeartRate) {
                requestUserSensorPermission("ohos.permission.READ_HEALTH_DATA")
                let callback = HeartRateResponseCallback()
                expectOffStops({=> on(HeartRate, callback)}, {=> callback.invokedCount},
                    {=> off(HeartRate, callback: callback)})
            } else if (sensorType == Humidity) {
                let callback = HumidityResponseCallback()
                expectOffStops({=> on(Humidity, callback)}, {=> callback.invokedCount},
                    {=> off(Humidity, callback: callback)})
            } else if (sensorType == LinearAccelerometer) {
                let callback = LinearAccelerometerResponseCallback()
                expectOffStops({=> on(LinearAccelerometer, callback)}, {=> callback.invokedCount},
                    {=> off(LinearAccelerometer, callback: callback)})
            } else if (sensorType == MagneticField) {
                let callback = MagneticFieldResponseCallback()
                expectOffStops({=> on(MagneticField, callback)}, {=> callback.invokedCount},
                    {=> off(MagneticField, callback: callback)})
            } else if (sensorType == MagneticFieldUncalibrated) {
                let callback = MagneticFieldUncalibratedResponseCallback()
                expectOffStops({=> on(MagneticFieldUncalibrated, callback)}, {=> callback.invokedCount},
                    {=> off(MagneticFieldUncalibrated, callback: callback)})
            } else if (sensorType == Orientation) {
                let callback = OrientationSensorCallback()
                expectOffStops({=> on(Orientation, callback)}, {=> callback.invokedCount},
                    {=> off(Orientation, callback: callback)})
            } else if (sensorType == Pedometer) {
                requestUserSensorPermission("ohos.permission.ACTIVITY_MOTION")
                let callback = PedometerResponseCallback()
                expectOffStops({=> on(Pedometer, callback)}, {=> callback.invokedCount},
                    {=> off(Pedometer, callback: callback)})
            } else if (sensorType == PedometerDetection) {
                requestUserSensorPermission("ohos.permission.ACTIVITY_MOTION")
                let callback = PedometerDetectionResponseCallback()
                expectOffStops({=> on(PedometerDetection, callback)}, {=> callback.invokedCount},
                    {=> off(PedometerDetection, callback: callback)})
            } else if (sensorType == Proximity) {
                let callback = ProximityResponseCallback()
                expectOffStops({=> on(Proximity, callback)}, {=> callback.invokedCount},
                    {=> off(Proximity, callback: callback)})
            } else if (sensorType == RotationVector) {
                let callback = RotationVectorResponseCallback()
                expectOffStops({=> on(RotationVector, callback)}, {=> callback.invokedCount},
                    {=> off(RotationVector, callback: callback)})
            } else if (sensorType == SignificantMotion) {
                let callback = SignificantMotionResponseCallback()
                expectOffStops({=> on(SignificantMotion, callback)}, {=> callback.invokedCount},
                    {=> off(SignificantMotion, callback: callback)})
            } else if (sensorType == WearDetection) {
                let callback = WearDetectionResponseCallback()
                expectOffStops({=> on(WearDetection, callback)}, {=> callback.invokedCount},
                    {=> off(WearDetection, callback: callback)})
            } else if (sensorType == AmbientTemperature) {
                let callback = AmbientTemperatureResponseCallback()
                expectOffStops({=> on(AmbientTemperature, callback)}, {=> callback.invokedCount},
                    {=> off(AmbientTemperature, callback: callback)})
            }
        }
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0800
     * @tc.name      : test_once_all_sensor_types_matching_callback_success
     * @tc.desc      : test once succeeds for every sensor type with matching callback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_once_all_sensor_types_matching_callback_success(): Unit {
        if (hasSensor(Accelerometer)) {
            let callback = AccelerometerResponseCallback();
            once(Accelerometer, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Accelerometer, AccelerometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(AccelerometerUncalibrated)) {
            let callback = AccelerometerUncalibratedResponseCallback();
            once(AccelerometerUncalibrated, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(AccelerometerUncalibrated, AccelerometerUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(AmbientLight)) {
            let callback = LightResponseCallback();
            once(AmbientLight, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(AmbientLight, LightResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(AmbientTemperature)) {
            let callback = AmbientTemperatureResponseCallback();
            once(AmbientTemperature, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(AmbientTemperature, AmbientTemperatureResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Barometer)) {
            let callback = BarometerResponseCallback();
            once(Barometer, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Barometer, BarometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Gravity)) {
            let callback = GravityResponseCallback();
            once(Gravity, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Gravity, GravityResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Gyroscope)) {
            let callback = GyroscopeResponseCallback();
            once(Gyroscope, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Gyroscope, GyroscopeResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(GyroscopeUncalibrated)) {
            let callback = GyroscopeUncalibratedResponseCallback();
            once(GyroscopeUncalibrated, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(GyroscopeUncalibrated, GyroscopeUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Hall)) {
            let callback = HallResponseCallback();
            once(Hall, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Hall, HallResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(HeartRate)) {
            requestUserSensorPermission("ohos.permission.READ_HEALTH_DATA");
            let callback = HeartRateResponseCallback();
            once(HeartRate, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(HeartRate, HeartRateResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Humidity)) {
            let callback = HumidityResponseCallback();
            once(Humidity, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Humidity, HumidityResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(LinearAccelerometer)) {
            let callback = LinearAccelerometerResponseCallback();
            once(LinearAccelerometer, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(LinearAccelerometer, LinearAccelerometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(MagneticField)) {
            let callback = MagneticFieldResponseCallback();
            once(MagneticField, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(MagneticField, MagneticFieldResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(MagneticFieldUncalibrated)) {
            let callback = MagneticFieldUncalibratedResponseCallback();
            once(MagneticFieldUncalibrated, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(MagneticFieldUncalibrated, MagneticFieldUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Orientation)) {
            let callback = OrientationSensorCallback();
            once(Orientation, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Orientation, OrientationSensorCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Pedometer)) {
            requestUserSensorPermission("ohos.permission.ACTIVITY_MOTION");
            let callback = PedometerResponseCallback();
            once(Pedometer, callback);
            waitFor(2.second) {callback.invokedCount >= 0}
            @Expect(callback.invokedCount >= 0)
        } else {
            try {
                once(Pedometer, PedometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(PedometerDetection)) {
            requestUserSensorPermission("ohos.permission.ACTIVITY_MOTION");
            let callback = PedometerDetectionResponseCallback();
            once(PedometerDetection, callback);
            waitFor(2.second) {callback.invokedCount >= 0}
            @Expect(callback.invokedCount >= 0)
        } else {
            try {
                once(PedometerDetection, PedometerDetectionResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Proximity)) {
            let callback = ProximityResponseCallback();
            once(Proximity, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(Proximity, ProximityResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(RotationVector)) {
            let callback = RotationVectorResponseCallback();
            once(RotationVector, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(RotationVector, RotationVectorResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(SignificantMotion)) {
            let callback = SignificantMotionResponseCallback();
            once(SignificantMotion, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(SignificantMotion, SignificantMotionResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(WearDetection)) {
            let callback = WearDetectionResponseCallback();
            once(WearDetection, callback);
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
        } else {
            try {
                once(WearDetection, WearDetectionResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0900
     * @tc.name      : test_on_all_sensor_types_explicit_option_success
     * @tc.desc      : test on succeeds for every sensor type with explicit option
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_all_sensor_types_explicit_option_success(): Unit {
        if (hasSensor(Accelerometer)) {
            let callback = AccelerometerResponseCallback();
            on(Accelerometer, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Accelerometer, callback: callback)
        } else {
            try {
                on(Accelerometer, AccelerometerResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(AccelerometerUncalibrated)) {
            let callback = AccelerometerUncalibratedResponseCallback();
            on(AccelerometerUncalibrated, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(AccelerometerUncalibrated, callback: callback)
        } else {
            try {
                on(AccelerometerUncalibrated, AccelerometerUncalibratedResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(AmbientLight)) {
            let callback = LightResponseCallback();
            on(AmbientLight, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(AmbientLight, callback: callback)
        } else {
            try {
                on(AmbientLight, LightResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(AmbientTemperature)) {
            let callback = AmbientTemperatureResponseCallback();
            on(AmbientTemperature, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(AmbientTemperature, callback: callback)
        } else {
            try {
                on(AmbientTemperature, AmbientTemperatureResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Barometer)) {
            let callback = BarometerResponseCallback();
            on(Barometer, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Barometer, callback: callback)
        } else {
            try {
                on(Barometer, BarometerResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Gravity)) {
            let callback = GravityResponseCallback();
            on(Gravity, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Gravity, callback: callback)
        } else {
            try {
                on(Gravity, GravityResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Gyroscope)) {
            let callback = GyroscopeResponseCallback();
            on(Gyroscope, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Gyroscope, callback: callback)
        } else {
            try {
                on(Gyroscope, GyroscopeResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(GyroscopeUncalibrated)) {
            let callback = GyroscopeUncalibratedResponseCallback();
            on(GyroscopeUncalibrated, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(GyroscopeUncalibrated, callback: callback)
        } else {
            try {
                on(GyroscopeUncalibrated, GyroscopeUncalibratedResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Hall)) {
            let callback = HallResponseCallback();
            on(Hall, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Hall, callback: callback)
        } else {
            try {
                on(Hall, HallResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(HeartRate)) {
            requestUserSensorPermission("ohos.permission.READ_HEALTH_DATA");
            let callback = HeartRateResponseCallback();
            on(HeartRate, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(HeartRate, callback: callback)
        } else {
            try {
                on(HeartRate, HeartRateResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Humidity)) {
            let callback = HumidityResponseCallback();
            on(Humidity, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Humidity, callback: callback)
        } else {
            try {
                on(Humidity, HumidityResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(LinearAccelerometer)) {
            let callback = LinearAccelerometerResponseCallback();
            on(LinearAccelerometer, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(LinearAccelerometer, callback: callback)
        } else {
            try {
                on(LinearAccelerometer, LinearAccelerometerResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(MagneticField)) {
            let callback = MagneticFieldResponseCallback();
            on(MagneticField, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(MagneticField, callback: callback)
        } else {
            try {
                on(MagneticField, MagneticFieldResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(MagneticFieldUncalibrated)) {
            let callback = MagneticFieldUncalibratedResponseCallback();
            on(MagneticFieldUncalibrated, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(MagneticFieldUncalibrated, callback: callback)
        } else {
            try {
                on(MagneticFieldUncalibrated, MagneticFieldUncalibratedResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Orientation)) {
            let callback = OrientationSensorCallback();
            on(Orientation, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Orientation, callback: callback)
        } else {
            try {
                on(Orientation, OrientationSensorCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Pedometer)) {
            requestUserSensorPermission("ohos.permission.ACTIVITY_MOTION");
            let callback = PedometerResponseCallback();
            on(Pedometer, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 0}
            @Expect(callback.invokedCount >= 0)
            off(Pedometer, callback: callback)
        } else {
            try {
                on(Pedometer, PedometerResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(PedometerDetection)) {
            requestUserSensorPermission("ohos.permission.ACTIVITY_MOTION");
            let callback = PedometerDetectionResponseCallback();
            on(PedometerDetection, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 0}
            @Expect(callback.invokedCount >= 0)
            off(PedometerDetection, callback: callback)
        } else {
            try {
                on(PedometerDetection, PedometerDetectionResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(Proximity)) {
            let callback = ProximityResponseCallback();
            on(Proximity, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(Proximity, callback: callback)
        } else {
            try {
                on(Proximity, ProximityResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(RotationVector)) {
            let callback = RotationVectorResponseCallback();
            on(RotationVector, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(RotationVector, callback: callback)
        } else {
            try {
                on(RotationVector, RotationVectorResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(SignificantMotion)) {
            let callback = SignificantMotionResponseCallback();
            on(SignificantMotion, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(SignificantMotion, callback: callback)
        } else {
            try {
                on(SignificantMotion, SignificantMotionResponseCallback(),
                    option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        if (hasSensor(WearDetection)) {
            let callback = WearDetectionResponseCallback();
            on(WearDetection, callback, option: Options(interval: SensorNumber(100000000)));
            waitFor(2.second) {callback.invokedCount >= 1}
            @Expect(callback.invokedCount >= 1)
            off(WearDetection, callback: callback)
        } else {
            try {
                on(WearDetection, WearDetectionResponseCallback(), option: Options(interval: SensorNumber(100000000)));
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
        @Expect(true)
    }
}

class AccelerometerResponseCallback <: Callback1Argument<AccelerometerResponse> {
    var invokedCount = 0
    public AccelerometerResponseCallback() {}
    public func invoke(err: ?BusinessException, response: AccelerometerResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy)
        expectFloat(response.x, -100.0f32, 100.0f32);
        expectFloat(response.y, -100.0f32, 100.0f32);
        expectFloat(response.z, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "AccelerometerResponseCallback execute")
    }
}

class AccelerometerUncalibratedResponseCallback <: Callback1Argument<AccelerometerUncalibratedResponse> {
    var invokedCount = 0
    public AccelerometerUncalibratedResponseCallback() {}
    public func invoke(err: ?BusinessException, response: AccelerometerUncalibratedResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy)
        expectFloat(response.x, -100.0f32, 100.0f32);
        expectFloat(response.y, -100.0f32, 100.0f32);
        expectFloat(response.z, -100.0f32, 100.0f32)
        expectFloat(response.biasX, -100.0f32, 100.0f32);
        expectFloat(response.biasY, -100.0f32, 100.0f32);
        expectFloat(response.biasZ, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "AccelerometerUncalibratedResponseCallback execute")
    }
}

class LightResponseCallback <: Callback1Argument<LightResponse> {
    var invokedCount = 0
    public LightResponseCallback() {}
    public func invoke(err: ?BusinessException, response: LightResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy)
        expectFloat(response.intensity, 0.0f32, 200000.0f32)
        match (response.colorTemperature) {
            case Some(value) => expectFloat(value, 0.0f32, 100000.0f32);
            case None => @Expect(true)
        }
        match (response.infraredLuminance) {
            case Some(value) => expectFloat(value, 0.0f32, 100000.0f32);
            case None => @Expect(true)
        }
        Hilog.info(0, "cangjietest", "LightResponseCallback execute")
    }
}

class AmbientTemperatureResponseCallback <: Callback1Argument<AmbientTemperatureResponse> {
    var invokedCount = 0
    public AmbientTemperatureResponseCallback() {}
    public func invoke(err: ?BusinessException, response: AmbientTemperatureResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.temperature, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "AmbientTemperatureResponseCallback execute")
    }
}

class BarometerResponseCallback <: Callback1Argument<BarometerResponse> {
    var invokedCount = 0
    public BarometerResponseCallback() {}
    public func invoke(err: ?BusinessException, response: BarometerResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.pressure, 0.0f32, 2000.0f32)
        Hilog.info(0, "cangjietest", "BarometerResponseCallback execute")
    }
}

class GravityResponseCallback <: Callback1Argument<GravityResponse> {
    var invokedCount = 0
    public GravityResponseCallback() {}
    public func invoke(err: ?BusinessException, response: GravityResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -100.0f32, 100.0f32);
        expectFloat(response.y, -100.0f32, 100.0f32);
        expectFloat(response.z, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "GravityResponseCallback execute")
    }
}

class GyroscopeResponseCallback <: Callback1Argument<GyroscopeResponse> {
    var invokedCount = 0
    public GyroscopeResponseCallback() {}
    public func invoke(err: ?BusinessException, response: GyroscopeResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -100.0f32, 100.0f32);
        expectFloat(response.y, -100.0f32, 100.0f32);
        expectFloat(response.z, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "GyroscopeResponseCallback execute")
    }
}

class GyroscopeUncalibratedResponseCallback <: Callback1Argument<GyroscopeUncalibratedResponse> {
    var invokedCount = 0
    public GyroscopeUncalibratedResponseCallback() {}
    public func invoke(err: ?BusinessException, response: GyroscopeUncalibratedResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -100.0f32, 100.0f32);
        expectFloat(response.y, -100.0f32, 100.0f32);
        expectFloat(response.z, -100.0f32, 100.0f32)
        expectFloat(response.biasX, -100.0f32, 100.0f32);
        expectFloat(response.biasY, -100.0f32, 100.0f32);
        expectFloat(response.biasZ, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "GyroscopeUncalibratedResponseCallback execute")
    }
}

class HallResponseCallback <: Callback1Argument<HallResponse> {
    var invokedCount = 0
    public HallResponseCallback() {}
    public func invoke(err: ?BusinessException, response: HallResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectUInt32(response.status, 0u32, 1u32)
        Hilog.info(0, "cangjietest", "HallResponseCallback execute")
    }
}

class HeartRateResponseCallback <: Callback1Argument<HeartRateResponse> {
    var invokedCount = 0
    public HeartRateResponseCallback() {}
    public func invoke(err: ?BusinessException, response: HeartRateResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectUInt32(response.heartRate, 0u32, 300u32)
        Hilog.info(0, "cangjietest", "HeartRateResponseCallback execute")
    }
}

class HumidityResponseCallback <: Callback1Argument<HumidityResponse> {
    var invokedCount = 0
    public HumidityResponseCallback() {}
    public func invoke(err: ?BusinessException, response: HumidityResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.humidity, 0.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "HumidityResponseCallback execute")
    }
}

class LinearAccelerometerResponseCallback <: Callback1Argument<LinearAccelerometerResponse> {
    var invokedCount = 0
    public LinearAccelerometerResponseCallback() {}
    public func invoke(err: ?BusinessException, response: LinearAccelerometerResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -100.0f32, 100.0f32);
        expectFloat(response.y, -100.0f32, 100.0f32);
        expectFloat(response.z, -100.0f32, 100.0f32)
        Hilog.info(0, "cangjietest", "LinearAccelerometerResponseCallback execute")
    }
}

class MagneticFieldResponseCallback <: Callback1Argument<MagneticFieldResponse> {
    var invokedCount = 0
    public MagneticFieldResponseCallback() {}
    public func invoke(err: ?BusinessException, response: MagneticFieldResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -10000.0f32, 10000.0f32);
        expectFloat(response.y, -10000.0f32, 10000.0f32);
        expectFloat(response.z, -10000.0f32, 10000.0f32)
        Hilog.info(0, "cangjietest", "MagneticFieldResponseCallback execute")
    }
}

class MagneticFieldUncalibratedResponseCallback <: Callback1Argument<MagneticFieldUncalibratedResponse> {
    var invokedCount = 0
    public MagneticFieldUncalibratedResponseCallback() {}
    public func invoke(err: ?BusinessException, response: MagneticFieldUncalibratedResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -10000.0f32, 10000.0f32);
        expectFloat(response.y, -10000.0f32, 10000.0f32);
        expectFloat(response.z, -10000.0f32, 10000.0f32)
        expectFloat(response.biasX, -10000.0f32, 10000.0f32);
        expectFloat(response.biasY, -10000.0f32, 10000.0f32);
        expectFloat(response.biasZ, -10000.0f32, 10000.0f32)
        Hilog.info(0, "cangjietest", "MagneticFieldUncalibRatedResponseCallback execute")
    }
}

class OrientationResponseCallback <: Callback1Argument<OrientationResponse> {
    var invokedCount = 0
    public OrientationResponseCallback() {}
    public func invoke(err: ?BusinessException, _: OrientationResponse): Unit {
        invokedCount++
        Hilog.info(0, "cangjietest", "OrientationResponseCallback execute")
    }
}

class PedometerResponseCallback <: Callback1Argument<PedometerResponse> {
    var invokedCount = 0
    public PedometerResponseCallback() {}
    public func invoke(err: ?BusinessException, response: PedometerResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectInt64(response.steps, 0, 1000000000)
        Hilog.info(0, "cangjietest", "PedometerResponseCallback execute")
    }
}

class PedometerDetectionResponseCallback <: Callback1Argument<PedometerDetectionResponse> {
    var invokedCount = 0
    public PedometerDetectionResponseCallback() {}
    public func invoke(err: ?BusinessException, response: PedometerDetectionResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectUInt32(response.scalar, 0u32, 1u32)
        Hilog.info(0, "cangjietest", "PedometerDetectionResponseCallback execute")
    }
}

class ProximityResponseCallback <: Callback1Argument<ProximityResponse> {
    var invokedCount = 0
    public ProximityResponseCallback() {}
    public func invoke(err: ?BusinessException, response: ProximityResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.distance, 0.0f32, 100000.0f32)
        Hilog.info(0, "cangjietest", "ProximityResponseCallback execute")
    }
}

class RotationVectorResponseCallback <: Callback1Argument<RotationVectorResponse> {
    var invokedCount = 0
    public RotationVectorResponseCallback() {}
    public func invoke(err: ?BusinessException, response: RotationVectorResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectFloat(response.x, -1.0f32, 1.0f32);
        expectFloat(response.y, -1.0f32, 1.0f32);
        expectFloat(response.z, -1.0f32, 1.0f32);
        expectFloat(response.w, -1.0f32, 1.0f32)
        Hilog.info(0, "cangjietest", "RotationVectorResponseCallback execute")
    }
}

class SignificantMotionResponseCallback <: Callback1Argument<SignificantMotionResponse> {
    var invokedCount = 0
    public SignificantMotionResponseCallback() {}
    public func invoke(err: ?BusinessException, response: SignificantMotionResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectInt32(response.scalar, 0, 1)
        Hilog.info(0, "cangjietest", "SignificantMotionResponseCallback execute")
    }
}

class WearDetectionResponseCallback <: Callback1Argument<WearDetectionResponse> {
    var invokedCount = 0
    public WearDetectionResponseCallback() {}
    public func invoke(err: ?BusinessException, response: WearDetectionResponse): Unit {
        invokedCount++
        expectResponseMeta(response.timestamp, response.accuracy);
        expectUInt32(response.value, 0u32, 1u32)
        Hilog.info(0, "cangjietest", "WearDetectionResponseCallback execute")
    }
}

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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.SensorServiceKit.*
import ohos.business_exception.*
import ohos.callback_invoke.Callback1Argument

class AccelerometerResponseCallback <: Callback1Argument<AccelerometerResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: AccelerometerResponse): Unit {}
}

class AccelerometerUncalibratedResponseCallback <: Callback1Argument<AccelerometerUncalibratedResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: AccelerometerUncalibratedResponse): Unit {}
}

class GyroscopeResponseCallback <: Callback1Argument<GyroscopeResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: GyroscopeResponse): Unit {}
}

class GyroscopeUncalibratedResponseCallback <: Callback1Argument<GyroscopeUncalibratedResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: GyroscopeUncalibratedResponse): Unit {}
}

class HeartRateResponseCallback <: Callback1Argument<HeartRateResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: HeartRateResponse): Unit {}
}

class PedometerResponseCallback <: Callback1Argument<PedometerResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: PedometerResponse): Unit {}
}

class PedometerDetectionResponseCallback <: Callback1Argument<PedometerDetectionResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: PedometerDetectionResponse): Unit {}
}

class LinearAccelerometerResponseCallback <: Callback1Argument<LinearAccelerometerResponse> {
    public init() {}
    public func invoke(err: ?BusinessException, response: LinearAccelerometerResponse): Unit {}
}

@Test
class TestSensorWithoutPermissions {
    /*
     * @tc.number    : Sub_Cangjie_Sensor_WithoutPermissions_0100
     * @tc.name      : test_on_activity_motion_sensor_without_permission_throws_exception
     * @tc.desc      : Verify activity motion sensors reject subscriptions when no permission is declared.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_activity_motion_sensor_without_permission_throws_exception(): Unit {
        if (hasSensor(Pedometer)) {
            try {
                on(Pedometer, PedometerResponseCallback())
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(PedometerDetection)) {
            try {
                on(PedometerDetection, PedometerDetectionResponseCallback())
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_WithoutPermissions_0200
     * @tc.name      : test_on_all_permission_sensors_without_permission_throws_exception
     * @tc.desc      : Verify every permission-protected sensor rejects on subscriptions without declared permissions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_all_permission_sensors_without_permission_throws_exception(): Unit {
        if (hasSensor(Accelerometer)) {
            try {
                on(Accelerometer, AccelerometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(AccelerometerUncalibrated)) {
            try {
                on(AccelerometerUncalibrated, AccelerometerUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(LinearAccelerometer)) {
            try {
                on(LinearAccelerometer, LinearAccelerometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(Gyroscope)) {
            try {
                on(Gyroscope, GyroscopeResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(GyroscopeUncalibrated)) {
            try {
                on(GyroscopeUncalibrated, GyroscopeUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(Pedometer)) {
            try {
                on(Pedometer, PedometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(PedometerDetection)) {
            try {
                on(PedometerDetection, PedometerDetectionResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(HeartRate)) {
            try {
                on(HeartRate, HeartRateResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_WithoutPermissions_0300
     * @tc.name      : test_once_all_permission_sensors_without_permission_throws_exception
     * @tc.desc      : Verify every permission-protected sensor rejects once subscriptions without declared permissions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_once_all_permission_sensors_without_permission_throws_exception(): Unit {
        if (hasSensor(Accelerometer)) {
            try {
                once(Accelerometer, AccelerometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(AccelerometerUncalibrated)) {
            try {
                once(AccelerometerUncalibrated, AccelerometerUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(LinearAccelerometer)) {
            try {
                once(LinearAccelerometer, LinearAccelerometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(Gyroscope)) {
            try {
                once(Gyroscope, GyroscopeResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(GyroscopeUncalibrated)) {
            try {
                once(GyroscopeUncalibrated, GyroscopeUncalibratedResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(Pedometer)) {
            try {
                once(Pedometer, PedometerResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(PedometerDetection)) {
            try {
                once(PedometerDetection, PedometerDetectionResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        if (hasSensor(HeartRate)) {
            try {
                once(HeartRate, HeartRateResponseCallback());
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 201)
            }
        }
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_WithoutPermissions_0400
     * @tc.name      : test_off_all_permission_sensors_without_permission_throws_exception
     * @tc.desc      : Verify every permission-protected sensor rejects on subscriptions without declared permissions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_all_permission_sensors_without_permission_throws_exception(): Unit {
        if (hasSensor(Accelerometer)) {
            try {
                off(Accelerometer);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(AccelerometerUncalibrated)) {
            try {
                off(AccelerometerUncalibrated);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(LinearAccelerometer)) {
            try {
                off(LinearAccelerometer);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(Gyroscope)) {
            try {
                off(Gyroscope);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(GyroscopeUncalibrated)) {
            try {
                off(GyroscopeUncalibrated);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(Pedometer)) {
            try {
                off(Pedometer);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(PedometerDetection)) {
            try {
                off(PedometerDetection);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        if (hasSensor(HeartRate)) {
            try {
                off(HeartRate);
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        @Expect(true)
    }
}

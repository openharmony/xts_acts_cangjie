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
    public func invoke(err: ?BusinessException, _: OrientationResponse): Unit {
        invokedCount++
    }
}

@Test
class TestSensorOnOff {
    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0100
     * @tc.name      : Once_IsCallOnce_Success
     * @tc.desc      : test Sensor Once_IsCallOnce_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Once_IsCallOnce_Success(): Unit {
        let callback = OrientationSensorCallback()
        try {
            once(SensorId.Orientation, callback)
            sleepFor(300.milliSecond)
            @Expect(callback.invokedCount, 1)
        } catch (e: BusinessException) {
            // failExpect("once failed, ${e}")
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0200
     * @tc.name      : On_DefaultInternal_CallMultipleTimes
     * @tc.desc      : test Sensor On_DefaultInternal_CallMultipleTimes
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func On_DefaultInternal_CallMultipleTimes(): Unit {
        let callback = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback) // default report interval 200ms
            sleepFor(450.milliSecond)
            Hilog.info(0, "cangjietest", "## On_DefaultInternal_CallMultipleTimes, ${callback.invokedCount}")
            @Expect(callback.invokedCount >= 2)
            off(SensorId.Orientation, callback: callback)
        } catch (e: BusinessException) {
            // failExpect("on failed, ${e}")
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0300
     * @tc.name      : On_Internal400MS_Success
     * @tc.desc      : test Sensor On_Internal400MS_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func On_Internal400MS_Success(): Unit {
        let callback = OrientationSensorCallback()
        try {
            sleepFor(1.second)
            @Expect(callback.invokedCount, 0)
            off(SensorId.Orientation)
        } catch (e: BusinessException) {
            failExpect("on failed, ${e}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0400
     * @tc.name      : On_DuplicateSubscription_Success
     * @tc.desc      : test Sensor On_DuplicateSubscription_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func On_DuplicateSubscription_Success(): Unit {
        let callback = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback)
            sleepFor(1.second)
            @Expect(callback.invokedCount >= 4)
            off(SensorId.Orientation)
        } catch (e: BusinessException) {
            // failExpect("once failed, ${e}")
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0500
     * @tc.name      : Off_OffOneCallback_Success
     * @tc.desc      : test Sensor Off_OffOneCallback_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Off_OffOneCallback_Success(): Unit {
        let callback1 = OrientationSensorCallback()
        let callback2 = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback1)
            off(SensorId.Orientation, callback: callback1)
            sleepFor(201.milliSecond)
            let offcallback1InvokeCnt = callback1.invokedCount
            sleepFor(201.milliSecond)
            @Expect(offcallback1InvokeCnt, callback2.invokedCount)
            off(SensorId.Orientation)
        } catch (e: BusinessException) {
            // failExpect("on failed, ${e}")
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0500
     * @tc.name      : Off_OffAllCallbacks_Success
     * @tc.desc      : test Sensor Off_OffOneCallback_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Off_OffAllCallbacks_Success(): Unit {
        let callback1 = OrientationSensorCallback()
        let callback2 = OrientationSensorCallback()
        try {
            on(SensorId.Orientation, callback1)

            on(SensorId.Orientation, callback2)
            off(SensorId.Orientation)
            sleepFor(201.milliSecond)
            let offcallback1InvokeCnt = callback1.invokedCount
            let offcallback2InvokeCnt = callback2.invokedCount
            sleepFor(201.milliSecond)
            @Expect(offcallback1InvokeCnt, callback1.invokedCount)
            @Expect(offcallback2InvokeCnt, callback2.invokedCount)
        } catch (e: BusinessException) {
            // failExpect("on failed, ${e}")
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_0900
     * @tc.name      : On_NoPermissionSensorId_ThrowException
     * @tc.desc      : test Sensor On_NoPermissionSensorId_ThrowException
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func On_NoPermissionSensorId_ThrowException() {
        // user granted permission: ACTIVITY_MOTION
        expectBusinessException(201) {
            on(Pedometer, PedometerResponseCallback())
        }
        expectBusinessException(201) {
            on(PedometerDetection, PedometerDetectionResponseCallback())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_1000
     * @tc.name      : On_NotSupportedSensorId_ThrowException
     * @tc.desc      : test Sensor On_NotSupportedSensorId_ThrowException
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func On_NotSupportedSensorId_ThrowException() {
        expectBusinessException(401) {
            on(AmbientTemperature, AmbientTemperatureResponseCallback())
        }
        expectBusinessException(401) {
            on(HeartRate, HeartRateResponseCallback())
        }
        expectBusinessException(401) {
            on(Humidity, HumidityResponseCallback())
        }
        expectBusinessException(401) {
            on(WearDetection, WearDetectionResponseCallback())
        }
        expectBusinessException(401) {
            on(SignificantMotion, SignificantMotionResponseCallback())
        }
        expectBusinessException(401) {
            on(Gravity, SignificantMotionResponseCallback())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_1100
     * @tc.name      : On_NotMatchSensorId_ThrowException
     * @tc.desc      : test Sensor On_NotMatchSensorId_ThrowException
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func On_NotMatchSensorId_ThrowException() {
        expectBusinessException(401) {
            on(Accelerometer, SignificantMotionResponseCallback())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_1200
     * @tc.name      : Off_SupportedSensorId_Success
     * @tc.desc      : test Sensor Off_SupportedSensorId_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Off_SupportedSensorId_Success() {
        off(Accelerometer)
        off(AccelerometerUncalibrated)
        off(AmbientLight)
        off(Barometer)
        off(Gravity)
        off(Gyroscope)
        off(GyroscopeUncalibrated)
        off(Hall)
        off(LinearAccelerometer)
        off(MagneticField)
        off(MagneticFieldUncalibrated)
        off(Orientation)
        off(Proximity)
        off(RotationVector)
        off(Pedometer)
        off(PedometerDetection)
        off(AmbientTemperature)
        off(HeartRate)
        off(Humidity)
        off(WearDetection)
        off(SignificantMotion)
        off(Gravity)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorOnOff_1400
     * @tc.name      : Once_NotMatchedSensorId_ThrowException
     * @tc.desc      : test Sensor Once_NotMatchedSensorId_ThrowException
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Once_NotMatchedSensorId_ThrowException() {
        expectBusinessException(401) {
            once(Accelerometer, SignificantMotionResponseCallback())
        }
    }
}

class AccelerometerResponseCallback <: Callback1Argument<AccelerometerResponse> {
    public AccelerometerResponseCallback() {}
    public func invoke(err: ?BusinessException, _: AccelerometerResponse): Unit {
        Hilog.info(0, "cangjietest", "AccelerometerResponseCallback execute")
    }
}

class AccelerometerUncalibratedResponseCallback <: Callback1Argument<AccelerometerUncalibratedResponse> {
    public AccelerometerUncalibratedResponseCallback() {}
    public func invoke(err: ?BusinessException, _: AccelerometerUncalibratedResponse): Unit {
        Hilog.info(0, "cangjietest", "AccelerometerUncalibratedResponseCallback execute")
    }
}

class LightResponseCallback <: Callback1Argument<LightResponse> {
    public LightResponseCallback() {}
    public func invoke(err: ?BusinessException, _: LightResponse): Unit {
        Hilog.info(0, "cangjietest", "LightResponseCallback execute")
    }
}

class AmbientTemperatureResponseCallback <: Callback1Argument<AmbientTemperatureResponse> {
    public AmbientTemperatureResponseCallback() {}
    public func invoke(err: ?BusinessException, _: AmbientTemperatureResponse): Unit {
        Hilog.info(0, "cangjietest", "AmbientTemperatureResponseCallback execute")
    }
}

class BarometerResponseCallback <: Callback1Argument<BarometerResponse> {
    public BarometerResponseCallback() {}
    public func invoke(err: ?BusinessException, _: BarometerResponse): Unit {
        Hilog.info(0, "cangjietest", "BarometerResponseCallback execute")
    }
}

class GravityResponseCallback <: Callback1Argument<GravityResponse> {
    public GravityResponseCallback() {}
    public func invoke(err: ?BusinessException, _: GravityResponse): Unit {
        Hilog.info(0, "cangjietest", "GravityResponseCallback execute")
    }
}

class GyroscopeResponseCallback <: Callback1Argument<GyroscopeResponse> {
    public GyroscopeResponseCallback() {}
    public func invoke(err: ?BusinessException, _: GyroscopeResponse): Unit {
        Hilog.info(0, "cangjietest", "GyroscopeResponseCallback execute")
    }
}

class GyroscopeUncalibratedResponseCallback <: Callback1Argument<GyroscopeUncalibratedResponse> {
    public GyroscopeUncalibratedResponseCallback() {}
    public func invoke(err: ?BusinessException, _: GyroscopeUncalibratedResponse): Unit {
        Hilog.info(0, "cangjietest", "GyroscopeUncalibratedResponseCallback execute")
    }
}

class HallResponseCallback <: Callback1Argument<HallResponse> {
    public HallResponseCallback() {}
    public func invoke(err: ?BusinessException, _: HallResponse): Unit {
        Hilog.info(0, "cangjietest", "HallResponseCallback execute")
    }
}

class HeartRateResponseCallback <: Callback1Argument<HeartRateResponse> {
    public HeartRateResponseCallback() {}
    public func invoke(err: ?BusinessException, _: HeartRateResponse): Unit {
        Hilog.info(0, "cangjietest", "HeartRateResponseCallback execute")
    }
}

class HumidityResponseCallback <: Callback1Argument<HumidityResponse> {
    public HumidityResponseCallback() {}
    public func invoke(err: ?BusinessException, _: HumidityResponse): Unit {
        Hilog.info(0, "cangjietest", "HumidityResponseCallback execute")
    }
}

class LinearAccelerometerResponseCallback <: Callback1Argument<LinearAccelerometerResponse> {
    public LinearAccelerometerResponseCallback() {}
    public func invoke(err: ?BusinessException, _: LinearAccelerometerResponse): Unit {
        Hilog.info(0, "cangjietest", "LinearAccelerometerResponseCallback execute")
    }
}

class MagneticFieldResponseCallback <: Callback1Argument<MagneticFieldResponse> {
    public MagneticFieldResponseCallback() {}
    public func invoke(err: ?BusinessException, _: MagneticFieldResponse): Unit {
        Hilog.info(0, "cangjietest", "MagneticFieldResponseCallback execute")
    }
}

class MagneticFieldUncalibratedResponseCallback <: Callback1Argument<MagneticFieldUncalibratedResponse> {
    public MagneticFieldUncalibratedResponseCallback() {}
    public func invoke(err: ?BusinessException, _: MagneticFieldUncalibratedResponse): Unit {
        Hilog.info(0, "cangjietest", "MagneticFieldUncalibRatedResponseCallback execute")
    }
}

class OrientationResponseCallback <: Callback1Argument<OrientationResponse> {
    public OrientationResponseCallback() {}
    public func invoke(err: ?BusinessException, _: OrientationResponse): Unit {
        Hilog.info(0, "cangjietest", "OrientationResponseCallback execute")
    }
}

class PedometerResponseCallback <: Callback1Argument<PedometerResponse> {
    public PedometerResponseCallback() {}
    public func invoke(err: ?BusinessException, _: PedometerResponse): Unit {
        Hilog.info(0, "cangjietest", "PedometerResponseCallback execute")
    }
}

class PedometerDetectionResponseCallback <: Callback1Argument<PedometerDetectionResponse> {
    public PedometerDetectionResponseCallback() {}
    public func invoke(err: ?BusinessException, _: PedometerDetectionResponse): Unit {
        Hilog.info(0, "cangjietest", "PedometerDetectionResponseCallback execute")
    }
}

class ProximityResponseCallback <: Callback1Argument<ProximityResponse> {
    public ProximityResponseCallback() {}
    public func invoke(err: ?BusinessException, _: ProximityResponse): Unit {
        Hilog.info(0, "cangjietest", "ProximityResponseCallback execute")
    }
}

class RotationVectorResponseCallback <: Callback1Argument<RotationVectorResponse> {
    public RotationVectorResponseCallback() {}
    public func invoke(err: ?BusinessException, _: RotationVectorResponse): Unit {
        Hilog.info(0, "cangjietest", "RotationVectorResponseCallback execute")
    }
}

class SignificantMotionResponseCallback <: Callback1Argument<SignificantMotionResponse> {
    public SignificantMotionResponseCallback() {}
    public func invoke(err: ?BusinessException, _: SignificantMotionResponse): Unit {
        Hilog.info(0, "cangjietest", "SignificantMotionResponseCallback execute")
    }
}

class WearDetectionResponseCallback <: Callback1Argument<WearDetectionResponse> {
    public WearDetectionResponseCallback() {}
    public func invoke(err: ?BusinessException, _: WearDetectionResponse): Unit {
        Hilog.info(0, "cangjietest", "WearDetectionResponseCallback execute")
    }
}

func expectBusinessException(code: Int32, f: () -> Unit) {
    try {
        f()
        @Expect(false)
    } catch (e: BusinessException) {
        @Expect(e.code, code)
    }
}

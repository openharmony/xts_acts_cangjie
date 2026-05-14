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
     * @tc.name      : test_GetSensorList_BasicFunction_Success
     * @tc.desc      : test Sensor test_GetSensorList_BasicFunction_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_GetSensorList_BasicFunction_Success(): Unit {
        sleepFor(1.second)
        let sensors = getSensorList()
        @Expect(sensors.size > 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_Sensor_TestSensorGetGeomagneticInfo_1300
     * @tc.name      : test_GetSingleSensor_NotSupportSensor_ThrowException
     * @tc.desc      : test Sensor test_GetSingleSensor_NotSupportSensor_ThrowException
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_GetSingleSensor_NotSupportSensor_ThrowException(): Unit {
        try {
            getSingleSensor(SensorId.Gravity)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14500102)
        }
    }
}

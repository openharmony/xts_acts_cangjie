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
import ohos.battery_info.*
import std.convert.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_battery_info {
    /*
     * @tc.number    : Sub_Cangjie_BatteryInfo_Test_battery_info_0100
     * @tc.name      : test_BatteryInfo
     * @tc.desc      : test BatteryInfo test_BatteryInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_BatteryInfo() {
        let batterySOCInfo = BatteryInfo.batterySoc
        let chargingStatusInfo = BatteryInfo.chargingStatus
        let healthStatusInfo = BatteryInfo.healthStatus
        let pluggedTypeInfo = BatteryInfo.pluggedType
        let voltageInfo = BatteryInfo.voltage
        let technologyInfo = BatteryInfo.technology
        let batteryTemperatureInfo = BatteryInfo.batteryTemperature
        let isBatteryPresentInfo = BatteryInfo.isBatteryPresent
        let batteryCapacityLevelInfo = BatteryInfo.batteryCapacityLevel
        let nowCurrentInfo = BatteryInfo.nowCurrent

        @Expect(batterySOCInfo > 0 || batterySOCInfo < 100)
        @Expect(isBatteryPresentInfo)

        // The following attribute information needs to be determined according to the environment and cannot be asserted.
        Hilog.info(0, "cangjietest", chargingStatusInfo.toString())
        Hilog.info(0, "cangjietest", healthStatusInfo.toString())
        Hilog.info(0, "cangjietest", pluggedTypeInfo.toString())
        Hilog.info(0, "cangjietest", batteryCapacityLevelInfo.toString())
    }
}

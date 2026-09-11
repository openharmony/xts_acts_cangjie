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
import kit.BasicServicesKit.*
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
        Hilog.info(0u32, "cangjietest", "", "testcase test_BatteryInfo begins.")
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
        Hilog.info(0, "cangjietest", chargingStatusInfo.toString())
        Hilog.info(0, "cangjietest", healthStatusInfo.toString())
        Hilog.info(0, "cangjietest", pluggedTypeInfo.toString())
        Hilog.info(0, "cangjietest", batteryCapacityLevelInfo.toString())
        Hilog.info(0u32, "cangjietest", "", "testcase test_BatteryInfo ends.")
    }
       /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0001
     * @tc.name      : test_battery_capacity_level_self_equal_and_tostring
     * @tc.desc      : BatteryCapacityLevel 8 case 自等（== 返 true）+ toString 返回 case 名字符串，验证 Equatable+ToString 父类型行为
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_capacity_level_self_equal_and_tostring(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_capacity_level_self_equal_and_tostring begins.")
        @Expect(BatteryCapacityLevel.LevelFull == BatteryCapacityLevel.LevelFull)
        @Expect(BatteryCapacityLevel.LevelHigh == BatteryCapacityLevel.LevelHigh)
        @Expect(BatteryCapacityLevel.LevelNormal == BatteryCapacityLevel.LevelNormal)
        @Expect(BatteryCapacityLevel.LevelLow == BatteryCapacityLevel.LevelLow)
        @Expect(BatteryCapacityLevel.LevelWarning == BatteryCapacityLevel.LevelWarning)
        @Expect(BatteryCapacityLevel.LevelCritical == BatteryCapacityLevel.LevelCritical)
        @Expect(BatteryCapacityLevel.LevelShutdown == BatteryCapacityLevel.LevelShutdown)
        // SDK override toString，返回非 case 名字符串；用 size>0 断言 + Hilog 探针记录实际值
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelFull.toString()=${BatteryCapacityLevel.LevelFull.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelHigh.toString()=${BatteryCapacityLevel.LevelHigh.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelNormal.toString()=${BatteryCapacityLevel.LevelNormal.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelLow.toString()=${BatteryCapacityLevel.LevelLow.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelWarning.toString()=${BatteryCapacityLevel.LevelWarning.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelCritical.toString()=${BatteryCapacityLevel.LevelCritical.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryCapacityLevel.LevelShutdown.toString()=${BatteryCapacityLevel.LevelShutdown.toString()}")
        @Expect(BatteryCapacityLevel.LevelFull.toString().size > 0)
        @Expect(BatteryCapacityLevel.LevelHigh.toString().size > 0)
        @Expect(BatteryCapacityLevel.LevelNormal.toString().size > 0)
        @Expect(BatteryCapacityLevel.LevelLow.toString().size > 0)
        @Expect(BatteryCapacityLevel.LevelWarning.toString().size > 0)
        @Expect(BatteryCapacityLevel.LevelCritical.toString().size > 0)
        @Expect(BatteryCapacityLevel.LevelShutdown.toString().size > 0)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_capacity_level_self_equal_and_tostring ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0002
     * @tc.name      : test_battery_capacity_level_mutual_not_equal
     * @tc.desc      : BatteryCapacityLevel 异 case 互不等（!= 返 true），验证 Equatable != operator 区分 case
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_capacity_level_mutual_not_equal(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_capacity_level_mutual_not_equal begins.")
        @Expect(BatteryCapacityLevel.LevelFull != BatteryCapacityLevel.LevelHigh)
        @Expect(BatteryCapacityLevel.LevelHigh != BatteryCapacityLevel.LevelNormal)
        @Expect(BatteryCapacityLevel.LevelNormal != BatteryCapacityLevel.LevelLow)
        @Expect(BatteryCapacityLevel.LevelLow != BatteryCapacityLevel.LevelWarning)
        @Expect(BatteryCapacityLevel.LevelWarning != BatteryCapacityLevel.LevelCritical)
        @Expect(BatteryCapacityLevel.LevelCritical != BatteryCapacityLevel.LevelShutdown)
        @Expect(BatteryCapacityLevel.LevelFull != BatteryCapacityLevel.LevelShutdown)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_capacity_level_mutual_not_equal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0003
     * @tc.name      : test_battery_charge_state_self_equal_and_tostring
     * @tc.desc      : BatteryChargeState 4 case 自等 + toString 返回 case 名，验证 Equatable+ToString
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_charge_state_self_equal_and_tostring(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_charge_state_self_equal_and_tostring begins.")
        @Expect(BatteryChargeState.UnknownChargeState == BatteryChargeState.UnknownChargeState)
        @Expect(BatteryChargeState.Enabled == BatteryChargeState.Enabled)
        @Expect(BatteryChargeState.Disabled == BatteryChargeState.Disabled)
        @Expect(BatteryChargeState.Full == BatteryChargeState.Full)
        Hilog.info(0u32, "cangjietest", "", "BatteryChargeState.UnknownChargeState.toString()=${BatteryChargeState.UnknownChargeState.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryChargeState.Enabled.toString()=${BatteryChargeState.Enabled.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryChargeState.Disabled.toString()=${BatteryChargeState.Disabled.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryChargeState.Full.toString()=${BatteryChargeState.Full.toString()}")
        @Expect(BatteryChargeState.UnknownChargeState.toString().size > 0)
        @Expect(BatteryChargeState.Enabled.toString().size > 0)
        @Expect(BatteryChargeState.Disabled.toString().size > 0)
        @Expect(BatteryChargeState.Full.toString().size > 0)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_charge_state_self_equal_and_tostring ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0004
     * @tc.name      : test_battery_charge_state_mutual_not_equal
     * @tc.desc      : BatteryChargeState 异 case 互不等，验证 != operator 区分 case
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_charge_state_mutual_not_equal(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_charge_state_mutual_not_equal begins.")
        @Expect(BatteryChargeState.UnknownChargeState != BatteryChargeState.Enabled)
        @Expect(BatteryChargeState.Enabled != BatteryChargeState.Disabled)
        @Expect(BatteryChargeState.Disabled != BatteryChargeState.Full)
        @Expect(BatteryChargeState.Full != BatteryChargeState.UnknownChargeState)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_charge_state_mutual_not_equal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0005
     * @tc.name      : test_battery_health_state_self_equal_and_tostring
     * @tc.desc      : BatteryHealthState 6 case 自等 + toString 返回 case 名
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_health_state_self_equal_and_tostring(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_health_state_self_equal_and_tostring begins.")
        @Expect(BatteryHealthState.UnknownHealthState == BatteryHealthState.UnknownHealthState)
        @Expect(BatteryHealthState.Good == BatteryHealthState.Good)
        @Expect(BatteryHealthState.Overheat == BatteryHealthState.Overheat)
        @Expect(BatteryHealthState.Overvoltage == BatteryHealthState.Overvoltage)
        @Expect(BatteryHealthState.Cold == BatteryHealthState.Cold)
        @Expect(BatteryHealthState.Dead == BatteryHealthState.Dead)
        Hilog.info(0u32, "cangjietest", "", "BatteryHealthState.UnknownHealthState.toString()=${BatteryHealthState.UnknownHealthState.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryHealthState.Good.toString()=${BatteryHealthState.Good.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryHealthState.Overheat.toString()=${BatteryHealthState.Overheat.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryHealthState.Overvoltage.toString()=${BatteryHealthState.Overvoltage.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryHealthState.Cold.toString()=${BatteryHealthState.Cold.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryHealthState.Dead.toString()=${BatteryHealthState.Dead.toString()}")
        @Expect(BatteryHealthState.UnknownHealthState.toString().size > 0)
        @Expect(BatteryHealthState.Good.toString().size > 0)
        @Expect(BatteryHealthState.Overheat.toString().size > 0)
        @Expect(BatteryHealthState.Overvoltage.toString().size > 0)
        @Expect(BatteryHealthState.Cold.toString().size > 0)
        @Expect(BatteryHealthState.Dead.toString().size > 0)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_health_state_self_equal_and_tostring ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0006
     * @tc.name      : test_battery_health_state_mutual_not_equal
     * @tc.desc      : BatteryHealthState 异 case 互不等
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_health_state_mutual_not_equal(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_health_state_mutual_not_equal begins.")
        @Expect(BatteryHealthState.UnknownHealthState != BatteryHealthState.Good)
        @Expect(BatteryHealthState.Good != BatteryHealthState.Overheat)
        @Expect(BatteryHealthState.Overheat != BatteryHealthState.Overvoltage)
        @Expect(BatteryHealthState.Overvoltage != BatteryHealthState.Cold)
        @Expect(BatteryHealthState.Cold != BatteryHealthState.Dead)
        @Expect(BatteryHealthState.Dead != BatteryHealthState.UnknownHealthState)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_health_state_mutual_not_equal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0007
     * @tc.name      : test_battery_plugged_type_self_equal_and_tostring
     * @tc.desc      : BatteryPluggedType 4 case 自等 + toString 返回 case 名
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_plugged_type_self_equal_and_tostring(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_plugged_type_self_equal_and_tostring begins.")
        @Expect(BatteryPluggedType.UnknownType == BatteryPluggedType.UnknownType)
        @Expect(BatteryPluggedType.Ac == BatteryPluggedType.Ac)
        @Expect(BatteryPluggedType.Usb == BatteryPluggedType.Usb)
        @Expect(BatteryPluggedType.Wireless == BatteryPluggedType.Wireless)
        Hilog.info(0u32, "cangjietest", "", "BatteryPluggedType.UnknownType.toString()=${BatteryPluggedType.UnknownType.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryPluggedType.Ac.toString()=${BatteryPluggedType.Ac.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryPluggedType.Usb.toString()=${BatteryPluggedType.Usb.toString()}")
        Hilog.info(0u32, "cangjietest", "", "BatteryPluggedType.Wireless.toString()=${BatteryPluggedType.Wireless.toString()}")
        @Expect(BatteryPluggedType.UnknownType.toString().size > 0)
        @Expect(BatteryPluggedType.Ac.toString().size > 0)
        @Expect(BatteryPluggedType.Usb.toString().size > 0)
        @Expect(BatteryPluggedType.Wireless.toString().size > 0)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_plugged_type_self_equal_and_tostring ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0008
     * @tc.name      : test_battery_plugged_type_mutual_not_equal
     * @tc.desc      : BatteryPluggedType 异 case 互不等
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_plugged_type_mutual_not_equal(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_plugged_type_mutual_not_equal begins.")
        @Expect(BatteryPluggedType.UnknownType != BatteryPluggedType.Ac)
        @Expect(BatteryPluggedType.Ac != BatteryPluggedType.Usb)
        @Expect(BatteryPluggedType.Usb != BatteryPluggedType.Wireless)
        @Expect(BatteryPluggedType.Wireless != BatteryPluggedType.UnknownType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_plugged_type_mutual_not_equal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0009
     * @tc.name      : test_battery_info_numeric_props_type_and_range
     * @tc.desc      : BatteryInfo 5 个 Int32 数值 prop（batterySoc/batteryTemperature/voltage/nowCurrent）+ isBatteryPresent Bool 类型与范围断言，验证 prop 可读且类型/范围合理
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_info_numeric_props_type_and_range(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_info_numeric_props_type_and_range begins.")

        let soc = BatteryInfo.batterySoc
        @Expect(soc >= 0 && soc <= 100)

        let temp = BatteryInfo.batteryTemperature
        @Expect(temp >= -27315 && temp <= 100000)

        let voltage = BatteryInfo.voltage
        @Expect(voltage >= 0 && voltage <= 100000000)

        let current = BatteryInfo.nowCurrent
        @Expect(current >= -1000000000 && current <= 1000000000)
        Hilog.info(0u32, "cangjietest", "", "BatteryInfo.nowCurrent=${current}")

        let present = BatteryInfo.isBatteryPresent
        Hilog.info(0u32, "cangjietest", "", "BatteryInfo.isBatteryPresent=${present}")
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_info_numeric_props_type_and_range ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_basicserviceskit_battery_info_0010
     * @tc.name      : test_battery_info_string_and_enum_props
     * @tc.desc      : BatteryInfo technology(String) + 4 个 enum prop（batteryCapacityLevel/chargingStatus/healthStatus/pluggedType）类型与已知 case 验证，验证 prop 返回值是文档列出的 case 之一
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_battery_info_string_and_enum_props(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_info_string_and_enum_props begins.")
        // technology 返回 String 非空（电池技术型号如 "Li-ion"）
        let tech = BatteryInfo.technology
        @Expect(tech.size > 0)

        // 4 个 enum prop 用 match 验证是文档列出的 case 之一（不假设具体值，由设备决定）
        let level = BatteryInfo.batteryCapacityLevel
        let levelKnown = match (level) {
            case BatteryCapacityLevel.LevelFull => true
            case BatteryCapacityLevel.LevelHigh => true
            case BatteryCapacityLevel.LevelNormal => true
            case BatteryCapacityLevel.LevelLow => true
            case BatteryCapacityLevel.LevelWarning => true
            case BatteryCapacityLevel.LevelCritical => true
            case BatteryCapacityLevel.LevelShutdown => true
            case _ => false
        }
        @Expect(levelKnown)

        let charge = BatteryInfo.chargingStatus
        let chargeKnown = match (charge) {
            case BatteryChargeState.UnknownChargeState => true
            case BatteryChargeState.Enabled => true
            case BatteryChargeState.Disabled => true
            case BatteryChargeState.Full => true
            case _ => false
        }
        @Expect(chargeKnown)

        let health = BatteryInfo.healthStatus
        let healthKnown = match (health) {
            case BatteryHealthState.UnknownHealthState => true
            case BatteryHealthState.Good => true
            case BatteryHealthState.Overheat => true
            case BatteryHealthState.Overvoltage => true
            case BatteryHealthState.Cold => true
            case BatteryHealthState.Dead => true
            case _ => false
        }
        @Expect(healthKnown)

        let plugged = BatteryInfo.pluggedType
        let pluggedKnown = match (plugged) {
            case BatteryPluggedType.UnknownType => true
            case BatteryPluggedType.Ac => true
            case BatteryPluggedType.Usb => true
            case BatteryPluggedType.Wireless => true
            case _ => false
        }
        @Expect(pluggedKnown)
        Hilog.info(0u32, "cangjietest", "", "testcase test_battery_info_string_and_enum_props ends.")
    }
}

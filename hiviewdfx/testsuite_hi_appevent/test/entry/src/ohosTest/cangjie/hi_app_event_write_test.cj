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
import std.collection.*
import ohos.hiviewdfx.hi_app_event.*
import ohos.hilog.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*

@Test
public class TestHiAppEventWrite {

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0300
     * @tc.name      : test_hiappevent_write_01
     * @tc.desc      : test Hiappevent test_hiappevent_write_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_hiappevent_write_01(): Unit {
        let cases_429 = [
            "test_event",
            "$cangjie_1"
        ]
        for (parameter_0 in cases_429) {
            try {
                var params = HashMap<String, EventValueType>(
                    [
                        ("int_data", IntValue(100)),
                        ("str_data", StringValue("strValue")),
                        ("flo_data", FloatValue(123.45)),
                        ("bool_data", BoolValue(true)),
                        ("arri32_data", ArrInt32([1, 2, 3])),
                        ("arrf64_data", ArrFloat64([1.2])),
                        ("arrstr_data", ArrString(["123"])),
                        ("arrbool_data", ArrBool([true]))
                    ]
                )
                var appInfo: AppEventInfo = AppEventInfo("cangjie_1", parameter_0, EventType.Fault, params)
                HiAppEvent.write(appInfo)
                @Expect(true)
            } catch (e: Exception) {
                @Expect(false)
            } finally {
            }

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0400
     * @tc.name      : test_hiappevent_write_02
     * @tc.desc      : test Hiappevent test_hiappevent_write_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_hiappevent_write_02(): Unit {
        let cases_430 = [
            ("1cangjie", "test_event", 11101001i32),
            ("cangjie1_", "test_event", 11101001i32),
            ("cangjie_123456789abcdefghabcdabcd", "test_event", 11101001i32),
            ("cangjie", "cangjie1_", 11101002i32),
            ("cangjie", "cangjie1234567898aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 11101002i32),
            ("cangjie", "", 11101002i32)
        ]
        for ((parameter_0, parameter_1, parameter_2) in cases_430) {
            try {
                var params = HashMap<String, EventValueType>(
                    [
                        ("int_data", IntValue(100)),
                        ("str_data", StringValue("strValue")),
                        ("flo_data", FloatValue(123.45)),
                        ("bool_data", BoolValue(true)),
                        ("arri32_data", ArrInt32([1, 2, 3])),
                        ("arrf64_data", ArrFloat64([1.2])),
                        ("arrstr_data", ArrString(["123"])),
                        ("arrbool_data", ArrBool([true]))
                    ]
                )
                var appInfo: AppEventInfo = AppEventInfo(parameter_0, parameter_1, EventType.Fault, params)
                HiAppEvent.write(appInfo)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, parameter_2)
            } finally {
            }

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1100
     * @tc.name      : test_hiappevent_write_09
     * @tc.desc      : test Hiappevent test_hiappevent_write_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_hiappevent_write_09(): Unit {
        Hilog.info(0, "test_hiappevent_write_09", "Test_hiappevent_write_09_start")
        try {
            var params = HashMap<String, EventValueType>(
                [
                    ("int_data", IntValue(100)),
                    ("str_data", StringValue("strValue")),
                    ("flo_data", FloatValue(123.45)),
                    ("bool_data", BoolValue(true)),
                    ("arri32_data", ArrInt32([1, 2, 3])),
                    ("arrf64_data", ArrFloat64([1.2])),
                    ("arrstr_data", ArrString(["123"])),
                    ("arrbool_data", ArrBool([true]))
                ]
            )
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Statistic, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "test_hiappevent_write_09", "Test_hiappevent_write_09_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_write_09", "Test_hiappevent_write_09_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_write_09", "Test_hiappevent_write_09_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1200
     * @tc.name      : test_hiappevent_write_10
     * @tc.desc      : test Hiappevent test_hiappevent_write_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_hiappevent_write_10(): Unit {
        Hilog.info(0, "test_hiappevent_write_10", "Test_hiappevent_write_10_start")
        try {
            var params = HashMap<String, EventValueType>(
                [
                    ("int_data", IntValue(100)),
                    ("str_data", StringValue("strValue")),
                    ("flo_data", FloatValue(123.45)),
                    ("bool_data", BoolValue(true)),
                    ("arri32_data", ArrInt32([1, 2, 3])),
                    ("arrf64_data", ArrFloat64([1.2])),
                    ("arrstr_data", ArrString(["123"])),
                    ("arrbool_data", ArrBool([true]))
                ]
            )
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Behavior, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "test_hiappevent_write_10", "Test_hiappevent_write_10_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_write_10", "Test_hiappevent_write_10_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_write_10", "Test_hiappevent_write_10_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1300
     * @tc.name      : test_hiappevent_write_11
     * @tc.desc      : test Hiappevent test_hiappevent_write_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_hiappevent_write_11(): Unit {
        Hilog.info(0, "test_hiappevent_write_11", "Test_hiappevent_write_11_start")
        try {
            var params = HashMap<String, EventValueType>(
                [
                    ("int_data", IntValue(100)),
                    ("str_data", StringValue("strValue")),
                    ("flo_data", FloatValue(123.45)),
                    ("bool_data", BoolValue(true)),
                    ("arri32_data", ArrInt32([1, 2, 3])),
                    ("arrf64_data", ArrFloat64([1.2])),
                    ("arrstr_data", ArrString(["123"])),
                    ("arrbool_data", ArrBool([true]))
                ]
            )
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Security, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "test_hiappevent_write_11", "Test_hiappevent_write_11_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_write_11", "Test_hiappevent_write_11_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_write_11", "Test_hiappevent_write_11_end")
        }
    }
}

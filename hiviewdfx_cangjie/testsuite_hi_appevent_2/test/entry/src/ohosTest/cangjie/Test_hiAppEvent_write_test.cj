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
public class Test_hiAppEvent_write {

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0300
     * @tc.name      : Test_hiappevent_write_01
     * @tc.desc      : test Hiappevent Test_hiappevent_write_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_01(): Unit {
        Hilog.info(0, "Test_hiappevent_write_01", "Test_hiappevent_write_01_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "Test_hiappevent_write_01", "Test_hiappevent_write_01_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_01", "Test_hiappevent_write_01_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_01", "Test_hiappevent_write_01_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0400
     * @tc.name      : Test_hiappevent_write_02
     * @tc.desc      : test Hiappevent Test_hiappevent_write_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_02(): Unit {
        Hilog.info(0, "Test_hiappevent_write_02", "Test_hiappevent_write_02_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("1cangjie", "test_event", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_02", "Test_hiappevent_write_02_fail")
        } catch (e: BusinessException) {
            @Expect(e.code,11101001)
            @Expect(e.message,"Invalid event domain.")
            Hilog.info(0, "Test_hiappevent_write_02", "Test_hiappevent_write_02_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_02", "Test_hiappevent_write_02_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0500
     * @tc.name      : Test_hiappevent_write_03
     * @tc.desc      : test Hiappevent Test_hiappevent_write_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_03(): Unit {
        Hilog.info(0, "Test_hiappevent_write_03", "Test_hiappevent_write_03_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie1_", "test_event", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_03", "Test_hiappevent_write_03_fail")
        } catch (e: BusinessException) {
            @Expect(e.code,11101001)
            @Expect(e.message,"Invalid event domain.")
            Hilog.info(0, "Test_hiappevent_write_03", "Test_hiappevent_write_03_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_03", "Test_hiappevent_write_03_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0600
     * @tc.name      : Test_hiappevent_write_04
     * @tc.desc      : test Hiappevent Test_hiappevent_write_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_04(): Unit {
        Hilog.info(0, "Test_hiappevent_write_04", "Test_hiappevent_write_04_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_123456789abcdefghabcdabcd", "test_event", EventType.Fault,
                params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_04", "Test_hiappevent_write_04_fail")
        } catch (e: BusinessException) {
            @Expect(e.code,11101001)
            @Expect(e.message,"Invalid event domain.")
            Hilog.info(0, "Test_hiappevent_write_04", "Test_hiappevent_write_04_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_04", "Test_hiappevent_write_04_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0700
     * @tc.name      : Test_hiappevent_write_05
     * @tc.desc      : test Hiappevent Test_hiappevent_write_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_05(): Unit {
        Hilog.info(0, "Test_hiappevent_write_05", "Test_hiappevent_write_05_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "Test_hiappevent_write_05", "Test_hiappevent_write_05_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_05", "Test_hiappevent_write_05_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_05", "Test_hiappevent_write_05_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0800
     * @tc.name      : Test_hiappevent_write_06
     * @tc.desc      : test Hiappevent Test_hiappevent_write_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_06(): Unit {
        Hilog.info(0, "Test_hiappevent_write_06", "Test_hiappevent_write_06_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie", "cangjie1_", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_06", "Test_hiappevent_write_06_fail")
        } catch (e: BusinessException) {
            @Expect(e.code,11101002)
            @Expect(e.message,"Invalid event name.")
            Hilog.info(0, "Test_hiappevent_write_06", "Test_hiappevent_write_06_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_06", "Test_hiappevent_write_06_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_0900
     * @tc.name      : Test_hiappevent_write_07
     * @tc.desc      : test Hiappevent Test_hiappevent_write_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_07(): Unit {
        Hilog.info(0, "Test_hiappevent_write_07", "Test_hiappevent_write_07_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie",
                "cangjie1234567898aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_07", "Test_hiappevent_write_07_fail")
        } catch (e: BusinessException) {
            @Expect(e.code,11101002)
            @Expect(e.message,"Invalid event name.")
            Hilog.info(0, "Test_hiappevent_write_07", "Test_hiappevent_write_07_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_07", "Test_hiappevent_write_07_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1000
     * @tc.name      : Test_hiappevent_write_08
     * @tc.desc      : test Hiappevent Test_hiappevent_write_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_08(): Unit {
        Hilog.info(0, "Test_hiappevent_write_08", "Test_hiappevent_write_08_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie", "", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_08", "Test_hiappevent_write_08_fail")
        } catch (e: BusinessException) {
            @Expect(e.code,11101002)
            @Expect(e.message,"Invalid event name.")
            Hilog.info(0, "Test_hiappevent_write_08", "Test_hiappevent_write_08_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_08", "Test_hiappevent_write_08_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1100
     * @tc.name      : Test_hiappevent_write_09
     * @tc.desc      : test Hiappevent Test_hiappevent_write_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_09(): Unit {
        Hilog.info(0, "Test_hiappevent_write_09", "Test_hiappevent_write_09_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Statistic, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "Test_hiappevent_write_09", "Test_hiappevent_write_09_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_09", "Test_hiappevent_write_09_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_09", "Test_hiappevent_write_09_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1200
     * @tc.name      : Test_hiappevent_write_10
     * @tc.desc      : test Hiappevent Test_hiappevent_write_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_10(): Unit {
        Hilog.info(0, "Test_hiappevent_write_10", "Test_hiappevent_write_10_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Behavior, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "Test_hiappevent_write_10", "Test_hiappevent_write_10_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_10", "Test_hiappevent_write_10_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_10", "Test_hiappevent_write_10_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_write_1300
     * @tc.name      : Test_hiappevent_write_11
     * @tc.desc      : test Hiappevent Test_hiappevent_write_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_write_11(): Unit {
        Hilog.info(0, "Test_hiappevent_write_11", "Test_hiappevent_write_11_start")
        try {
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Security, params)
            HiAppEvent.write(appInfo)
            @Expect(true)
            Hilog.info(0, "Test_hiappevent_write_11", "Test_hiappevent_write_11_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_write_11", "Test_hiappevent_write_11_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_write_11", "Test_hiappevent_write_11_end")
        }
    }

}

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
class Test_ohos_hiAppEvent {

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0100
     * @tc.name      : test_hiAppEvent_clearData_01
     * @tc.desc      : test Hiappevent test_hiAppEvent_clearData_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_clearData_01() {
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie1", "test_event", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_clearData_01", "Test_hiappevent_write_pass")
            HiAppEvent.clearData()
            Hilog.info(0, "test_hiAppEvent_clearData_01", "Test_hiappevent_clearData_pass")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0200
     * @tc.name      : test_hiAppEvent_addWatcher_01
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_01() {
        try {
            var condition = TriggerCondition(row: 1)
            Hilog.info(0, "test_hiAppEvent_addWatcher_01", "test_hiAppEvent_addWatcher_01:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_01",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_01", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_01", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_01", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_01", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_01", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0300
     * @tc.name      : test_hiAppEvent_addWatcher_02
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_02() {
        try {
            var condition = TriggerCondition(row: 2)
            Hilog.info(0, "test_hiAppEvent_addWatcher_02", "test_hiAppEvent_addWatcher_02:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_02",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_02", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_02", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_02", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_02", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_02", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0400
     * @tc.name      : test_hiAppEvent_addWatcher_03
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_03() {
        try {
            var condition = TriggerCondition(size: 137)
            Hilog.info(0, "test_hiAppEvent_addWatcher_03", "test_hiAppEvent_addWatcher_03:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_03",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_03", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_03", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_03", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_03", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_03", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0500
     * @tc.name      : test_hiAppEvent_addWatcher_04
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_04() {
        try {
            var condition = TriggerCondition(size: 140)
            Hilog.info(0, "test_hiAppEvent_addWatcher_04", "test_hiAppEvent_addWatcher_04:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_04",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_04", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_04", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_04", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_04", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_04", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0600
     * @tc.name      : test_hiAppEvent_addWatcher_05
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_05() {
        try {
            var condition = TriggerCondition(timeOut: 30)
            Hilog.info(0, "test_hiAppEvent_addWatcher_05", "test_hiAppEvent_addWatcher_05:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_05",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_05", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_05", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_05", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_05", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_05", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0700
     * @tc.name      : test_hiAppEvent_addWatcher_06
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_06() {
        try {
            var condition = TriggerCondition(timeOut: 0)
            Hilog.info(0, "test_hiAppEvent_addWatcher_06", "test_hiAppEvent_addWatcher_06:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_06",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_06", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_06", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_06", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_06", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_05", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0800
     * @tc.name      : test_hiAppEvent_addWatcher_07
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_07() {
        try {
            var condition = TriggerCondition(row: 1)
            Hilog.info(0, "test_hiAppEvent_addWatcher_07", "test_hiAppEvent_addWatcher_07:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_07",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_07", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_07", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_07", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_07", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_07", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_2", "test_event", EventType.Fault, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_07", "Test_hiappevent_write_02_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_0900
     * @tc.name      : test_hiAppEvent_addWatcher_08
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_08() {
        try {
            var condition = TriggerCondition(row: 1)
            var appEventFilter = [AppEventFilter("cangjie_1")]
            Hilog.info(0, "test_hiAppEvent_addWatcher_08", "test_hiAppEvent_addWatcher_08:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                appEventFilters: appEventFilter,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_08",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_08", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_08", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_08", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_08", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_08", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_2", "test_event", EventType.Fault, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_08", "Test_hiappevent_write_02_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1000
     * @tc.name      : test_hiAppEvent_addWatcher_09
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_09() {
        try {
            var condition = TriggerCondition(row: 1)
            var eventype: Array<EventType> = [EventType.Statistic]
            var appEventFilter = [AppEventFilter("cangjie_1", eventTypes: eventype)]
            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "test_hiAppEvent_addWatcher_09:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                appEventFilters: appEventFilter,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_09",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_09", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_1", "test_event", EventType.Statistic, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "Test_hiappevent_write_02_pass")
            var params_02 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_02: AppEventInfo = AppEventInfo("cangjie_1", "test_event", EventType.Security, params_02)
            HiAppEvent.write(appInfo_02)
            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "Test_hiappevent_write_03_pass")
            var params_03 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_03: AppEventInfo = AppEventInfo("cangjie_1", "test_event", EventType.Behavior, params_03)
            HiAppEvent.write(appInfo_03)
            Hilog.info(0, "test_hiAppEvent_addWatcher_09", "Test_hiappevent_write_04_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1100
     * @tc.name      : test_hiAppEvent_addWatcher_10
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_10() {
        try {
            var condition = TriggerCondition(row: 1)
            var name: Array<String> = ["test_event_02", "test_event_03"]
            var appEventFilter = [AppEventFilter("cangjie_1", names: name)]
            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "test_hiAppEvent_addWatcher_10:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                appEventFilters: appEventFilter,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_10",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_10", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event_01", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_1", "test_event_02", EventType.Statistic, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "Test_hiappevent_write_02_pass")
            var params_02 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_02: AppEventInfo = AppEventInfo("cangjie_1", "test_event_03", EventType.Security, params_02)
            HiAppEvent.write(appInfo_02)
            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "Test_hiappevent_write_03_pass")
            var params_03 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_03: AppEventInfo = AppEventInfo("cangjie_1", "test_event_04", EventType.Behavior, params_03)
            HiAppEvent.write(appInfo_03)
            Hilog.info(0, "test_hiAppEvent_addWatcher_10", "Test_hiappevent_write_04_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1200
     * @tc.name      : test_hiAppEvent_addWatcher_11
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_11() {
        try {
            var condition = TriggerCondition(row: 1, size: 142, timeOut: 1)
            var name: Array<String> = ["test_event_02", "test_event_03"]
            var eventype: Array<EventType> = [EventType.Security]
            var appEventFilter = [AppEventFilter("cangjie_1", names: name, eventTypes: eventype)]
            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "test_hiAppEvent_addWatcher_11:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                appEventFilters: appEventFilter,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_11",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_11", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event_01", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_1", "test_event_02", EventType.Statistic, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "Test_hiappevent_write_02_pass")
            var params_02 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_02: AppEventInfo = AppEventInfo("cangjie_1", "test_event_03", EventType.Security, params_02)
            HiAppEvent.write(appInfo_02)
            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "Test_hiappevent_write_03_pass")
            var params_03 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_03: AppEventInfo = AppEventInfo("cangjie_1", "test_event_04", EventType.Behavior, params_03)
            HiAppEvent.write(appInfo_03)
            Hilog.info(0, "test_hiAppEvent_addWatcher_11", "Test_hiappevent_write_04_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1300
     * @tc.name      : test_hiAppEvent_addWatcher_12
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_12() {
        try {
            var condition = TriggerCondition(row: 1)
            Hilog.info(0, "test_hiAppEvent_addWatcher_12", "test_hiAppEvent_addWatcher_12:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_12",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        holder.setSize(size - 1)
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_12", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_12", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_12", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_12", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_12", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1400
     * @tc.name      : test_hiAppEvent_addWatcher_13
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_13() {
        try {
            var condition = TriggerCondition(row: 1)
            Hilog.info(0, "test_hiAppEvent_addWatcher_13", "test_hiAppEvent_addWatcher_13:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_13",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        holder.setSize(size)
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_13", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_13", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_13", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_13", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            Hilog.info(0, "test_hiAppEvent_addWatcher_13", "Test_hiappevent_write_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1500
     * @tc.name      : test_hiAppEvent_addWatcher_14
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_14() {
        try {
            var condition = TriggerCondition(row: 1)
            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "test_hiAppEvent_addWatcher_14:start")
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_14",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        holder.setSize(142)
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_11", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(true)
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event_01", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_2", "test_event_02", EventType.Statistic, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "Test_hiappevent_write_02_pass")
            var params_02 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_02: AppEventInfo = AppEventInfo("cangjie_3", "test_event_03", EventType.Security, params_02)
            HiAppEvent.write(appInfo_02)
            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "Test_hiappevent_write_03_pass")
            var params_03 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_03: AppEventInfo = AppEventInfo("cangjie_4", "test_event_04", EventType.Behavior, params_03)
            HiAppEvent.write(appInfo_03)
            Hilog.info(0, "test_hiAppEvent_addWatcher_14", "Test_hiappevent_write_04_pass")
            HiAppEvent.removeWatcher(watcher)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1600
     * @tc.name      : test_hiAppEvent_addWatcher_15
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_15() {
        try {
            Hilog.info(0, "test_hiAppEvent_addWatcher_15", "test_hiAppEvent_addWatcher_15:start")
            var watcher = Watcher("watcher2")
            var holder = HiAppEvent.addWatcher(watcher)
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event_01", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_15", "Test_hiappevent_write_01_pass")
            if (let Some(v) <- holder) {
                while (let Some(v2) <- v.takeNext()) {
                    let eventPkg = v2
                    Hilog.info(0, "test_hiAppEvent_addWatcher_15", "HiAppEvent packageId=${eventPkg.packageId}")
                    Hilog.info(0, "test_hiAppEvent_addWatcher_15", "HiAppEvent row=${eventPkg.row}")
                    Hilog.info(0, "test_hiAppEvent_addWatcher_15", "HiAppEvent size=${eventPkg.size}")
                    for (i in 0..eventPkg.data.size) {
                        Hilog.info(0, "test_hiAppEvent_addWatcher_15", "HiAppEvent info=${eventPkg.data[i]}")
                    }
                }
            }
            HiAppEvent.removeWatcher(watcher)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1700
     * @tc.name      : test_hiAppEvent_addWatcher_16
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_16() {
        try {
            var condition = TriggerCondition(row: 1)
            let watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: {
                    row, size, holder => Hilog.info(0, "test_hiAppEvent_addWatcher_16",
                        "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                },
                onReceive: {
                    domain, AppEventGroups =>
                    Hilog.info(0, "test_hiAppEvent_addWatcher_16", "domain =${domain}")
                    let groupSize = AppEventGroups.size
                    for (i in 0..groupSize) {
                        Hilog.info(0, "test_hiAppEvent_addWatcher_16", "name =${AppEventGroups[i].name}")
                        let appInfosize = AppEventGroups[i].appEventInfos.size
                        for (j in 0..appInfosize) {
                            Hilog.info(0x0000, "test_hiAppEvent_addWatcher_16",
                                "appEventInfo name=${AppEventGroups[i].appEventInfos[j].name}", [])
                            Hilog.info(0x0000, "test_hiAppEvent_addWatcher_16",
                                "appEventInfo domain=${AppEventGroups[i].appEventInfos[j].domain}", [])
                            let paSize = AppEventGroups[i].appEventInfos[j].params.size
                            for (k in 0..paSize) {
                            }
                        }
                    }
                }
            )
            HiAppEvent.addWatcher(watcher)
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event_01", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_16", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_2", "test_event_02", EventType.Fault, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_16", "Test_hiappevent_write_02_pass")
            HiAppEvent.removeWatcher(watcher)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1800
     * @tc.name      : test_hiAppEvent_addWatcher_17
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_17() {
        try {
            var condition = TriggerCondition(row: 1)
            let watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onReceive: {
                    domain, AppEventGroups =>
                    Hilog.info(0, "test_hiAppEvent_addWatcher_17", "domain =${domain}")
                    let groupSize = AppEventGroups.size
                    for (i in 0..groupSize) {
                        Hilog.info(0, "test_hiAppEvent_addWatcher_17", "name =${AppEventGroups[i].name}")
                        let appInfosize = AppEventGroups[i].appEventInfos.size
                        for (j in 0..appInfosize) {
                            let paSize = AppEventGroups[i].appEventInfos[j].params.size
                            for (k in 0..paSize) {
                            }
                        }
                    }
                }
            )
            HiAppEvent.addWatcher(watcher)
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
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "test_event_01", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_17", "Test_hiappevent_write_01_pass")
            var params_01 = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_2", "test_event_02", EventType.Fault, params_01)
            HiAppEvent.write(appInfo_01)
            Hilog.info(0, "test_hiAppEvent_addWatcher_17", "Test_hiappevent_write_02_pass")
            HiAppEvent.removeWatcher(watcher)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_1900
     * @tc.name      : test_hiAppEvent_addWatcher_18
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_18() {
        try {
            let watcher = Watcher("watcher1$")
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102001)
            @Expect(e.message,"Invalid watcher name.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2000
     * @tc.name      : test_hiAppEvent_addWatcher_19
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_19() {
        try {
            let watcher = Watcher("1watcher1")
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102001)
            @Expect(e.message,"Invalid watcher name.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2100
     * @tc.name      : test_hiAppEvent_addWatcher_20
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_20() {
        try {
            let watcher = Watcher("")
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102001)
            @Expect(e.message,"Invalid watcher name.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2200
     * @tc.name      : test_hiAppEvent_addWatcher_21
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_21() {
        try {
            let watcher = Watcher("watcher_")
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102001)
            @Expect(e.message,"Invalid watcher name.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2300
     * @tc.name      : test_hiAppEvent_addWatcher_22
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_22
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_22() {
        try {
            let watcher = Watcher("watcher_1111111111111111111111111")
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102001)
            @Expect(e.message,"Invalid watcher name.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2400
     * @tc.name      : test_hiAppEvent_addWatcher_23
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_23
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_23() {
        try {
            var condition = TriggerCondition(size: -1)
            let watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_23",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_23", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_23", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_23", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_23", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102004)
            @Expect(e.message,"Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2500
     * @tc.name      : test_hiAppEvent_addWatcher_24
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_24
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_24() {
        try {
            var condition = TriggerCondition(row: -1)
            let watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_24",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_24", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_24", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_24", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_24", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102003)
            @Expect(e.message,"Invalid row value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2600
     * @tc.name      : test_hiAppEvent_addWatcher_25
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_25
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_25() {
        try {
            var condition = TriggerCondition(timeOut: -1)
            let watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_25",
                            "HiAppEvent onTrigger: curRow=${row}, curSize=${size}")
                        while (let Some(v) <- holder.takeNext()) {
                            let eventPkg = v
                            Hilog.info(0, "test_hiAppEvent_addWatcher_25", "HiAppEvent packageId=${eventPkg.packageId}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_25", "HiAppEvent row=${eventPkg.row}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_25", "HiAppEvent size=${eventPkg.size}")
                            for (i in 0..eventPkg.data.size) {
                                Hilog.info(0, "test_hiAppEvent_addWatcher_25", "HiAppEvent info=${eventPkg.data[i]}")
                            }
                        }
                    }
                )
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102005)
            @Expect(e.message,"Invalid timeout value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2700
     * @tc.name      : test_hiAppEvent_addWatcher_26
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_26
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_26() {
        try {
            var appEventFilter = [AppEventFilter("cangjie_1$")]
            let watcher = Watcher(
                "watcher1",
                appEventFilters: appEventFilter
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102002)
            @Expect(e.message,"Invalid filtering event domain.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2800
     * @tc.name      : test_hiAppEvent_addWatcher_27
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_27
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_27() {
        try {
            var appEventFilter = [AppEventFilter("cangjie_")]
            let watcher = Watcher(
                "watcher1",
                appEventFilters: appEventFilter
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102002)
            @Expect(e.message,"Invalid filtering event domain.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_2900
     * @tc.name      : test_hiAppEvent_addWatcher_28
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_28
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_28() {
        try {
            var appEventFilter = [AppEventFilter("1cangjie")]
            let watcher = Watcher(
                "watcher1",
                appEventFilters: appEventFilter
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102002)
            @Expect(e.message,"Invalid filtering event domain.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_3000
     * @tc.name      : test_hiAppEvent_addWatcher_29
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_29
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_29() {
        try {
            var appEventFilter = [AppEventFilter("")]
            let watcher = Watcher(
                "watcher1",
                appEventFilters: appEventFilter
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102002)
            @Expect(e.message,"Invalid filtering event domain.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_ohos_hiAppEvent_3100
     * @tc.name      : test_hiAppEvent_addWatcher_30
     * @tc.desc      : test Hiappevent test_hiAppEvent_addWatcher_30
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_30() {
        try {
            var appEventFilter = [AppEventFilter("cangjie_011111111")]
            let watcher = Watcher(
                "watcher1",
                appEventFilters: appEventFilter
            )
            HiAppEvent.addWatcher(watcher)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,11102002)
            @Expect(e.message,"Invalid filtering event domain.")
        }
    }
}

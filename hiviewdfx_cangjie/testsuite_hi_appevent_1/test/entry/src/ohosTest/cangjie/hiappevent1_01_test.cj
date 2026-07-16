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

import kit.AbilityKit.{BundleManager, BundleInfo}
import kit.PerformanceAnalysisKit.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.HashMap
import kit.PerformanceAnalysisKit.Event as hiappEventDep

@Test
class Test_hiappevent {
    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_0100
     * @tc.name      : test_hiAppEvent_addWatcher_01
     * @tc.desc      : test PerformanceAnalysisKit addWatcher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_01() {
        try {
            var condition = TriggerCondition(row: 1, size: 120, timeOut: 0)
            var appEventFilter = [AppEventFilter("cangjie_watcher", eventTypes: [EventType.Fault], names: ["test_event"]
            )]
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                appEventFilters: appEventFilter,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_01",
                            "HiAppEvent onTrigger: curRow=${row},curSize=${size}")
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
            var params: HashMap<String, EventValueType> =HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", EventValueType.StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_watcher", "test_event", EventType.Fault, params)
            HiAppEvent.write(appInfo)
            Hilog.info(0, "test_hiAppEvent_addWatcher_01", "Test_hiappevent_write_pass")
            sleepFor(1.second)
            HiAppEvent.removeWatcher(watcher)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_0200
     * @tc.name      : test_hiAppEvent_addWatcher_02
     * @tc.desc      : test PerformanceAnalysisKit addWatcher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_addWatcher_02() {
        try {
            var condition = TriggerCondition(row: 1)
            let watcher = Watcher(
                "watcher2",
                triggerCondition: condition,
                onReceive: {
                    domain, AppEventGroups =>
                    Hilog.info(0, "test_hiAppEvent_addWatcher_02", "domain =${domain}")
                    let groupSize = AppEventGroups.size
                    for (i in 0..groupSize) {
                        Hilog.info(0, "test_hiAppEvent_addWatcher_02", "name =${AppEventGroups[i].name}")
                        let appInfosize = AppEventGroups[i].appEventInfos.size
                        for (j in 0..appInfosize) {
                            Hilog.info(0, "test_hiAppEvent_addWatcher_02",
                                "appEventInfo name=${AppEventGroups[i].appEventInfos[j].name}")
                            Hilog.info(0, "test_hiAppEvent_addWatcher_02",
                                "appEventInfo domain=${AppEventGroups[i].appEventInfos[j].domain}")
                            let paSize = AppEventGroups[i].appEventInfos[j].params.size
                        }
                    }
                }
            )
            HiAppEvent.addWatcher(watcher)
            var params: HashMap<String, EventValueType> =HashMap<String, EventValueType>([
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
            var params_01: HashMap<String, EventValueType> = HashMap<String, EventValueType>(
                [("str_data", EventValueType.StringValue("strValue1111"))])
            var appInfo_01: AppEventInfo = AppEventInfo("cangjie_2", "test_event_02", EventType.Fault, params_01)
            HiAppEvent.write(appInfo_01)
            HiAppEvent.removeWatcher(watcher)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_0800
     * @tc.name      : test_hiAppEvent_write_01
     * @tc.desc      : test PerformanceAnalysisKit write
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_write_01() {
        try {
            var params: HashMap<String, EventValueType> = HashMap<String, EventValueType>(
                [("int_data", IntValue(100)), ("str_data", EventValueType.StringValue("strValue"))])
            var appInfo: AppEventInfo = AppEventInfo("test_domain", "test_event", EventType.Fault, params)
            HiAppEvent.write(appInfo)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_0900
     * @tc.name      : test_hiAppEvent_write_02
     * @tc.desc      : test PerformanceAnalysisKit write
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_write_02() {
        try {
            var params: HashMap<String, EventValueType> =HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", EventValueType.StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("test_domain", "test_event", EventType.Statistic, params)
            HiAppEvent.write(appInfo)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1000
     * @tc.name      : test_hiAppEvent_write_03
     * @tc.desc      : test PerformanceAnalysisKit write
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_write_03() {
        try {
            var params: HashMap<String, EventValueType> = HashMap<String, EventValueType>(
                [("int_data", IntValue(100)), ("str_data", EventValueType.StringValue("strValue"))])
            var appInfo: AppEventInfo = AppEventInfo("test_domain", "test_event", EventType.Security, params)
            HiAppEvent.write(appInfo)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1100
     * @tc.name      : test_hiAppEvent_write_04
     * @tc.desc      : test PerformanceAnalysisKit write
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_write_04() {
        try {
            var params: HashMap<String, EventValueType> = HashMap<String, EventValueType>(
                [("int_data", IntValue(100)), ("str_data", EventValueType.StringValue("strValue"))])
            var appInfo: AppEventInfo = AppEventInfo("test_domain", "test_event", EventType.Behavior, params)
            HiAppEvent.write(appInfo)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1200
     * @tc.name      : test_hiAppEvent_write_error
     * @tc.desc      : test PerformanceAnalysisKit write
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_write_error() {
        try {
            var params: HashMap<String, EventValueType> = HashMap<String, EventValueType>(
                [("", EventValueType.StringValue(""))])
            var appInfo: AppEventInfo = AppEventInfo("", "", EventType.Behavior, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "Invalid event domain.")
            Hilog.info(0, "test_hiAppEvent_write_error", "${e.message.toString()}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1300
     * @tc.name      : test_hiAppEvent_configure_01
     * @tc.desc      : test PerformanceAnalysisKit configure
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_configure_01() {
        try {
            var config: ConfigOption = ConfigOption(maxStorage: "100M", disable: false)
            HiAppEvent.configure(config)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1400
     * @tc.name      : test_hiAppEvent_configure_02
     * @tc.desc      : test PerformanceAnalysisKit configure
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_configure_02() {
        try {
            var config: ConfigOption = ConfigOption(maxStorage: "100M", disable: true)
            HiAppEvent.configure(config)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1500
     * @tc.name      : test_hiAppEvent_configure_error
     * @tc.desc      : test PerformanceAnalysisKit configure
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_configure_error() {
        try {
            var config: ConfigOption = ConfigOption(maxStorage: "", disable: true)
            HiAppEvent.configure(config)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "Invalid max storage quota value.")
            Hilog.info(0, "test_hiAppEvent_configure_error", "${e.message.toString()}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1600
     * @tc.name      : test_hiAppEvent_clearData
     * @tc.desc      : test PerformanceAnalysisKit clearData
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_clearData() {
        try {
            HiAppEvent.clearData()
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1700
     * @tc.name      : test_hiAppEvent_setUserId
     * @tc.desc      : test PerformanceAnalysisKit setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId() {
        try {
            HiAppEvent.setUserId("test_userID_name", "test_userID_value")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1800
     * @tc.name      : test_hiAppEvent_setUserId_error
     * @tc.desc      : test PerformanceAnalysisKit setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_error() {
        try {
            HiAppEvent.setUserId("", "")
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "Parameter error. Parameter verification failed.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_1900
     * @tc.name      : test_hiAppEvent_getUserId
     * @tc.desc      : test PerformanceAnalysisKit getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserId() {
        try {
            HiAppEvent.setUserId("test_getUserId_name", "test_getUserId_value")
            let userIdName = HiAppEvent.getUserId("test_getUserId_name")
            Hilog.info(0, "HiAppEvent", "HiAppEvent::test_getUserId is ${userIdName}")
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2000
     * @tc.name      : test_hiAppEvent_getUserId_error
     * @tc.desc      : test PerformanceAnalysisKit getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserId_error() {
        try {
            let userIdName = HiAppEvent.getUserId("")
            Hilog.info(0, "HiAppEvent", "HiAppEvent::test_getUserId is ${userIdName}")
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "Parameter error. Parameter verification failed.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2100
     * @tc.name      : test_hiAppEvent_setUserProperty_error
     * @tc.desc      : test PerformanceAnalysisKit setUserProperty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserProperty_error() {
        try {
            let test_userID_name = ""
            let test_userID_value: String = ""
            HiAppEvent.setUserProperty(test_userID_name, test_userID_value)
            HiAppEvent.setUserProperty(test_userID_name, test_userID_value)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "Parameter error. Parameter verification failed.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2200
     * @tc.name      : test_hiAppEvent_getUserProperty
     * @tc.desc      : test PerformanceAnalysisKit setUserProperty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserProperty() {
        try {
            let test_userID_name = "test_setUserProperty_01"
            let test_userID_value: String = "123456"
            HiAppEvent.setUserProperty(test_userID_name, test_userID_value)
            let userIdName = HiAppEvent.getUserProperty(test_userID_name)
            @Expect(userIdName,"123456")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2300
     * @tc.name      : test_hiAppEvent_getUserProperty_error
     * @tc.desc      : test PerformanceAnalysisKit setUserProperty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserProperty_error() {
        try {
            let userIdName = HiAppEvent.getUserProperty("")
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "Parameter error. Parameter verification failed.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2400
     * @tc.name      : test_hiAppEvent_AppEventReportConfig
     * @tc.desc      : test PerformanceAnalysisKit AppEventReportConfig
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_AppEventReportConfig() {
        try {
            let appEventReportConfig: AppEventReportConfig = AppEventReportConfig()
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2600
     * @tc.name      : test_hiAppEvent_AppEventGroup
     * @tc.desc      : test PerformanceAnalysisKit AppEventGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_AppEventGroup() {
        try {
            var params: HashMap<String, EventValueType> = HashMap<String, EventValueType>(
                [("int_data", IntValue(100)), ("str_data", EventValueType.StringValue("strValue"))])
            var appInfo: AppEventInfo = AppEventInfo("test_domain", "test_event", EventType.Statistic, params)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2700
     * @tc.name      : test_hiAppEvent_ValueType
     * @tc.desc      : test PerformanceAnalysisKit ValueType
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_ValueType() {
        let value_int = EventValueType.IntValue(123)
        let value_float = EventValueType.FloatValue(123.45)
        let value_string = EventValueType.StringValue("123")
        let value_bool = EventValueType.BoolValue(true)
        let value_arrstring = EventValueType.ArrString(["123"])
        let value_arrayi32 = EventValueType.ArrInt32([123])
        let value_arraybool = EventValueType.ArrBool([true])
        let value_arrayf64 = EventValueType.ArrFloat64([123.45])
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2800
     * @tc.name      : test_hiAppEvent_AppEventPackageHolder
     * @tc.desc      : test PerformanceAnalysisKit Watcher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_AppEventPackageHolder() {
        try {
            var condition = TriggerCondition(row: 1, size: 120, timeOut: 0)
            var appEventFilter = [AppEventFilter("cangjie_watcher")]
            var watcher = Watcher(
                "watcher1",
                triggerCondition: condition,
                appEventFilters: appEventFilter,
                onTrigger: Some(
                    {
                        row, size, holder =>
                        Hilog.info(0, "test_hiAppEvent_addWatcher_01",
                            "HiAppEvent onTrigger: curRow=${row},curSize=${size}")
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
            if (let Some(holder) <- HiAppEvent.addWatcher(watcher)) {
                holder.setSize(2)
                holder.takeNext()
            }
            @Expect(false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_2900
     * @tc.name      : test_hiAppEvent_Domain
     * @tc.desc      : test PerformanceAnalysisKit Domain
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_Domain() {
        @Expect(Domain.OS, "OS")
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_3000
     * @tc.name      : test_hiAppEvent_Param
     * @tc.desc      : test PerformanceAnalysisKit Param
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_Param() {
        @Expect(Param.USER_ID, "user_id")
        @Expect(Param.DISTRIBUTED_SERVICE_NAME, "ds_name")
        @Expect(Param.DISTRIBUTED_SERVICE_INSTANCE_ID , "ds_instance_id")
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hiappevent_3200
     * @tc.name      : Test_hiAppEvent_Event
     * @tc.desc      : test PerformanceAnalysisKit HEvent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_hiAppEvent_Event() {
        @Expect(hiappEventDep.APP_FREEZE, "APP_FREEZE")
    }
}

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
import kit.PerformanceAnalysisKit.Hilog

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.PerformanceAnalysisKit.*

@Test
class testAddWatcher_13 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120100
     * @tc.name      : TestCase_1201
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1201(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1201 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120200
     * @tc.name      : TestCase_1202
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1202(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1202 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120300
     * @tc.name      : TestCase_1203
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1203(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1203 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120400
     * @tc.name      : TestCase_1204
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1204(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1204 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120500
     * @tc.name      : TestCase_1205
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1205(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1205 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120600
     * @tc.name      : TestCase_1206
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1206(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1206 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120700
     * @tc.name      : TestCase_1207
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1207(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1207 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120800
     * @tc.name      : TestCase_1208
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1208(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1208 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_120900
     * @tc.name      : TestCase_1209
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1209(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1209 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121000
     * @tc.name      : TestCase_1210
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1210(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1210 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121100
     * @tc.name      : TestCase_1211
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1211(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1211 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121200
     * @tc.name      : TestCase_1212
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1212(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1212 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121300
     * @tc.name      : TestCase_1213
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1213(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1213 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121400
     * @tc.name      : TestCase_1214
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1214(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1214 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121500
     * @tc.name      : TestCase_1215
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1215(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1215 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121600
     * @tc.name      : TestCase_1216
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1216(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1216 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121700
     * @tc.name      : TestCase_1217
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1217(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1217 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121800
     * @tc.name      : TestCase_1218
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1218(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1218 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_121900
     * @tc.name      : TestCase_1219
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1219(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1219 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122000
     * @tc.name      : TestCase_1220
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1220(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1220 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122100
     * @tc.name      : TestCase_1221
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1221(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1221 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122200
     * @tc.name      : TestCase_1222
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1222(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1222 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122300
     * @tc.name      : TestCase_1223
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1223(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1223 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122400
     * @tc.name      : TestCase_1224
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1224(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1224 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122500
     * @tc.name      : TestCase_1225
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1225(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1225 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122600
     * @tc.name      : TestCase_1226
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1226(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1226 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122700
     * @tc.name      : TestCase_1227
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1227(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1227 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122800
     * @tc.name      : TestCase_1228
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1228(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1228 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_122900
     * @tc.name      : TestCase_1229
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1229(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1229 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123000
     * @tc.name      : TestCase_1230
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1230(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1230 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123100
     * @tc.name      : TestCase_1231
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1231(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1231 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123200
     * @tc.name      : TestCase_1232
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1232(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1232 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123300
     * @tc.name      : TestCase_1233
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1233(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1233 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123400
     * @tc.name      : TestCase_1234
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1234(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1234 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123500
     * @tc.name      : TestCase_1235
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1235(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1235 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123600
     * @tc.name      : TestCase_1236
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1236(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1236 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123700
     * @tc.name      : TestCase_1237
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1237(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1237 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123800
     * @tc.name      : TestCase_1238
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1238(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1238 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_123900
     * @tc.name      : TestCase_1239
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1239(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1239 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124000
     * @tc.name      : TestCase_1240
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1240(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1240 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124100
     * @tc.name      : TestCase_1241
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1241(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1241 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124200
     * @tc.name      : TestCase_1242
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1242(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1242 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124300
     * @tc.name      : TestCase_1243
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1243(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1243 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124400
     * @tc.name      : TestCase_1244
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1244(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1244 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124500
     * @tc.name      : TestCase_1245
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1245(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1245 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124600
     * @tc.name      : TestCase_1246
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1246(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1246 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124700
     * @tc.name      : TestCase_1247
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1247(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1247 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124800
     * @tc.name      : TestCase_1248
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1248(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1248 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_124900
     * @tc.name      : TestCase_1249
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1249(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1249 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125000
     * @tc.name      : TestCase_1250
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1250(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1250 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125100
     * @tc.name      : TestCase_1251
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1251(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1251 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125200
     * @tc.name      : TestCase_1252
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1252(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1252 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125300
     * @tc.name      : TestCase_1253
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1253(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1253 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125400
     * @tc.name      : TestCase_1254
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1254(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1254 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125500
     * @tc.name      : TestCase_1255
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1255(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1255 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125600
     * @tc.name      : TestCase_1256
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1256(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1256 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125700
     * @tc.name      : TestCase_1257
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1257(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1257 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125800
     * @tc.name      : TestCase_1258
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1258(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1258 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_125900
     * @tc.name      : TestCase_1259
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1259(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1259 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126000
     * @tc.name      : TestCase_1260
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1260(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1260 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126100
     * @tc.name      : TestCase_1261
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1261(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1261 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126200
     * @tc.name      : TestCase_1262
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1262(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1262 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126300
     * @tc.name      : TestCase_1263
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1263(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1263 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126400
     * @tc.name      : TestCase_1264
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1264(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1264 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126500
     * @tc.name      : TestCase_1265
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1265(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1265 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126600
     * @tc.name      : TestCase_1266
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1266(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1266 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126700
     * @tc.name      : TestCase_1267
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1267(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1267 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126800
     * @tc.name      : TestCase_1268
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1268(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1268 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_126900
     * @tc.name      : TestCase_1269
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1269(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1269 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127000
     * @tc.name      : TestCase_1270
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1270(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1270 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127100
     * @tc.name      : TestCase_1271
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1271(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1271 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127200
     * @tc.name      : TestCase_1272
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1272(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1272 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127300
     * @tc.name      : TestCase_1273
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1273(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1273 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127400
     * @tc.name      : TestCase_1274
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1274(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1274 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127500
     * @tc.name      : TestCase_1275
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1275(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1275 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127600
     * @tc.name      : TestCase_1276
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1276(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1276 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127700
     * @tc.name      : TestCase_1277
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1277(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1277 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127800
     * @tc.name      : TestCase_1278
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1278(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1278 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_127900
     * @tc.name      : TestCase_1279
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1279(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1279 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128000
     * @tc.name      : TestCase_1280
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1280(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1280 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128100
     * @tc.name      : TestCase_1281
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1281(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1281 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128200
     * @tc.name      : TestCase_1282
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1282(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1282 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128300
     * @tc.name      : TestCase_1283
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1283(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1283 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128400
     * @tc.name      : TestCase_1284
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1284(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1284 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128500
     * @tc.name      : TestCase_1285
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1285(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1285 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128600
     * @tc.name      : TestCase_1286
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1286(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1286 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128700
     * @tc.name      : TestCase_1287
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1287(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1287 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128800
     * @tc.name      : TestCase_1288
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1288(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1288 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_128900
     * @tc.name      : TestCase_1289
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1289(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1289 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129000
     * @tc.name      : TestCase_1290
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1290(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1290 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129100
     * @tc.name      : TestCase_1291
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1291(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1291 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129200
     * @tc.name      : TestCase_1292
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1292(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1292 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129300
     * @tc.name      : TestCase_1293
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1293(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1293 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129400
     * @tc.name      : TestCase_1294
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1294(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1294 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129500
     * @tc.name      : TestCase_1295
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1295(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1295 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129600
     * @tc.name      : TestCase_1296
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1296(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1296 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129700
     * @tc.name      : TestCase_1297
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1297(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1297 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129800
     * @tc.name      : TestCase_1298
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1298(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1298 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_129900
     * @tc.name      : TestCase_1299
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1299(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1299 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_130000
     * @tc.name      : TestCase_1300
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1300(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1300 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "addWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest","addWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest","define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_1300 ends.")
    }
}

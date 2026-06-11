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
class testAddWatcher_4 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_301 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_302 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_303 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_304 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_305 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_306 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_307 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_308 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_309 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_310 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_311 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_312 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_313 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_314 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_315 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_316 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_317 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_318 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_319 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_320 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_321 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_322 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_323 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_324 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_325 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_326 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_327 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_328 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_329 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_330 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_331 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_332 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_333 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_334 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_335 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_336 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_337 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_338 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_339 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_340 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_341 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_342 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_343 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_344 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_345 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_346 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_347 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_348 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_349 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_350 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_351 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_352 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_353 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_354 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_355 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_356 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_357 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_358 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_359 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_360 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_361 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_362 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_363 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_364 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_365 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_366 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_367 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_368 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_369 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_370 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_371 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_372 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_373 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_374 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_375 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_376 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_377 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_378 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_379 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_380 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_381 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_382 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_383 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_384 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_385 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_386 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_387 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_388 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_389 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_390 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_391 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_392 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_393 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_394 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_395 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_396 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_397 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_398 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_399 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_400 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_400 ends.")
    }
}

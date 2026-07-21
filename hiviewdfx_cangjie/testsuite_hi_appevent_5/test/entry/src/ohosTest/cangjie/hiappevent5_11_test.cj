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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.PerformanceAnalysisKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testRemoveWatcher_5 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_401 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_402 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_403 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_404 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_405 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_406 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_407 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_408 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_409 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_410 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_411 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41200
     * @tc.name      : TestCase_412
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_412 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41300
     * @tc.name      : TestCase_413
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_413 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41400
     * @tc.name      : TestCase_414
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_414 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41500
     * @tc.name      : TestCase_415
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_415 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41600
     * @tc.name      : TestCase_416
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_416 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41700
     * @tc.name      : TestCase_417
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_417 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41800
     * @tc.name      : TestCase_418
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_418 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_41900
     * @tc.name      : TestCase_419
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_419 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42000
     * @tc.name      : TestCase_420
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_420 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42100
     * @tc.name      : TestCase_421
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_421 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42200
     * @tc.name      : TestCase_422
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_422 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42300
     * @tc.name      : TestCase_423
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_423 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42400
     * @tc.name      : TestCase_424
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_424 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42500
     * @tc.name      : TestCase_425
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_425 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42600
     * @tc.name      : TestCase_426
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_426 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42700
     * @tc.name      : TestCase_427
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_427 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42800
     * @tc.name      : TestCase_428
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_428 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_42900
     * @tc.name      : TestCase_429
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_429 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43000
     * @tc.name      : TestCase_430
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_430 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43100
     * @tc.name      : TestCase_431
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_431 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43200
     * @tc.name      : TestCase_432
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_432 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43300
     * @tc.name      : TestCase_433
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_433 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43400
     * @tc.name      : TestCase_434
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_434 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43500
     * @tc.name      : TestCase_435
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_435 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43600
     * @tc.name      : TestCase_436
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_436 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43700
     * @tc.name      : TestCase_437
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_437 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43800
     * @tc.name      : TestCase_438
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_438 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_43900
     * @tc.name      : TestCase_439
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_439 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44000
     * @tc.name      : TestCase_440
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_440 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44100
     * @tc.name      : TestCase_441
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_441 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44200
     * @tc.name      : TestCase_442
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_442 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44300
     * @tc.name      : TestCase_443
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_443 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44400
     * @tc.name      : TestCase_444
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_444 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44500
     * @tc.name      : TestCase_445
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_445 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44600
     * @tc.name      : TestCase_446
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_446 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44700
     * @tc.name      : TestCase_447
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_447 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44800
     * @tc.name      : TestCase_448
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_448 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_44900
     * @tc.name      : TestCase_449
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_449 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45000
     * @tc.name      : TestCase_450
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_450 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_450 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45100
     * @tc.name      : TestCase_451
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_451(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_451 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45200
     * @tc.name      : TestCase_452
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_452(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_452 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45300
     * @tc.name      : TestCase_453
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_453(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_453 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45400
     * @tc.name      : TestCase_454
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_454(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_454 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45500
     * @tc.name      : TestCase_455
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_455(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_455 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45600
     * @tc.name      : TestCase_456
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_456(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_456 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45700
     * @tc.name      : TestCase_457
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_457(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_457 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45800
     * @tc.name      : TestCase_458
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_458(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_458 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_45900
     * @tc.name      : TestCase_459
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_459(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_459 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46000
     * @tc.name      : TestCase_460
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_460(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_460 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46100
     * @tc.name      : TestCase_461
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_461(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_461 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46200
     * @tc.name      : TestCase_462
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_462(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_462 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46300
     * @tc.name      : TestCase_463
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_463(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_463 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46400
     * @tc.name      : TestCase_464
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_464(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_464 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46500
     * @tc.name      : TestCase_465
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_465(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_465 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46600
     * @tc.name      : TestCase_466
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_466(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_466 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46700
     * @tc.name      : TestCase_467
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_467(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_467 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46800
     * @tc.name      : TestCase_468
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("1", "2", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_468(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_468 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 1i32, size: 2i32, timeOut: 2i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_46900
     * @tc.name      : TestCase_469
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_469(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_469 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47000
     * @tc.name      : TestCase_470
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_470(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_470 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_470 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47100
     * @tc.name      : TestCase_471
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_471(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_471 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47200
     * @tc.name      : TestCase_472
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_472(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_472 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47300
     * @tc.name      : TestCase_473
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_473(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_473 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47400
     * @tc.name      : TestCase_474
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_474(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_474 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47500
     * @tc.name      : TestCase_475
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_475(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_475 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47600
     * @tc.name      : TestCase_476
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_476(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_476 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47700
     * @tc.name      : TestCase_477
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_477(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_477 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47800
     * @tc.name      : TestCase_478
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_478(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_478 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_47900
     * @tc.name      : TestCase_479
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_479(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_479 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48000
     * @tc.name      : TestCase_480
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_480(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_480 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_480 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48100
     * @tc.name      : TestCase_481
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_481(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_481 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48200
     * @tc.name      : TestCase_482
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_482(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_482 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48300
     * @tc.name      : TestCase_483
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_483(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_483 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48400
     * @tc.name      : TestCase_484
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_484(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_484 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48500
     * @tc.name      : TestCase_485
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_485(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_485 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48600
     * @tc.name      : TestCase_486
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_486(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_486 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48700
     * @tc.name      : TestCase_487
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_487(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_487 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48800
     * @tc.name      : TestCase_488
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_488(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_488 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_48900
     * @tc.name      : TestCase_489
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_489(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_489 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49000
     * @tc.name      : TestCase_490
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_490(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_490 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49100
     * @tc.name      : TestCase_491
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_491(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_491 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49200
     * @tc.name      : TestCase_492
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_492(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_492 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Statistic, EventType.Statistic, EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49300
     * @tc.name      : TestCase_493
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_493(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_493 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Security, EventType.Security, EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49400
     * @tc.name      : TestCase_494
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_494(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_494 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 0i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Behavior, EventType.Behavior, EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49500
     * @tc.name      : TestCase_495
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_495(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_495 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: Array<EventType>())],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49600
     * @tc.name      : TestCase_496
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_496(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_496 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain2", names: [""], eventTypes: [EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49700
     * @tc.name      : TestCase_497
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_497(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_497 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event1"], eventTypes: [EventType.Statistic])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49800
     * @tc.name      : TestCase_498
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_498(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_498 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: ["Event2"], eventTypes: [EventType.Security])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_49900
     * @tc.name      : TestCase_499
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_499(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_499 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(), eventTypes: [EventType.Behavior])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50000
     * @tc.name      : TestCase_500
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_500(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_500 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
            appEventFilters: [AppEventFilter("domain1", names: Array<String>(),
                eventTypes: [EventType.Fault, EventType.Fault])],
            onTrigger: {
                curRow: Int32, curSize: Int32, holder: AppEventPackageHolder => Hilog.info(0, "cangjietest",
                    "removeWatcher onTrigger callback")
            },
            onReceive: {
                domain: String, appEventGroups: Array<AppEventGroup> => Hilog.info(0, "cangjietest",
                    "removeWatcher onReceive callback")
            })
        Hilog.info(0, "cangjietest", "define local variable eventHolder")
        let eventHolder = HiAppEvent.addWatcher(watcher)
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeWatcher(watcher)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_500 ends.")
    }
}

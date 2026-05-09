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
class testRemoveWatcher_6 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50100
     * @tc.name      : TestCase_501
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_501 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50200
     * @tc.name      : TestCase_502
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_502 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50300
     * @tc.name      : TestCase_503
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_503 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50400
     * @tc.name      : TestCase_504
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_504 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50500
     * @tc.name      : TestCase_505
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_505(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_505 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50600
     * @tc.name      : TestCase_506
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_506(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_506 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50700
     * @tc.name      : TestCase_507
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_507(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_507 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50800
     * @tc.name      : TestCase_508
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_508(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_508 begins.")
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
        Hilog.info(0, "cangjietest", "testcase TestCase_508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_50900
     * @tc.name      : TestCase_509
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_509(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_509 begins.")
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
        Hilog.info(0, "cangjietest", "testcase TestCase_509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51000
     * @tc.name      : TestCase_510
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_510(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_510 begins.")
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
        Hilog.info(0, "cangjietest", "testcase TestCase_510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51100
     * @tc.name      : TestCase_511
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_511(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_511 begins.")
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
        Hilog.info(0, "cangjietest", "testcase TestCase_511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51200
     * @tc.name      : TestCase_512
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_512(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_512 begins.")
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
        Hilog.info(0, "cangjietest", "testcase TestCase_512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51300
     * @tc.name      : TestCase_513
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_513(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_513 begins.")
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
        Hilog.info(0, "cangjietest", "testcase TestCase_513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51400
     * @tc.name      : TestCase_514
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_514(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_514 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51500
     * @tc.name      : TestCase_515
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_515(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_515 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51600
     * @tc.name      : TestCase_516
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_516(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_516 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51700
     * @tc.name      : TestCase_517
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_517(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_517 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51800
     * @tc.name      : TestCase_518
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_518(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_518 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_51900
     * @tc.name      : TestCase_519
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_519(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_519 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52000
     * @tc.name      : TestCase_520
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_520(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_520 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52100
     * @tc.name      : TestCase_521
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_521(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_521 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52200
     * @tc.name      : TestCase_522
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_522(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_522 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52300
     * @tc.name      : TestCase_523
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_523(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_523 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52400
     * @tc.name      : TestCase_524
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_524(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_524 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52500
     * @tc.name      : TestCase_525
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_525(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_525 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52600
     * @tc.name      : TestCase_526
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_526(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_526 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52700
     * @tc.name      : TestCase_527
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_527(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_527 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52800
     * @tc.name      : TestCase_528
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_528(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_528 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_52900
     * @tc.name      : TestCase_529
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_529(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_529 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53000
     * @tc.name      : TestCase_530
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_530(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_530 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53100
     * @tc.name      : TestCase_531
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_531(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_531 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53200
     * @tc.name      : TestCase_532
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_532(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_532 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53300
     * @tc.name      : TestCase_533
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_533(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_533 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53400
     * @tc.name      : TestCase_534
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_534(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_534 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53500
     * @tc.name      : TestCase_535
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_535(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_535 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53600
     * @tc.name      : TestCase_536
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_536(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_536 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53700
     * @tc.name      : TestCase_537
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_537(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_537 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53800
     * @tc.name      : TestCase_538
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_538(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_538 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_53900
     * @tc.name      : TestCase_539
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_539(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_539 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54000
     * @tc.name      : TestCase_540
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_540(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_540 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54100
     * @tc.name      : TestCase_541
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_541(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_541 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54200
     * @tc.name      : TestCase_542
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_542(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_542 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54300
     * @tc.name      : TestCase_543
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_543(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_543 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54400
     * @tc.name      : TestCase_544
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_544(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_544 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54500
     * @tc.name      : TestCase_545
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_545(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_545 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54600
     * @tc.name      : TestCase_546
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "0", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_546(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_546 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 0i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54700
     * @tc.name      : TestCase_547
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_547(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_547 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54800
     * @tc.name      : TestCase_548
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_548(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_548 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_54900
     * @tc.name      : TestCase_549
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_549(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_549 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55000
     * @tc.name      : TestCase_550
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_550(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_550 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55100
     * @tc.name      : TestCase_551
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_551(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_551 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55200
     * @tc.name      : TestCase_552
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_552(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_552 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55300
     * @tc.name      : TestCase_553
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_553(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_553 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55400
     * @tc.name      : TestCase_554
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_554(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_554 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55500
     * @tc.name      : TestCase_555
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_555(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_555 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55600
     * @tc.name      : TestCase_556
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_556(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_556 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55700
     * @tc.name      : TestCase_557
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_557(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_557 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55800
     * @tc.name      : TestCase_558
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_558(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_558 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_55900
     * @tc.name      : TestCase_559
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_559(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_559 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56000
     * @tc.name      : TestCase_560
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_560(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_560 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56100
     * @tc.name      : TestCase_561
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_561(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_561 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56200
     * @tc.name      : TestCase_562
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_562(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_562 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56300
     * @tc.name      : TestCase_563
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_563(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_563 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56400
     * @tc.name      : TestCase_564
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_564(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_564 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56500
     * @tc.name      : TestCase_565
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_565(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_565 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56600
     * @tc.name      : TestCase_566
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_566(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_566 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56700
     * @tc.name      : TestCase_567
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_567(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_567 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56800
     * @tc.name      : TestCase_568
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_568(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_568 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_56900
     * @tc.name      : TestCase_569
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_569(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_569 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57000
     * @tc.name      : TestCase_570
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_570(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_570 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57100
     * @tc.name      : TestCase_571
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_571(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_571 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57200
     * @tc.name      : TestCase_572
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_572(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_572 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57300
     * @tc.name      : TestCase_573
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_573(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_573 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57400
     * @tc.name      : TestCase_574
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_574(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_574 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57500
     * @tc.name      : TestCase_575
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_575(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_575 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57600
     * @tc.name      : TestCase_576
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_576(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_576 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57700
     * @tc.name      : TestCase_577
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_577(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_577 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57800
     * @tc.name      : TestCase_578
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_578(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_578 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_57900
     * @tc.name      : TestCase_579
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_579(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_579 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58000
     * @tc.name      : TestCase_580
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_580(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_580 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58100
     * @tc.name      : TestCase_581
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_581(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_581 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58200
     * @tc.name      : TestCase_582
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_582(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_582 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58300
     * @tc.name      : TestCase_583
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_583(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_583 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58400
     * @tc.name      : TestCase_584
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_584(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_584 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58500
     * @tc.name      : TestCase_585
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_585(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_585 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58600
     * @tc.name      : TestCase_586
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_586(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_586 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58700
     * @tc.name      : TestCase_587
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_587(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_587 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58800
     * @tc.name      : TestCase_588
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_588(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_588 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_58900
     * @tc.name      : TestCase_589
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_589(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_589 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59000
     * @tc.name      : TestCase_590
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_590(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_590 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59100
     * @tc.name      : TestCase_591
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_591(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_591 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59200
     * @tc.name      : TestCase_592
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_592(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_592 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59300
     * @tc.name      : TestCase_593
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_593(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_593 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59400
     * @tc.name      : TestCase_594
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_594(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_594 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59500
     * @tc.name      : TestCase_595
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_595(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_595 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59600
     * @tc.name      : TestCase_596
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_596(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_596 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59700
     * @tc.name      : TestCase_597
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_597(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_597 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59800
     * @tc.name      : TestCase_598
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_598(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_598 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_59900
     * @tc.name      : TestCase_599
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_599(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_599 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_RemoveWatcher_60000
     * @tc.name      : TestCase_600
     * @tc.desc      : hiappevent remove watcher "watcher1", triggerCondition("2", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_600(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_600 begins.")
        Hilog.info(0, "cangjietest", "define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 2i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest", "testcase TestCase_600 ends.")
    }
}

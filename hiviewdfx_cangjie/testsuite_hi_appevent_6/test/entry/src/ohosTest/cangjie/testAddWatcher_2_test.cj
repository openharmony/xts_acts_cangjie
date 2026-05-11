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
class testAddWatcher_2 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_101 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_102 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_103 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_104 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_105 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_106 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_107 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_108 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_109 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_110 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_111 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_112 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_113 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_114 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_115 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_116 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_117 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_118 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_119 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_120 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_121 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_122 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_123 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_124 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_125 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_126 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_127 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_128 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_129 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_130 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_131 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_132 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_133 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_134 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_135 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_136 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_137 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_138 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_139 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_140 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_141 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_142 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_143 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_144 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_145 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_146 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_147 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_148 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_149 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_150 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_151 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_152 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_153 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_154 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_155 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_156 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_157 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_158 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_159 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_160 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_161 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_162 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_163 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_164 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_165 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_166 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_167 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_168 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_169 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_170 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_171 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_172 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_173 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_174 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_175 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_176 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_177 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_178 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_179 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_180 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_181 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_182 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_183 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_184 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_185 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_186 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_187 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_188 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_189 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_190 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_191 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_192 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_193 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_194 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_195 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_196 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_197 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_198 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_199 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : hiappevent add watcher "watcher1", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_200 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher1", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_200 ends.")
    }
}

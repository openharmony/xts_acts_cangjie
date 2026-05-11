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
class testAddWatcher_9 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80100
     * @tc.name      : TestCase_801
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_801(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_801 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80200
     * @tc.name      : TestCase_802
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_802(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_802 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80300
     * @tc.name      : TestCase_803
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_803(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_803 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80400
     * @tc.name      : TestCase_804
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_804(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_804 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80500
     * @tc.name      : TestCase_805
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_805(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_805 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80600
     * @tc.name      : TestCase_806
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_806(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_806 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80700
     * @tc.name      : TestCase_807
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_807(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_807 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80800
     * @tc.name      : TestCase_808
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_808(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_808 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_80900
     * @tc.name      : TestCase_809
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_809(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_809 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81000
     * @tc.name      : TestCase_810
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_810(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_810 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81100
     * @tc.name      : TestCase_811
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_811(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_811 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81200
     * @tc.name      : TestCase_812
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_812(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_812 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81300
     * @tc.name      : TestCase_813
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_813(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_813 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81400
     * @tc.name      : TestCase_814
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_814(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_814 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81500
     * @tc.name      : TestCase_815
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_815(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_815 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81600
     * @tc.name      : TestCase_816
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_816(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_816 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81700
     * @tc.name      : TestCase_817
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_817(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_817 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81800
     * @tc.name      : TestCase_818
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_818(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_818 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_81900
     * @tc.name      : TestCase_819
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_819(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_819 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82000
     * @tc.name      : TestCase_820
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_820(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_820 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82100
     * @tc.name      : TestCase_821
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_821(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_821 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82200
     * @tc.name      : TestCase_822
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_822(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_822 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82300
     * @tc.name      : TestCase_823
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_823(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_823 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82400
     * @tc.name      : TestCase_824
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_824(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_824 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82500
     * @tc.name      : TestCase_825
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_825(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_825 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82600
     * @tc.name      : TestCase_826
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_826(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_826 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82700
     * @tc.name      : TestCase_827
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_827(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_827 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82800
     * @tc.name      : TestCase_828
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_828(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_828 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_82900
     * @tc.name      : TestCase_829
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_829(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_829 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83000
     * @tc.name      : TestCase_830
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_830(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_830 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83100
     * @tc.name      : TestCase_831
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_831(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_831 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83200
     * @tc.name      : TestCase_832
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_832(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_832 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83300
     * @tc.name      : TestCase_833
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_833(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_833 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83400
     * @tc.name      : TestCase_834
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_834(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_834 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83500
     * @tc.name      : TestCase_835
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_835(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_835 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83600
     * @tc.name      : TestCase_836
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_836(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_836 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83700
     * @tc.name      : TestCase_837
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_837(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_837 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83800
     * @tc.name      : TestCase_838
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_838(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_838 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_83900
     * @tc.name      : TestCase_839
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_839(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_839 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84000
     * @tc.name      : TestCase_840
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_840(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_840 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84100
     * @tc.name      : TestCase_841
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_841(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_841 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84200
     * @tc.name      : TestCase_842
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_842(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_842 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84300
     * @tc.name      : TestCase_843
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_843(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_843 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84400
     * @tc.name      : TestCase_844
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_844(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_844 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84500
     * @tc.name      : TestCase_845
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_845(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_845 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84600
     * @tc.name      : TestCase_846
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_846(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_846 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84700
     * @tc.name      : TestCase_847
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_847(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_847 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84800
     * @tc.name      : TestCase_848
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_848(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_848 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_84900
     * @tc.name      : TestCase_849
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_849(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_849 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85000
     * @tc.name      : TestCase_850
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_850(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_850 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85100
     * @tc.name      : TestCase_851
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_851(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_851 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85200
     * @tc.name      : TestCase_852
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_852(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_852 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85300
     * @tc.name      : TestCase_853
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_853(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_853 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85400
     * @tc.name      : TestCase_854
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_854(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_854 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85500
     * @tc.name      : TestCase_855
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_855(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_855 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85600
     * @tc.name      : TestCase_856
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_856(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_856 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85700
     * @tc.name      : TestCase_857
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_857(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_857 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85800
     * @tc.name      : TestCase_858
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "1", "2").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_858(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_858 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 1i32, timeOut: 2i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_85900
     * @tc.name      : TestCase_859
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_859(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_859 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86000
     * @tc.name      : TestCase_860
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_860(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_860 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86100
     * @tc.name      : TestCase_861
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_861(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_861 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86200
     * @tc.name      : TestCase_862
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_862(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_862 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86300
     * @tc.name      : TestCase_863
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_863(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_863 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86400
     * @tc.name      : TestCase_864
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_864(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_864 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86500
     * @tc.name      : TestCase_865
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_865(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_865 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86600
     * @tc.name      : TestCase_866
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_866(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_866 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86700
     * @tc.name      : TestCase_867
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_867(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_867 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86800
     * @tc.name      : TestCase_868
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_868(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_868 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_86900
     * @tc.name      : TestCase_869
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_869(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_869 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87000
     * @tc.name      : TestCase_870
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_870(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_870 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87100
     * @tc.name      : TestCase_871
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_871(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_871 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87200
     * @tc.name      : TestCase_872
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_872(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_872 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87300
     * @tc.name      : TestCase_873
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_873(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_873 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87400
     * @tc.name      : TestCase_874
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_874(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_874 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87500
     * @tc.name      : TestCase_875
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_875(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_875 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87600
     * @tc.name      : TestCase_876
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_876(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_876 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87700
     * @tc.name      : TestCase_877
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_877(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_877 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87800
     * @tc.name      : TestCase_878
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_878(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_878 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_87900
     * @tc.name      : TestCase_879
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_879(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_879 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88000
     * @tc.name      : TestCase_880
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_880(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_880 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88100
     * @tc.name      : TestCase_881
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_881(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_881 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88200
     * @tc.name      : TestCase_882
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_882(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_882 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88300
     * @tc.name      : TestCase_883
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_883(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_883 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88400
     * @tc.name      : TestCase_884
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_884(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_884 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 0i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88500
     * @tc.name      : TestCase_885
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_885(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_885 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88600
     * @tc.name      : TestCase_886
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_886(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_886 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88700
     * @tc.name      : TestCase_887
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_887(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_887 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88800
     * @tc.name      : TestCase_888
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_888(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_888 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_88900
     * @tc.name      : TestCase_889
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_889(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_889 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89000
     * @tc.name      : TestCase_890
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_890(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_890 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89100
     * @tc.name      : TestCase_891
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_891(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_891 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89200
     * @tc.name      : TestCase_892
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_892(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_892 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89300
     * @tc.name      : TestCase_893
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_893(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_893 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89400
     * @tc.name      : TestCase_894
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_894(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_894 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89500
     * @tc.name      : TestCase_895
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_895(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_895 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89600
     * @tc.name      : TestCase_896
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_896(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_896 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89700
     * @tc.name      : TestCase_897
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_897(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_897 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89800
     * @tc.name      : TestCase_898
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_898(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_898 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_89900
     * @tc.name      : TestCase_899
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_899(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_899 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AddWatcher_90000
     * @tc.name      : TestCase_900
     * @tc.desc      : hiappevent add watcher "watcher2", triggerCondition("0", "2", "1").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_900(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_900 begins.")
        Hilog.info(0, "cangjietest","define local variable watcher")
        let watcher = Watcher("watcher2", triggerCondition: TriggerCondition(row: 0i32, size: 2i32, timeOut: 1i32),
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
        Hilog.info(0, "cangjietest","testcase TestCase_900 ends.")
    }
}

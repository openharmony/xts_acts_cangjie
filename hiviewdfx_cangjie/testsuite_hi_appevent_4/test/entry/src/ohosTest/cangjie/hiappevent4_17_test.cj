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
import std.regex.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testAddProcessor_7 {
    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60100
     * @tc.name      : TestCase_601
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_601(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_601 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_601 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60200
     * @tc.name      : TestCase_602
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_602(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_602 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_602 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60300
     * @tc.name      : TestCase_603
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_603(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_603 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_603 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60400
     * @tc.name      : TestCase_604
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_604(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_604 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_604 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60500
     * @tc.name      : TestCase_605
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_605(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_605 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_605 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60600
     * @tc.name      : TestCase_606
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_606(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_606 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_606 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60700
     * @tc.name      : TestCase_607
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_607(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_607 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_607 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60800
     * @tc.name      : TestCase_608
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_608(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_608 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_608 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_60900
     * @tc.name      : TestCase_609
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_609(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_609 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_609 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61000
     * @tc.name      : TestCase_610
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_610(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_610 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_610 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61100
     * @tc.name      : TestCase_611
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_611(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_611 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_611 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61200
     * @tc.name      : TestCase_612
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_612(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_612 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_612 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61300
     * @tc.name      : TestCase_613
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_613(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_613 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_613 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61400
     * @tc.name      : TestCase_614
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_614(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_614 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_614 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61500
     * @tc.name      : TestCase_615
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_615(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_615 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_615 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61600
     * @tc.name      : TestCase_616
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_616(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_616 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"), AppEventReportConfig(domain: "a11", name: "A11")])
        )
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_616 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61700
     * @tc.name      : TestCase_617
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_617(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_617 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_617 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61800
     * @tc.name      : TestCase_618
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_618(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_618 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_618 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_61900
     * @tc.name      : TestCase_619
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_619(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_619 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_619 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62000
     * @tc.name      : TestCase_620
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_620(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_620 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"), AppEventReportConfig(name: "$a1", isRealTime: true
                )]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_620 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62100
     * @tc.name      : TestCase_621
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_621(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_621 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62200
     * @tc.name      : TestCase_622
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_622(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_622 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_622 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62300
     * @tc.name      : TestCase_623
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_623(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_623 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_623 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62400
     * @tc.name      : TestCase_624
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_624(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_624 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_624 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62500
     * @tc.name      : TestCase_625
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_625(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_625 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_625 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62600
     * @tc.name      : TestCase_626
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_626(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_626 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_626 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62700
     * @tc.name      : TestCase_627
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_627(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_627 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_627 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62800
     * @tc.name      : TestCase_628
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_628(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_628 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_628 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_62900
     * @tc.name      : TestCase_629
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_629(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_629 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_629 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63000
     * @tc.name      : TestCase_630
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_630(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_630 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_630 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63100
     * @tc.name      : TestCase_631
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_631(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_631 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_631 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63200
     * @tc.name      : TestCase_632
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_632(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_632 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_632 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63300
     * @tc.name      : TestCase_633
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_633(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_633 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_633 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63400
     * @tc.name      : TestCase_634
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_634(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_634 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_634 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63500
     * @tc.name      : TestCase_635
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_635(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_635 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_635 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63600
     * @tc.name      : TestCase_636
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_636(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_636 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_636 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63700
     * @tc.name      : TestCase_637
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_637(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_637 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_637 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63800
     * @tc.name      : TestCase_638
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_638(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_638 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_638 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_63900
     * @tc.name      : TestCase_639
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_639(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_639 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_639 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64000
     * @tc.name      : TestCase_640
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_640(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_640 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_640 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64100
     * @tc.name      : TestCase_641
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_641(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_641 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_641 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64200
     * @tc.name      : TestCase_642
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_642(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_642 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_642 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64300
     * @tc.name      : TestCase_643
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_643(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_643 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_643 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64400
     * @tc.name      : TestCase_644
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_644(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_644 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_644 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64500
     * @tc.name      : TestCase_645
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_645(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_645 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_645 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64600
     * @tc.name      : TestCase_646
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_646(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_646 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_646 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64700
     * @tc.name      : TestCase_647
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_647(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_647 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_647 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64800
     * @tc.name      : TestCase_648
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_648(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_648 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_648 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_64900
     * @tc.name      : TestCase_649
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_649(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_649 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_649 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65000
     * @tc.name      : TestCase_650
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_650(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_650 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_650 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65100
     * @tc.name      : TestCase_651
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_651(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_651 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65200
     * @tc.name      : TestCase_652
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_652(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_652 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65300
     * @tc.name      : TestCase_653
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_653(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_653 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65400
     * @tc.name      : TestCase_654
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_654(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_654 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65500
     * @tc.name      : TestCase_655
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_655(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_655 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65600
     * @tc.name      : TestCase_656
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_656(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_656 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65700
     * @tc.name      : TestCase_657
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_657(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_657 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65800
     * @tc.name      : TestCase_658
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_658(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_658 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_65900
     * @tc.name      : TestCase_659
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_659(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_659 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66000
     * @tc.name      : TestCase_660
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_660(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_660 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66100
     * @tc.name      : TestCase_661
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_661(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_661 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66200
     * @tc.name      : TestCase_662
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_662(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_662 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66300
     * @tc.name      : TestCase_663
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_663(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_663 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66400
     * @tc.name      : TestCase_664
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_664(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_664 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true), AppEventReportConfig(domain: "a11", name: "A11"
                )]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66500
     * @tc.name      : TestCase_665
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_665(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_665 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66600
     * @tc.name      : TestCase_666
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_666(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_666 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66700
     * @tc.name      : TestCase_667
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_667(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_667 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66800
     * @tc.name      : TestCase_668
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_668(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_668 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_66900
     * @tc.name      : TestCase_669
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_669(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_669 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67000
     * @tc.name      : TestCase_670
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_670(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_670 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67100
     * @tc.name      : TestCase_671
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_671(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_671 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67200
     * @tc.name      : TestCase_672
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_672(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_672 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67300
     * @tc.name      : TestCase_673
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_673(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_673 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67400
     * @tc.name      : TestCase_674
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_674(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_674 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67500
     * @tc.name      : TestCase_675
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_675(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_675 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67600
     * @tc.name      : TestCase_676
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_676(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_676 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67700
     * @tc.name      : TestCase_677
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_677(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_677 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67800
     * @tc.name      : TestCase_678
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_678(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_678 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_67900
     * @tc.name      : TestCase_679
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_679(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_679 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68000
     * @tc.name      : TestCase_680
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_680(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_680 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68100
     * @tc.name      : TestCase_681
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_681(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_681 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68200
     * @tc.name      : TestCase_682
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_682(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_682 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68300
     * @tc.name      : TestCase_683
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_683(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_683 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68400
     * @tc.name      : TestCase_684
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_684(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_684 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68500
     * @tc.name      : TestCase_685
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_685(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_685 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68600
     * @tc.name      : TestCase_686
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_686(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_686 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68700
     * @tc.name      : TestCase_687
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_687(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_687 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68800
     * @tc.name      : TestCase_688
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_688(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_688 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_68900
     * @tc.name      : TestCase_689
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_689(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_689 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69000
     * @tc.name      : TestCase_690
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_690(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_690 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69100
     * @tc.name      : TestCase_691
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_691(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_691 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69200
     * @tc.name      : TestCase_692
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_692(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_692 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69300
     * @tc.name      : TestCase_693
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_693(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_693 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69400
     * @tc.name      : TestCase_694
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_694(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_694 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69500
     * @tc.name      : TestCase_695
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_695(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_695 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69600
     * @tc.name      : TestCase_696
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_696(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_696 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69700
     * @tc.name      : TestCase_697
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_697(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_697 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69800
     * @tc.name      : TestCase_698
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_698(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_698 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_69900
     * @tc.name      : TestCase_699
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_699(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_699 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_70000
     * @tc.name      : TestCase_700
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.addProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_700(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_700 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        @Expect(returnCode == -1i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_700 ends.")
    }
}

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
import std.regex.*

@Test
class testRemoveProcessor_12 {
    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110100
     * @tc.name      : TestCase_1101
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1101(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1101 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110200
     * @tc.name      : TestCase_1102
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1102(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1102 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110300
     * @tc.name      : TestCase_1103
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1103(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1103 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110400
     * @tc.name      : TestCase_1104
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1104(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1104 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110500
     * @tc.name      : TestCase_1105
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1105(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1105 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110600
     * @tc.name      : TestCase_1106
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1106(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1106 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110700
     * @tc.name      : TestCase_1107
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1107(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1107 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110800
     * @tc.name      : TestCase_1108
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1108(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1108 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_110900
     * @tc.name      : TestCase_1109
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1109(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1109 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111000
     * @tc.name      : TestCase_1110
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1110(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1110 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111100
     * @tc.name      : TestCase_1111
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1111(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1111 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111200
     * @tc.name      : TestCase_1112
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1112(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1112 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111300
     * @tc.name      : TestCase_1113
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1113(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1113 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111400
     * @tc.name      : TestCase_1114
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1114(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1114 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111500
     * @tc.name      : TestCase_1115
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1115(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1115 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111600
     * @tc.name      : TestCase_1116
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1116(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1116 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111700
     * @tc.name      : TestCase_1117
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1117(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1117 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111800
     * @tc.name      : TestCase_1118
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1118(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1118 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_111900
     * @tc.name      : TestCase_1119
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1119(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1119 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112000
     * @tc.name      : TestCase_1120
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1120(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1120 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112100
     * @tc.name      : TestCase_1121
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1121(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1121 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112200
     * @tc.name      : TestCase_1122
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1122(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1122 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112300
     * @tc.name      : TestCase_1123
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1123(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1123 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112400
     * @tc.name      : TestCase_1124
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1124(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1124 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112500
     * @tc.name      : TestCase_1125
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1125(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1125 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112600
     * @tc.name      : TestCase_1126
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1126(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1126 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112700
     * @tc.name      : TestCase_1127
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1127(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1127 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112800
     * @tc.name      : TestCase_1128
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1128(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1128 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_112900
     * @tc.name      : TestCase_1129
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1129(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1129 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113000
     * @tc.name      : TestCase_1130
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1130(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1130 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113100
     * @tc.name      : TestCase_1131
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1131(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1131 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113200
     * @tc.name      : TestCase_1132
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1132(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1132 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113300
     * @tc.name      : TestCase_1133
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1133(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1133 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113400
     * @tc.name      : TestCase_1134
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1134(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1134 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113500
     * @tc.name      : TestCase_1135
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1135(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1135 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113600
     * @tc.name      : TestCase_1136
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1136(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1136 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113700
     * @tc.name      : TestCase_1137
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1137(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1137 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113800
     * @tc.name      : TestCase_1138
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1138(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1138 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_113900
     * @tc.name      : TestCase_1139
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1139(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1139 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114000
     * @tc.name      : TestCase_1140
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1140(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1140 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114100
     * @tc.name      : TestCase_1141
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1141(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1141 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114200
     * @tc.name      : TestCase_1142
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1142(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1142 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114300
     * @tc.name      : TestCase_1143
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1143(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1143 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114400
     * @tc.name      : TestCase_1144
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1144(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1144 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114500
     * @tc.name      : TestCase_1145
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1145(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1145 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114600
     * @tc.name      : TestCase_1146
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1146(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1146 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114700
     * @tc.name      : TestCase_1147
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1147(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1147 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114800
     * @tc.name      : TestCase_1148
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1148(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1148 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_114900
     * @tc.name      : TestCase_1149
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1149(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1149 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115000
     * @tc.name      : TestCase_1150
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1150(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1150 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115100
     * @tc.name      : TestCase_1151
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1151(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1151 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115200
     * @tc.name      : TestCase_1152
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1152(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1152 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115300
     * @tc.name      : TestCase_1153
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1153(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1153 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115400
     * @tc.name      : TestCase_1154
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1154(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1154 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115500
     * @tc.name      : TestCase_1155
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1155(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1155 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115600
     * @tc.name      : TestCase_1156
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1156(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1156 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115700
     * @tc.name      : TestCase_1157
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1157(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1157 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115800
     * @tc.name      : TestCase_1158
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1158(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1158 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_115900
     * @tc.name      : TestCase_1159
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1159(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1159 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116000
     * @tc.name      : TestCase_1160
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1160(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1160 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116100
     * @tc.name      : TestCase_1161
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1161(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1161 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116200
     * @tc.name      : TestCase_1162
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1162(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1162 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116300
     * @tc.name      : TestCase_1163
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1163(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1163 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116400
     * @tc.name      : TestCase_1164
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1164(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1164 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116500
     * @tc.name      : TestCase_1165
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1165(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1165 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116600
     * @tc.name      : TestCase_1166
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1166(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1166 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116700
     * @tc.name      : TestCase_1167
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1167(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1167 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116800
     * @tc.name      : TestCase_1168
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1168(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1168 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_116900
     * @tc.name      : TestCase_1169
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1169(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1169 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117000
     * @tc.name      : TestCase_1170
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1170(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1170 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117100
     * @tc.name      : TestCase_1171
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1171(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1171 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117200
     * @tc.name      : TestCase_1172
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1172(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1172 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117300
     * @tc.name      : TestCase_1173
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1173(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1173 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117400
     * @tc.name      : TestCase_1174
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1174(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1174 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117500
     * @tc.name      : TestCase_1175
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1175(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1175 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117600
     * @tc.name      : TestCase_1176
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1176(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1176 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117700
     * @tc.name      : TestCase_1177
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1177(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1177 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117800
     * @tc.name      : TestCase_1178
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1178(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1178 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_117900
     * @tc.name      : TestCase_1179
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1179(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1179 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118000
     * @tc.name      : TestCase_1180
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1180(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1180 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118100
     * @tc.name      : TestCase_1181
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1181(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1181 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118200
     * @tc.name      : TestCase_1182
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1182(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1182 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118300
     * @tc.name      : TestCase_1183
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1183(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1183 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118400
     * @tc.name      : TestCase_1184
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1184(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1184 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118500
     * @tc.name      : TestCase_1185
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1185(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1185 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118600
     * @tc.name      : TestCase_1186
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1186(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1186 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118700
     * @tc.name      : TestCase_1187
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1187(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1187 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118800
     * @tc.name      : TestCase_1188
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1188(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1188 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_118900
     * @tc.name      : TestCase_1189
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1189(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1189 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119000
     * @tc.name      : TestCase_1190
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1190(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1190 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119100
     * @tc.name      : TestCase_1191
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1191(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1191 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119200
     * @tc.name      : TestCase_1192
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1192(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1192 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"), AppEventReportConfig(domain: "a11", name: "A11")])
        )
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119300
     * @tc.name      : TestCase_1193
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1193(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1193 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119400
     * @tc.name      : TestCase_1194
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1194(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1194 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119500
     * @tc.name      : TestCase_1195
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1195(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1195 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119600
     * @tc.name      : TestCase_1196
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1196(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1196 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"), AppEventReportConfig(name: "$a1", isRealTime: true
                )]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119700
     * @tc.name      : TestCase_1197
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1197(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1197 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119800
     * @tc.name      : TestCase_1198
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1198(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1198 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_119900
     * @tc.name      : TestCase_1199
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1199(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1199 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_120000
     * @tc.name      : TestCase_1200
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1200(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1200 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1200 ends.")
    }
}

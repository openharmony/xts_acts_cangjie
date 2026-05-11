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
class testRemoveProcessor_14 {
    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130100
     * @tc.name      : TestCase_1301
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1301(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1301 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130200
     * @tc.name      : TestCase_1302
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1302(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1302 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130300
     * @tc.name      : TestCase_1303
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1303(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1303 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130400
     * @tc.name      : TestCase_1304
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1304(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1304 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130500
     * @tc.name      : TestCase_1305
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1305(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1305 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130600
     * @tc.name      : TestCase_1306
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1306(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1306 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130700
     * @tc.name      : TestCase_1307
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1307(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1307 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130800
     * @tc.name      : TestCase_1308
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1308(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1308 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_130900
     * @tc.name      : TestCase_1309
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1309(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1309 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131000
     * @tc.name      : TestCase_1310
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1310(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1310 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131100
     * @tc.name      : TestCase_1311
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1311(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1311 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131200
     * @tc.name      : TestCase_1312
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1312(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1312 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131300
     * @tc.name      : TestCase_1313
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1313(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1313 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131400
     * @tc.name      : TestCase_1314
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1314(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1314 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131500
     * @tc.name      : TestCase_1315
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1315(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1315 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131600
     * @tc.name      : TestCase_1316
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1316(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1316 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131700
     * @tc.name      : TestCase_1317
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1317(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1317 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131800
     * @tc.name      : TestCase_1318
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1318(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1318 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_131900
     * @tc.name      : TestCase_1319
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1319(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1319 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132000
     * @tc.name      : TestCase_1320
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1320(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1320 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132100
     * @tc.name      : TestCase_1321
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1321(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1321 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132200
     * @tc.name      : TestCase_1322
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1322(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1322 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132300
     * @tc.name      : TestCase_1323
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1323(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1323 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132400
     * @tc.name      : TestCase_1324
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1324(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1324 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132500
     * @tc.name      : TestCase_1325
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1325(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1325 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132600
     * @tc.name      : TestCase_1326
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1326(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1326 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132700
     * @tc.name      : TestCase_1327
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1327(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1327 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132800
     * @tc.name      : TestCase_1328
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1328(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1328 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_132900
     * @tc.name      : TestCase_1329
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1329(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1329 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133000
     * @tc.name      : TestCase_1330
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1330(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1330 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133100
     * @tc.name      : TestCase_1331
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1331(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1331 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133200
     * @tc.name      : TestCase_1332
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1332(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1332 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133300
     * @tc.name      : TestCase_1333
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1333(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1333 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133400
     * @tc.name      : TestCase_1334
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1334(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1334 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133500
     * @tc.name      : TestCase_1335
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1335(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1335 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133600
     * @tc.name      : TestCase_1336
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1336(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1336 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"), AppEventReportConfig(domain: "a11", name: "A11")])
        )
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133700
     * @tc.name      : TestCase_1337
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1337(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1337 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133800
     * @tc.name      : TestCase_1338
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1338(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1338 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_133900
     * @tc.name      : TestCase_1339
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1339(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1339 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134000
     * @tc.name      : TestCase_1340
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1340(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1340 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"), AppEventReportConfig(name: "$a1", isRealTime: true
                )]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134100
     * @tc.name      : TestCase_1341
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1341(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1341 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134200
     * @tc.name      : TestCase_1342
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1342(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1342 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134300
     * @tc.name      : TestCase_1343
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1343(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1343 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134400
     * @tc.name      : TestCase_1344
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1344(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1344 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134500
     * @tc.name      : TestCase_1345
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1345(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1345 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11"),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134600
     * @tc.name      : TestCase_1346
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1346(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1346 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134700
     * @tc.name      : TestCase_1347
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1347(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1347 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134800
     * @tc.name      : TestCase_1348
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1348(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1348 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_134900
     * @tc.name      : TestCase_1349
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1349(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1349 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135000
     * @tc.name      : TestCase_1350
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1350(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1350 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135100
     * @tc.name      : TestCase_1351
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1351(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1351 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135200
     * @tc.name      : TestCase_1352
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1352(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1352 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135300
     * @tc.name      : TestCase_1353
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1353(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1353 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135400
     * @tc.name      : TestCase_1354
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1354(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1354 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135500
     * @tc.name      : TestCase_1355
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1355(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1355 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135600
     * @tc.name      : TestCase_1356
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1356(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1356 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135700
     * @tc.name      : TestCase_1357
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1357(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1357 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135800
     * @tc.name      : TestCase_1358
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1358(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1358 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_135900
     * @tc.name      : TestCase_1359
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1359(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1359 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136000
     * @tc.name      : TestCase_1360
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1360(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1360 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136100
     * @tc.name      : TestCase_1361
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1361(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1361 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136200
     * @tc.name      : TestCase_1362
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1362(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1362 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136300
     * @tc.name      : TestCase_1363
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1363(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1363 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136400
     * @tc.name      : TestCase_1364
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1364(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1364 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136500
     * @tc.name      : TestCase_1365
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1365(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1365 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136600
     * @tc.name      : TestCase_1366
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1366(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1366 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136700
     * @tc.name      : TestCase_1367
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1367(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1367 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136800
     * @tc.name      : TestCase_1368
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1368(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1368 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_136900
     * @tc.name      : TestCase_1369
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1369(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1369 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137000
     * @tc.name      : TestCase_1370
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1370(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1370 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137100
     * @tc.name      : TestCase_1371
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1371(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1371 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137200
     * @tc.name      : TestCase_1372
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1372(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1372 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137300
     * @tc.name      : TestCase_1373
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1373(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1373 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137400
     * @tc.name      : TestCase_1374
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1374(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1374 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137500
     * @tc.name      : TestCase_1375
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1375(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1375 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137600
     * @tc.name      : TestCase_1376
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1376(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1376 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137700
     * @tc.name      : TestCase_1377
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1377(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1377 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137800
     * @tc.name      : TestCase_1378
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1378(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1378 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_137900
     * @tc.name      : TestCase_1379
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1379(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1379 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138000
     * @tc.name      : TestCase_1380
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1380(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1380 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138100
     * @tc.name      : TestCase_1381
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1381(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1381 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138200
     * @tc.name      : TestCase_1382
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1382(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1382 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138300
     * @tc.name      : TestCase_1383
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1383(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1383 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138400
     * @tc.name      : TestCase_1384
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1384(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1384 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true), AppEventReportConfig(domain: "a11", name: "A11"
                )]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138500
     * @tc.name      : TestCase_1385
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1385(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1385 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138600
     * @tc.name      : TestCase_1386
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1386(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1386 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138700
     * @tc.name      : TestCase_1387
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1387(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1387 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138800
     * @tc.name      : TestCase_1388
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1388(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1388 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_138900
     * @tc.name      : TestCase_1389
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1389(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1389 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139000
     * @tc.name      : TestCase_1390
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1390(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1390 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139100
     * @tc.name      : TestCase_1391
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1391(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1391 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139200
     * @tc.name      : TestCase_1392
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1392(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1392 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$11", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139300
     * @tc.name      : TestCase_1393
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1393(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1393 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139400
     * @tc.name      : TestCase_1394
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1394(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1394 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "Aa", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139500
     * @tc.name      : TestCase_1395
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1395(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1395 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "AaA", name: "Aa1", isRealTime: false)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139600
     * @tc.name      : TestCase_1396
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1396(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1396 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "a11", name: "A11")]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139700
     * @tc.name      : TestCase_1397
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1397(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1397 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A11_b", name: "A1_b", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139800
     * @tc.name      : TestCase_1398
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1398(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1398 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "Ab_c1", name: "A1_1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_139900
     * @tc.name      : TestCase_1399
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1399(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1399 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(domain: "A_B", name: "$A", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_addProcessor_140000
     * @tc.name      : TestCase_1400
     * @tc.desc      : Module: ohos.hiappevent.removeProcessor
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1400(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1400 begins.")
        Hilog.info(0, "cangjietest", "define local variable returnCode")
        let returnCode = HiAppEvent.addProcessor(
            Processor("Aa", debugMode: true, routeInfo: "", appId: "", onStartReport: true, onBackgroundReport: true,
                periodReport: 0i32, batchReport: 0i32, userIds: Array<String>(), userProperties: Array<String>(),
                eventConfigs: [AppEventReportConfig(domain: "aaa", name: "$A_1", isRealTime: true),
                    AppEventReportConfig(domain: "aaa", name: "$A1_b", isRealTime: true),
                    AppEventReportConfig(name: "$a1", isRealTime: true)]))
        Hilog.info(0, "cangjietest", "case start")
        try {
            HiAppEvent.removeProcessor(returnCode)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1400 ends.")
    }
}

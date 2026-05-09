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
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog
import std.collection.HashMap
import ohos.business_exception.BusinessException

@Test
class testPublishData_46 {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "cangjietest", "", "get user granted permission ohos.permission.COMMONEVENT_STICKY")
        try {
            getRequiredPermissions(["ohos.permission.COMMONEVENT_STICKY"])
            sleep(Duration.second * 1i64)
            click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0u32, "cangjietest", "", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135100
     * @tc.name      : TestCase_1351
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1351(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1351 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135200
     * @tc.name      : TestCase_1352
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1352(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1352 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135300
     * @tc.name      : TestCase_1353
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1353(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1353 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135400
     * @tc.name      : TestCase_1354
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1354(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1354 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135500
     * @tc.name      : TestCase_1355
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1355(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1355 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135600
     * @tc.name      : TestCase_1356
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1356(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1356 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135700
     * @tc.name      : TestCase_1357
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1357(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1357 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135800
     * @tc.name      : TestCase_1358
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1358(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1358 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135900
     * @tc.name      : TestCase_1359
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1359(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1359 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136000
     * @tc.name      : TestCase_1360
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1360(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1360 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136100
     * @tc.name      : TestCase_1361
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1361(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1361 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136200
     * @tc.name      : TestCase_1362
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1362(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1362 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136300
     * @tc.name      : TestCase_1363
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1363(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1363 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136400
     * @tc.name      : TestCase_1364
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1364(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1364 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136500
     * @tc.name      : TestCase_1365
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1365(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1365 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136600
     * @tc.name      : TestCase_1366
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1366(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1366 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136700
     * @tc.name      : TestCase_1367
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1367(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1367 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136800
     * @tc.name      : TestCase_1368
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1368(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1368 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_136900
     * @tc.name      : TestCase_1369
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1369(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1369 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137000
     * @tc.name      : TestCase_1370
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1370(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1370 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137100
     * @tc.name      : TestCase_1371
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1371(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1371 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137200
     * @tc.name      : TestCase_1372
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1372(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1372 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137300
     * @tc.name      : TestCase_1373
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1373(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1373 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137400
     * @tc.name      : TestCase_1374
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1374(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1374 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137500
     * @tc.name      : TestCase_1375
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1375(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1375 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137600
     * @tc.name      : TestCase_1376
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1376(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1376 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137700
     * @tc.name      : TestCase_1377
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1377(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1377 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137800
     * @tc.name      : TestCase_1378
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1378(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1378 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_137900
     * @tc.name      : TestCase_1379
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1379(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1379 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138000
     * @tc.name      : TestCase_1380
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1380(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1380 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1380 ends.")
    }
}

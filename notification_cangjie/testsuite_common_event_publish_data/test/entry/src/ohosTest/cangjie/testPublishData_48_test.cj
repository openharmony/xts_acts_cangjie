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
class testPublishData_48 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141100
     * @tc.name      : TestCase_1411
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1411(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1411 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141200
     * @tc.name      : TestCase_1412
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1412(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1412 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141300
     * @tc.name      : TestCase_1413
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1413(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1413 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141400
     * @tc.name      : TestCase_1414
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1414(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1414 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141500
     * @tc.name      : TestCase_1415
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1415(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1415 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141600
     * @tc.name      : TestCase_1416
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1416(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1416 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141700
     * @tc.name      : TestCase_1417
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1417(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1417 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141800
     * @tc.name      : TestCase_1418
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1418(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1418 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141900
     * @tc.name      : TestCase_1419
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1419(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1419 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142000
     * @tc.name      : TestCase_1420
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1420(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1420 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142100
     * @tc.name      : TestCase_1421
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1421(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1421 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142200
     * @tc.name      : TestCase_1422
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1422(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1422 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142300
     * @tc.name      : TestCase_1423
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1423(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1423 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142400
     * @tc.name      : TestCase_1424
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1424(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1424 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142500
     * @tc.name      : TestCase_1425
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1425(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1425 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142600
     * @tc.name      : TestCase_1426
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1426(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1426 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142700
     * @tc.name      : TestCase_1427
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1427(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1427 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142800
     * @tc.name      : TestCase_1428
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1428(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1428 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_142900
     * @tc.name      : TestCase_1429
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1429(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1429 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143000
     * @tc.name      : TestCase_1430
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1430(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1430 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143100
     * @tc.name      : TestCase_1431
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1431(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1431 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143200
     * @tc.name      : TestCase_1432
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1432(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1432 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143300
     * @tc.name      : TestCase_1433
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1433(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1433 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143400
     * @tc.name      : TestCase_1434
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1434(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1434 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143500
     * @tc.name      : TestCase_1435
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1435(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1435 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143600
     * @tc.name      : TestCase_1436
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1436(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1436 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143700
     * @tc.name      : TestCase_1437
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1437(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1437 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143800
     * @tc.name      : TestCase_1438
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1438(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1438 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_143900
     * @tc.name      : TestCase_1439
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1439(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1439 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144000
     * @tc.name      : TestCase_1440
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1440(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1440 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1440 ends.")
    }
}

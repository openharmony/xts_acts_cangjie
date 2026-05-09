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
class testPublishData_50 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147100
     * @tc.name      : TestCase_1471
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1471(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1471 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147200
     * @tc.name      : TestCase_1472
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1472(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1472 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147300
     * @tc.name      : TestCase_1473
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1473(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1473 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147400
     * @tc.name      : TestCase_1474
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1474(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1474 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147500
     * @tc.name      : TestCase_1475
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1475(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1475 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147600
     * @tc.name      : TestCase_1476
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1476(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1476 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147700
     * @tc.name      : TestCase_1477
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1477(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1477 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147800
     * @tc.name      : TestCase_1478
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1478(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1478 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147900
     * @tc.name      : TestCase_1479
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1479(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1479 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148000
     * @tc.name      : TestCase_1480
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1480(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1480 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1480 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148100
     * @tc.name      : TestCase_1481
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1481(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1481 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148200
     * @tc.name      : TestCase_1482
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1482(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1482 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148300
     * @tc.name      : TestCase_1483
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1483(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1483 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148400
     * @tc.name      : TestCase_1484
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1484(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1484 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148500
     * @tc.name      : TestCase_1485
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1485(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1485 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148600
     * @tc.name      : TestCase_1486
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1486(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1486 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148700
     * @tc.name      : TestCase_1487
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1487(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1487 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148800
     * @tc.name      : TestCase_1488
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1488(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1488 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_148900
     * @tc.name      : TestCase_1489
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1489(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1489 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149000
     * @tc.name      : TestCase_1490
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1490(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1490 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149100
     * @tc.name      : TestCase_1491
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1491(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1491 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149200
     * @tc.name      : TestCase_1492
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1492(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1492 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149300
     * @tc.name      : TestCase_1493
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1493(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1493 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149400
     * @tc.name      : TestCase_1494
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1494(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1494 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149500
     * @tc.name      : TestCase_1495
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1495(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1495 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149600
     * @tc.name      : TestCase_1496
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1496(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1496 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149700
     * @tc.name      : TestCase_1497
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1497(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1497 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149800
     * @tc.name      : TestCase_1498
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1498(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1498 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_149900
     * @tc.name      : TestCase_1499
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1499(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1499 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150000
     * @tc.name      : TestCase_1500
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1500(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1500 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1500 ends.")
    }
}

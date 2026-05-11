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
class testPublishData_51 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150100
     * @tc.name      : TestCase_1501
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1501(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1501 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150200
     * @tc.name      : TestCase_1502
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1502(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1502 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150300
     * @tc.name      : TestCase_1503
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1503(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1503 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150400
     * @tc.name      : TestCase_1504
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1504(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1504 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150500
     * @tc.name      : TestCase_1505
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1505(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1505 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150600
     * @tc.name      : TestCase_1506
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1506(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1506 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150700
     * @tc.name      : TestCase_1507
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1507(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1507 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150800
     * @tc.name      : TestCase_1508
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1508(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1508 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_150900
     * @tc.name      : TestCase_1509
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1509(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1509 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151000
     * @tc.name      : TestCase_1510
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1510(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1510 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151100
     * @tc.name      : TestCase_1511
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1511(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1511 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151200
     * @tc.name      : TestCase_1512
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1512(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1512 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151300
     * @tc.name      : TestCase_1513
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1513(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1513 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151400
     * @tc.name      : TestCase_1514
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1514(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1514 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151500
     * @tc.name      : TestCase_1515
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1515(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1515 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151600
     * @tc.name      : TestCase_1516
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1516(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1516 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151700
     * @tc.name      : TestCase_1517
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1517(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1517 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151800
     * @tc.name      : TestCase_1518
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1518(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1518 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_151900
     * @tc.name      : TestCase_1519
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1519(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1519 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152000
     * @tc.name      : TestCase_1520
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1520(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1520 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152100
     * @tc.name      : TestCase_1521
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1521(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1521 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152200
     * @tc.name      : TestCase_1522
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1522(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1522 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152300
     * @tc.name      : TestCase_1523
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1523(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1523 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152400
     * @tc.name      : TestCase_1524
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1524(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1524 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152500
     * @tc.name      : TestCase_1525
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1525(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1525 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152600
     * @tc.name      : TestCase_1526
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1526(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1526 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152700
     * @tc.name      : TestCase_1527
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1527(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1527 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152800
     * @tc.name      : TestCase_1528
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1528(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1528 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_152900
     * @tc.name      : TestCase_1529
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1529(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1529 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153000
     * @tc.name      : TestCase_1530
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1530(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1530 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1530 ends.")
    }
}

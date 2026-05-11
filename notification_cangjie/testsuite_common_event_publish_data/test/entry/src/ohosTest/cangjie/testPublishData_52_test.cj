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
class testPublishData_52 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153100
     * @tc.name      : TestCase_1531
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1531(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1531 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153200
     * @tc.name      : TestCase_1532
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1532(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1532 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153300
     * @tc.name      : TestCase_1533
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1533(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1533 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153400
     * @tc.name      : TestCase_1534
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1534(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1534 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153500
     * @tc.name      : TestCase_1535
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1535(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1535 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153600
     * @tc.name      : TestCase_1536
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1536(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1536 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153700
     * @tc.name      : TestCase_1537
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1537(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1537 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153800
     * @tc.name      : TestCase_1538
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1538(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1538 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_153900
     * @tc.name      : TestCase_1539
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1539(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1539 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154000
     * @tc.name      : TestCase_1540
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1540(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1540 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154100
     * @tc.name      : TestCase_1541
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1541(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1541 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154200
     * @tc.name      : TestCase_1542
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1542(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1542 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154300
     * @tc.name      : TestCase_1543
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1543(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1543 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154400
     * @tc.name      : TestCase_1544
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1544(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1544 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154500
     * @tc.name      : TestCase_1545
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1545(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1545 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154600
     * @tc.name      : TestCase_1546
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1546(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1546 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154700
     * @tc.name      : TestCase_1547
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1547(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1547 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154800
     * @tc.name      : TestCase_1548
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1548(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1548 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_154900
     * @tc.name      : TestCase_1549
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1549(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1549 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155000
     * @tc.name      : TestCase_1550
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1550(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1550 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155100
     * @tc.name      : TestCase_1551
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1551(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1551 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155200
     * @tc.name      : TestCase_1552
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1552(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1552 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155300
     * @tc.name      : TestCase_1553
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1553(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1553 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155400
     * @tc.name      : TestCase_1554
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1554(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1554 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155500
     * @tc.name      : TestCase_1555
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1555(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1555 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155600
     * @tc.name      : TestCase_1556
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1556(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1556 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155700
     * @tc.name      : TestCase_1557
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1557(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1557 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155800
     * @tc.name      : TestCase_1558
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1558(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1558 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_155900
     * @tc.name      : TestCase_1559
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1559(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1559 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156000
     * @tc.name      : TestCase_1560
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1560(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1560 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1560 ends.")
    }
}

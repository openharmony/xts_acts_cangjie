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
class testPublishData_53 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156100
     * @tc.name      : TestCase_1561
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1561(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1561 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156200
     * @tc.name      : TestCase_1562
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1562(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1562 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156300
     * @tc.name      : TestCase_1563
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1563(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1563 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156400
     * @tc.name      : TestCase_1564
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1564(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1564 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156500
     * @tc.name      : TestCase_1565
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1565(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1565 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156600
     * @tc.name      : TestCase_1566
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1566(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1566 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156700
     * @tc.name      : TestCase_1567
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1567(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1567 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156800
     * @tc.name      : TestCase_1568
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1568(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1568 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_156900
     * @tc.name      : TestCase_1569
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1569(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1569 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157000
     * @tc.name      : TestCase_1570
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1570(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1570 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157100
     * @tc.name      : TestCase_1571
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1571(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1571 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157200
     * @tc.name      : TestCase_1572
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1572(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1572 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157300
     * @tc.name      : TestCase_1573
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1573(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1573 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157400
     * @tc.name      : TestCase_1574
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1574(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1574 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157500
     * @tc.name      : TestCase_1575
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1575(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1575 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157600
     * @tc.name      : TestCase_1576
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1576(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1576 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157700
     * @tc.name      : TestCase_1577
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1577(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1577 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157800
     * @tc.name      : TestCase_1578
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1578(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1578 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_157900
     * @tc.name      : TestCase_1579
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1579(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1579 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158000
     * @tc.name      : TestCase_1580
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1580(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1580 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158100
     * @tc.name      : TestCase_1581
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1581(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1581 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158200
     * @tc.name      : TestCase_1582
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1582(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1582 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158300
     * @tc.name      : TestCase_1583
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1583(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1583 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158400
     * @tc.name      : TestCase_1584
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1584(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1584 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158500
     * @tc.name      : TestCase_1585
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1585(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1585 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158600
     * @tc.name      : TestCase_1586
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1586(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1586 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158700
     * @tc.name      : TestCase_1587
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1587(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1587 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158800
     * @tc.name      : TestCase_1588
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1588(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1588 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_158900
     * @tc.name      : TestCase_1589
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1589(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1589 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_159000
     * @tc.name      : TestCase_1590
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_RECOVERY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1590(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1590 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1590 ends.")
    }
}

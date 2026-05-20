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
class testPublishData_20 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57100
     * @tc.name      : TestCase_571
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DRIVE_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_571(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_571 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57200
     * @tc.name      : TestCase_572
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DRIVE_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_572(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_572 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57300
     * @tc.name      : TestCase_573
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DRIVE_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_573(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_573 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57400
     * @tc.name      : TestCase_574
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DRIVE_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_574(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_574 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57500
     * @tc.name      : TestCase_575
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DRIVE_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_575(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_575 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57600
     * @tc.name      : TestCase_576
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DRIVE_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_576(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_576 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57700
     * @tc.name      : TestCase_577
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_577(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_577 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57800
     * @tc.name      : TestCase_578
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_578(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_578 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_57900
     * @tc.name      : TestCase_579
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_579(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_579 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58000
     * @tc.name      : TestCase_580
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_580(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_580 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58100
     * @tc.name      : TestCase_581
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_581(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_581 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58200
     * @tc.name      : TestCase_582
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_582(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_582 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58300
     * @tc.name      : TestCase_583
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_583(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_583 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58400
     * @tc.name      : TestCase_584
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_584(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_584 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58500
     * @tc.name      : TestCase_585
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_585(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_585 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58600
     * @tc.name      : TestCase_586
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_586(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_586 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58700
     * @tc.name      : TestCase_587
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_587(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_587 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58800
     * @tc.name      : TestCase_588
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_588(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_588 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_58900
     * @tc.name      : TestCase_589
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_589(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_589 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59000
     * @tc.name      : TestCase_590
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_590(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_590 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59100
     * @tc.name      : TestCase_591
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_591(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_591 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59200
     * @tc.name      : TestCase_592
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_592(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_592 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59300
     * @tc.name      : TestCase_593
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_593(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_593 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59400
     * @tc.name      : TestCase_594
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_594(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_594 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59500
     * @tc.name      : TestCase_595
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_595(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_595 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59600
     * @tc.name      : TestCase_596
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_596(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_596 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59700
     * @tc.name      : TestCase_597
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_597(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_597 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59800
     * @tc.name      : TestCase_598
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_598(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_598 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_59900
     * @tc.name      : TestCase_599
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_599(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_599 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_60000
     * @tc.name      : TestCase_600
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DATE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_600(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_600 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_600 ends.")
    }
}

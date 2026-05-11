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
class testPublishData_16 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45100
     * @tc.name      : TestCase_451
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_451(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_451 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45200
     * @tc.name      : TestCase_452
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_452(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_452 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45300
     * @tc.name      : TestCase_453
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_453(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_453 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45400
     * @tc.name      : TestCase_454
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_454(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_454 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45500
     * @tc.name      : TestCase_455
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_455(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_455 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45600
     * @tc.name      : TestCase_456
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_456(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_456 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45700
     * @tc.name      : TestCase_457
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_457(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_457 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45800
     * @tc.name      : TestCase_458
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_458(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_458 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45900
     * @tc.name      : TestCase_459
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_459(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_459 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46000
     * @tc.name      : TestCase_460
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_460(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_460 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46100
     * @tc.name      : TestCase_461
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_461(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_461 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46200
     * @tc.name      : TestCase_462
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_462(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_462 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46300
     * @tc.name      : TestCase_463
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_463(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_463 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46400
     * @tc.name      : TestCase_464
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_464(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_464 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46500
     * @tc.name      : TestCase_465
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_465(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_465 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46600
     * @tc.name      : TestCase_466
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_466(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_466 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46700
     * @tc.name      : TestCase_467
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_467(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_467 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46800
     * @tc.name      : TestCase_468
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_468(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_468 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_46900
     * @tc.name      : TestCase_469
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_469(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_469 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47000
     * @tc.name      : TestCase_470
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_470(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_470 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_470 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47100
     * @tc.name      : TestCase_471
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_471(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_471 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47200
     * @tc.name      : TestCase_472
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_472(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_472 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47300
     * @tc.name      : TestCase_473
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_473(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_473 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47400
     * @tc.name      : TestCase_474
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_474(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_474 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47500
     * @tc.name      : TestCase_475
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_475(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_475 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47600
     * @tc.name      : TestCase_476
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_476(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_476 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47700
     * @tc.name      : TestCase_477
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_477(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_477 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47800
     * @tc.name      : TestCase_478
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_478(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_478 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_47900
     * @tc.name      : TestCase_479
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_479(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_479 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_48000
     * @tc.name      : TestCase_480
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_480(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_480 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_480 ends.")
    }
}

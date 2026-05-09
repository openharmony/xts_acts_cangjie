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
class testPublishData_14 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_400 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_401 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_402 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_403 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_404 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_405 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_406 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_407 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_408 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_409 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_410 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_411 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41200
     * @tc.name      : TestCase_412
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_412 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41300
     * @tc.name      : TestCase_413
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_413 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41400
     * @tc.name      : TestCase_414
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_414 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41500
     * @tc.name      : TestCase_415
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_415 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41600
     * @tc.name      : TestCase_416
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_416 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41700
     * @tc.name      : TestCase_417
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_417 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41800
     * @tc.name      : TestCase_418
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_418 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_41900
     * @tc.name      : TestCase_419
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_419 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42000
     * @tc.name      : TestCase_420
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_420 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_420 ends.")
    }
}

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
class testPublishData_15 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42100
     * @tc.name      : TestCase_421
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_421 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42200
     * @tc.name      : TestCase_422
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_422 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42300
     * @tc.name      : TestCase_423
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_423 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42400
     * @tc.name      : TestCase_424
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_424 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42500
     * @tc.name      : TestCase_425
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_425 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42600
     * @tc.name      : TestCase_426
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_426 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42700
     * @tc.name      : TestCase_427
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_427 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42800
     * @tc.name      : TestCase_428
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_428 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_42900
     * @tc.name      : TestCase_429
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_429 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43000
     * @tc.name      : TestCase_430
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_430 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43100
     * @tc.name      : TestCase_431
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_431 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43200
     * @tc.name      : TestCase_432
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_432 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43300
     * @tc.name      : TestCase_433
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_433 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43400
     * @tc.name      : TestCase_434
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_434 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43500
     * @tc.name      : TestCase_435
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_435 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43600
     * @tc.name      : TestCase_436
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_436 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43700
     * @tc.name      : TestCase_437
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_437 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43800
     * @tc.name      : TestCase_438
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_438 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_43900
     * @tc.name      : TestCase_439
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_439 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44000
     * @tc.name      : TestCase_440
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_440 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44100
     * @tc.name      : TestCase_441
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_441 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44200
     * @tc.name      : TestCase_442
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_442 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44300
     * @tc.name      : TestCase_443
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_443 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44400
     * @tc.name      : TestCase_444
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_444 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44500
     * @tc.name      : TestCase_445
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_445 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44600
     * @tc.name      : TestCase_446
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_446 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44700
     * @tc.name      : TestCase_447
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_447 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44800
     * @tc.name      : TestCase_448
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_448 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_44900
     * @tc.name      : TestCase_449
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_449 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_45000
     * @tc.name      : TestCase_450
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGIN"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_450 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_450 ends.")
    }
}

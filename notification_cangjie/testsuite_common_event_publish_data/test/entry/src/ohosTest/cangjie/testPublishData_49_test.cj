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
class testPublishData_49 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144100
     * @tc.name      : TestCase_1441
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1441(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1441 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144200
     * @tc.name      : TestCase_1442
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1442(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1442 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144300
     * @tc.name      : TestCase_1443
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1443(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1443 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144400
     * @tc.name      : TestCase_1444
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1444(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1444 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144500
     * @tc.name      : TestCase_1445
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1445(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1445 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144600
     * @tc.name      : TestCase_1446
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1446(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1446 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144700
     * @tc.name      : TestCase_1447
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1447(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1447 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144800
     * @tc.name      : TestCase_1448
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1448(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1448 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_144900
     * @tc.name      : TestCase_1449
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1449(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1449 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145000
     * @tc.name      : TestCase_1450
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1450(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1450 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1450 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145100
     * @tc.name      : TestCase_1451
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1451(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1451 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145200
     * @tc.name      : TestCase_1452
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1452(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1452 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145300
     * @tc.name      : TestCase_1453
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1453(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1453 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145400
     * @tc.name      : TestCase_1454
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1454(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1454 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145500
     * @tc.name      : TestCase_1455
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1455(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1455 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145600
     * @tc.name      : TestCase_1456
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1456(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1456 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145700
     * @tc.name      : TestCase_1457
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1457(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1457 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145800
     * @tc.name      : TestCase_1458
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1458(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1458 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_145900
     * @tc.name      : TestCase_1459
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1459(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1459 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146000
     * @tc.name      : TestCase_1460
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1460(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1460 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146100
     * @tc.name      : TestCase_1461
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1461(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1461 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146200
     * @tc.name      : TestCase_1462
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1462(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1462 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146300
     * @tc.name      : TestCase_1463
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1463(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1463 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146400
     * @tc.name      : TestCase_1464
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1464(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1464 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146500
     * @tc.name      : TestCase_1465
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1465(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1465 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146600
     * @tc.name      : TestCase_1466
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1466(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1466 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146700
     * @tc.name      : TestCase_1467
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1467(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1467 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146800
     * @tc.name      : TestCase_1468
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1468(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1468 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_146900
     * @tc.name      : TestCase_1469
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1469(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1469 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_147000
     * @tc.name      : TestCase_1470
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1470(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1470 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1470 ends.")
    }
}

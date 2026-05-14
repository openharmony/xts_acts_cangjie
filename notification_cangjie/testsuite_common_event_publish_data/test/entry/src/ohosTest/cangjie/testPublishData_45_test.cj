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
class testPublishData_45 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132100
     * @tc.name      : TestCase_1321
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1321(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1321 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132200
     * @tc.name      : TestCase_1322
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1322(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1322 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132300
     * @tc.name      : TestCase_1323
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1323(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1323 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132400
     * @tc.name      : TestCase_1324
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1324(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1324 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132500
     * @tc.name      : TestCase_1325
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1325(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1325 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132600
     * @tc.name      : TestCase_1326
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1326(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1326 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132700
     * @tc.name      : TestCase_1327
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1327(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1327 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132800
     * @tc.name      : TestCase_1328
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1328(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1328 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132900
     * @tc.name      : TestCase_1329
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1329(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1329 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133000
     * @tc.name      : TestCase_1330
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1330(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1330 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133100
     * @tc.name      : TestCase_1331
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1331(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1331 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133200
     * @tc.name      : TestCase_1332
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1332(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1332 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133300
     * @tc.name      : TestCase_1333
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1333(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1333 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133400
     * @tc.name      : TestCase_1334
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1334(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1334 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133500
     * @tc.name      : TestCase_1335
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1335(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1335 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133600
     * @tc.name      : TestCase_1336
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1336(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1336 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133700
     * @tc.name      : TestCase_1337
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1337(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1337 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133800
     * @tc.name      : TestCase_1338
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1338(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1338 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_133900
     * @tc.name      : TestCase_1339
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1339(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1339 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134000
     * @tc.name      : TestCase_1340
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1340(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1340 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134100
     * @tc.name      : TestCase_1341
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1341(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1341 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134200
     * @tc.name      : TestCase_1342
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1342(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1342 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134300
     * @tc.name      : TestCase_1343
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1343(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1343 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134400
     * @tc.name      : TestCase_1344
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1344(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1344 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134500
     * @tc.name      : TestCase_1345
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1345(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1345 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134600
     * @tc.name      : TestCase_1346
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1346(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1346 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134700
     * @tc.name      : TestCase_1347
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1347(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1347 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134800
     * @tc.name      : TestCase_1348
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1348(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1348 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_134900
     * @tc.name      : TestCase_1349
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1349(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1349 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_135000
     * @tc.name      : TestCase_1350
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1350(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1350 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1350 ends.")
    }
}

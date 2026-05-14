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
class testPublishData_47 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138100
     * @tc.name      : TestCase_1381
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1381(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1381 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138200
     * @tc.name      : TestCase_1382
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1382(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1382 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138300
     * @tc.name      : TestCase_1383
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1383(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1383 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138400
     * @tc.name      : TestCase_1384
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1384(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1384 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138500
     * @tc.name      : TestCase_1385
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1385(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1385 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138600
     * @tc.name      : TestCase_1386
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1386(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1386 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138700
     * @tc.name      : TestCase_1387
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1387(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1387 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138800
     * @tc.name      : TestCase_1388
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1388(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1388 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_138900
     * @tc.name      : TestCase_1389
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1389(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1389 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139000
     * @tc.name      : TestCase_1390
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1390(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1390 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139100
     * @tc.name      : TestCase_1391
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1391(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1391 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139200
     * @tc.name      : TestCase_1392
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1392(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1392 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139300
     * @tc.name      : TestCase_1393
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1393(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1393 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139400
     * @tc.name      : TestCase_1394
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1394(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1394 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139500
     * @tc.name      : TestCase_1395
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1395(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1395 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139600
     * @tc.name      : TestCase_1396
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1396(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1396 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139700
     * @tc.name      : TestCase_1397
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1397(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1397 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139800
     * @tc.name      : TestCase_1398
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1398(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1398 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_139900
     * @tc.name      : TestCase_1399
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1399(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1399 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140000
     * @tc.name      : TestCase_1400
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1400(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1400 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1400 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140100
     * @tc.name      : TestCase_1401
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1401(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1401 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140200
     * @tc.name      : TestCase_1402
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1402(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1402 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140300
     * @tc.name      : TestCase_1403
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1403(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1403 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140400
     * @tc.name      : TestCase_1404
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1404(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1404 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140500
     * @tc.name      : TestCase_1405
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1405(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1405 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140600
     * @tc.name      : TestCase_1406
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1406(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1406 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140700
     * @tc.name      : TestCase_1407
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1407(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1407 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140800
     * @tc.name      : TestCase_1408
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_EXTREME_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1408(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1408 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_140900
     * @tc.name      : TestCase_1409
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1409(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1409 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_141000
     * @tc.name      : TestCase_1410
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_TEMPERATURE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1410(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1410 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1410 ends.")
    }
}

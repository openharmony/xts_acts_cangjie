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
class testPublishData_43 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126100
     * @tc.name      : TestCase_1261
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1261(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1261 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126200
     * @tc.name      : TestCase_1262
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1262(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1262 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126300
     * @tc.name      : TestCase_1263
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1263(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1263 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126400
     * @tc.name      : TestCase_1264
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1264(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1264 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126500
     * @tc.name      : TestCase_1265
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1265(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1265 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126600
     * @tc.name      : TestCase_1266
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1266(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1266 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126700
     * @tc.name      : TestCase_1267
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1267(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1267 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126800
     * @tc.name      : TestCase_1268
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1268(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1268 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126900
     * @tc.name      : TestCase_1269
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1269(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1269 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127000
     * @tc.name      : TestCase_1270
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1270(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1270 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127100
     * @tc.name      : TestCase_1271
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1271(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1271 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127200
     * @tc.name      : TestCase_1272
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1272(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1272 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127300
     * @tc.name      : TestCase_1273
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1273(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1273 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127400
     * @tc.name      : TestCase_1274
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1274(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1274 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127500
     * @tc.name      : TestCase_1275
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1275(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1275 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127600
     * @tc.name      : TestCase_1276
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1276(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1276 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127700
     * @tc.name      : TestCase_1277
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1277(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1277 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127800
     * @tc.name      : TestCase_1278
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1278(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1278 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_127900
     * @tc.name      : TestCase_1279
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1279(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1279 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128000
     * @tc.name      : TestCase_1280
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1280(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1280 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128100
     * @tc.name      : TestCase_1281
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1281(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1281 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128200
     * @tc.name      : TestCase_1282
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1282(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1282 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128300
     * @tc.name      : TestCase_1283
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1283(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1283 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128400
     * @tc.name      : TestCase_1284
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1284(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1284 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128500
     * @tc.name      : TestCase_1285
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1285(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1285 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128600
     * @tc.name      : TestCase_1286
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1286(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1286 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128700
     * @tc.name      : TestCase_1287
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1287(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1287 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128800
     * @tc.name      : TestCase_1288
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1288(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1288 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_128900
     * @tc.name      : TestCase_1289
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1289(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1289 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129000
     * @tc.name      : TestCase_1290
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1290(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1290 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1290 ends.")
    }
}

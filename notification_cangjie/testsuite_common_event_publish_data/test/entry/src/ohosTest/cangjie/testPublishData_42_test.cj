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
class testPublishData_42 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123100
     * @tc.name      : TestCase_1231
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1231(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1231 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123200
     * @tc.name      : TestCase_1232
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1232(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1232 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123300
     * @tc.name      : TestCase_1233
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1233(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1233 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123400
     * @tc.name      : TestCase_1234
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1234(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1234 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123500
     * @tc.name      : TestCase_1235
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1235(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1235 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123600
     * @tc.name      : TestCase_1236
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1236(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1236 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123700
     * @tc.name      : TestCase_1237
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1237(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1237 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123800
     * @tc.name      : TestCase_1238
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1238(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1238 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123900
     * @tc.name      : TestCase_1239
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1239(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1239 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124000
     * @tc.name      : TestCase_1240
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1240(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1240 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124100
     * @tc.name      : TestCase_1241
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1241(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1241 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124200
     * @tc.name      : TestCase_1242
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1242(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1242 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124300
     * @tc.name      : TestCase_1243
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1243(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1243 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124400
     * @tc.name      : TestCase_1244
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1244(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1244 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124500
     * @tc.name      : TestCase_1245
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1245(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1245 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124600
     * @tc.name      : TestCase_1246
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1246(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1246 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124700
     * @tc.name      : TestCase_1247
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1247(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1247 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124800
     * @tc.name      : TestCase_1248
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1248(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1248 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_124900
     * @tc.name      : TestCase_1249
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1249(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1249 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125000
     * @tc.name      : TestCase_1250
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1250(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1250 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125100
     * @tc.name      : TestCase_1251
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1251(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1251 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125200
     * @tc.name      : TestCase_1252
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1252(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1252 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125300
     * @tc.name      : TestCase_1253
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1253(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1253 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125400
     * @tc.name      : TestCase_1254
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1254(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1254 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125500
     * @tc.name      : TestCase_1255
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1255(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1255 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125600
     * @tc.name      : TestCase_1256
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1256(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1256 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125700
     * @tc.name      : TestCase_1257
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1257(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1257 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125800
     * @tc.name      : TestCase_1258
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1258(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1258 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_125900
     * @tc.name      : TestCase_1259
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1259(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1259 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_126000
     * @tc.name      : TestCase_1260
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1260(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1260 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1260 ends.")
    }
}

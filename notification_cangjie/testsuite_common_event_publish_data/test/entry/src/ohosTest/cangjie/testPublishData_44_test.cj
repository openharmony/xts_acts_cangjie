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
class testPublishData_44 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129100
     * @tc.name      : TestCase_1291
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1291(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1291 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129200
     * @tc.name      : TestCase_1292
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1292(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1292 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129300
     * @tc.name      : TestCase_1293
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1293(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1293 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129400
     * @tc.name      : TestCase_1294
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1294(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1294 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129500
     * @tc.name      : TestCase_1295
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1295(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1295 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129600
     * @tc.name      : TestCase_1296
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1296(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1296 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129700
     * @tc.name      : TestCase_1297
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1297(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1297 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129800
     * @tc.name      : TestCase_1298
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1298(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1298 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_129900
     * @tc.name      : TestCase_1299
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1299(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1299 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130000
     * @tc.name      : TestCase_1300
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1300(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1300 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1300 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130100
     * @tc.name      : TestCase_1301
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1301(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1301 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130200
     * @tc.name      : TestCase_1302
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1302(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1302 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130300
     * @tc.name      : TestCase_1303
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1303(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1303 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130400
     * @tc.name      : TestCase_1304
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1304(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1304 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130500
     * @tc.name      : TestCase_1305
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1305(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1305 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130600
     * @tc.name      : TestCase_1306
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1306(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1306 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130700
     * @tc.name      : TestCase_1307
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1307(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1307 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130800
     * @tc.name      : TestCase_1308
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1308(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1308 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_130900
     * @tc.name      : TestCase_1309
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1309(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1309 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131000
     * @tc.name      : TestCase_1310
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1310(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1310 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131100
     * @tc.name      : TestCase_1311
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1311(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1311 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131200
     * @tc.name      : TestCase_1312
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1312(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1312 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131300
     * @tc.name      : TestCase_1313
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1313(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1313 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131400
     * @tc.name      : TestCase_1314
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1314(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1314 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131500
     * @tc.name      : TestCase_1315
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1315(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1315 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131600
     * @tc.name      : TestCase_1316
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1316(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1316 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131700
     * @tc.name      : TestCase_1317
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1317(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1317 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131800
     * @tc.name      : TestCase_1318
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1318(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1318 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_131900
     * @tc.name      : TestCase_1319
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1319(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1319 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_132000
     * @tc.name      : TestCase_1320
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_HIGH_TEMPERATURE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1320(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1320 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1320 ends.")
    }
}

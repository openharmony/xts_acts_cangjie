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
class testPublishData_41 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120100
     * @tc.name      : TestCase_1201
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1201(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1201 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120200
     * @tc.name      : TestCase_1202
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1202(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1202 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120300
     * @tc.name      : TestCase_1203
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1203(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1203 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120400
     * @tc.name      : TestCase_1204
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1204(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1204 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120500
     * @tc.name      : TestCase_1205
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1205(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1205 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120600
     * @tc.name      : TestCase_1206
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1206(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1206 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120700
     * @tc.name      : TestCase_1207
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1207(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1207 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120800
     * @tc.name      : TestCase_1208
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1208(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1208 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_120900
     * @tc.name      : TestCase_1209
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1209(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1209 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121000
     * @tc.name      : TestCase_1210
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1210(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1210 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121100
     * @tc.name      : TestCase_1211
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1211(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1211 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121200
     * @tc.name      : TestCase_1212
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1212(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1212 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121300
     * @tc.name      : TestCase_1213
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1213(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1213 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121400
     * @tc.name      : TestCase_1214
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1214(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1214 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121500
     * @tc.name      : TestCase_1215
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1215(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1215 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121600
     * @tc.name      : TestCase_1216
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_LASTMODE_SAVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1216(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1216 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121700
     * @tc.name      : TestCase_1217
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1217(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1217 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121800
     * @tc.name      : TestCase_1218
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1218(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1218 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_121900
     * @tc.name      : TestCase_1219
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1219(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1219 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122000
     * @tc.name      : TestCase_1220
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1220(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1220 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122100
     * @tc.name      : TestCase_1221
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1221(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1221 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122200
     * @tc.name      : TestCase_1222
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1222(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1222 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122300
     * @tc.name      : TestCase_1223
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1223(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1223 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122400
     * @tc.name      : TestCase_1224
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1224(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1224 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122500
     * @tc.name      : TestCase_1225
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1225(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1225 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122600
     * @tc.name      : TestCase_1226
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1226(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1226 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122700
     * @tc.name      : TestCase_1227
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1227(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1227 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122800
     * @tc.name      : TestCase_1228
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1228(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1228 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_122900
     * @tc.name      : TestCase_1229
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1229(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1229 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_123000
     * @tc.name      : TestCase_1230
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_VOLTAGE_ABNORMAL"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1230(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1230 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1230 ends.")
    }
}

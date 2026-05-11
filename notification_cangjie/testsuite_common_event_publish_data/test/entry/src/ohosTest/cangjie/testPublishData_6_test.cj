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
class testPublishData_6 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_180 ends.")
    }
}

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
class testPublishData_7 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DEVICE_IDLE_MODE_CHANGED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_200 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_210 ends.")
    }
}

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
class testPublishData_9 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.DISCHARGING"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_270 ends.")
    }
}

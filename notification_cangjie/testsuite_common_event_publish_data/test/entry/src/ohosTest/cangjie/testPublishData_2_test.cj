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
class testPublishData_2 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_60 ends.")
    }
}

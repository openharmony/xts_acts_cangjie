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
class testPublishData_3 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_UNMOUNTED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.data.DISK_REMOVED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_REMOVED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_90 ends.")
    }
}

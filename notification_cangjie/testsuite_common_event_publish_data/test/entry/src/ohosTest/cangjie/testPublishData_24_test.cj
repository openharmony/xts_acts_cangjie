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
class testPublishData_24 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69100
     * @tc.name      : TestCase_691
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_691(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_691 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69200
     * @tc.name      : TestCase_692
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_692(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_692 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69300
     * @tc.name      : TestCase_693
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_693(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_693 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69400
     * @tc.name      : TestCase_694
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_694(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_694 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69500
     * @tc.name      : TestCase_695
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_695(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_695 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69600
     * @tc.name      : TestCase_696
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_696(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_696 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69700
     * @tc.name      : TestCase_697
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_697(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_697 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69800
     * @tc.name      : TestCase_698
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_698(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_698 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69900
     * @tc.name      : TestCase_699
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_699(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_699 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70000
     * @tc.name      : TestCase_700
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_700(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_700 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_700 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70100
     * @tc.name      : TestCase_701
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_701(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_701 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70200
     * @tc.name      : TestCase_702
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_702(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_702 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70300
     * @tc.name      : TestCase_703
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_703(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_703 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70400
     * @tc.name      : TestCase_704
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_704(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_704 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70500
     * @tc.name      : TestCase_705
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_705(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_705 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70600
     * @tc.name      : TestCase_706
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_706(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_706 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70700
     * @tc.name      : TestCase_707
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_707(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_707 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70800
     * @tc.name      : TestCase_708
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_708(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_708 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_70900
     * @tc.name      : TestCase_709
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_709(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_709 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71000
     * @tc.name      : TestCase_710
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_710(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_710 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71100
     * @tc.name      : TestCase_711
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_711(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_711 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71200
     * @tc.name      : TestCase_712
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_712(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_712 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71300
     * @tc.name      : TestCase_713
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_713(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_713 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71400
     * @tc.name      : TestCase_714
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_714(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_714 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71500
     * @tc.name      : TestCase_715
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_715(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_715 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71600
     * @tc.name      : TestCase_716
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_716(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_716 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71700
     * @tc.name      : TestCase_717
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_717(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_717 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71800
     * @tc.name      : TestCase_718
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_718(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_718 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_71900
     * @tc.name      : TestCase_719
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_719(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_719 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72000
     * @tc.name      : TestCase_720
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_720(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_720 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_720 ends.")
    }
}

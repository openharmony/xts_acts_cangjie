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
class testPublishData_25 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72100
     * @tc.name      : TestCase_721
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_721(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_721 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72200
     * @tc.name      : TestCase_722
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_722(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_722 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72300
     * @tc.name      : TestCase_723
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_723(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_723 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72400
     * @tc.name      : TestCase_724
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_724(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_724 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72500
     * @tc.name      : TestCase_725
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_725(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_725 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72600
     * @tc.name      : TestCase_726
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_726(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_726 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72700
     * @tc.name      : TestCase_727
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_727(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_727 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72800
     * @tc.name      : TestCase_728
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_728(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_728 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_72900
     * @tc.name      : TestCase_729
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_729(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_729 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73000
     * @tc.name      : TestCase_730
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_730(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_730 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73100
     * @tc.name      : TestCase_731
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_731(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_731 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73200
     * @tc.name      : TestCase_732
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_732(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_732 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73300
     * @tc.name      : TestCase_733
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_733(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_733 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73400
     * @tc.name      : TestCase_734
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_734(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_734 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73500
     * @tc.name      : TestCase_735
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_735(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_735 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73600
     * @tc.name      : TestCase_736
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_736(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_736 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73700
     * @tc.name      : TestCase_737
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_737(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_737 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73800
     * @tc.name      : TestCase_738
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_738(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_738 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_73900
     * @tc.name      : TestCase_739
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_739(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_739 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74000
     * @tc.name      : TestCase_740
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_740(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_740 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74100
     * @tc.name      : TestCase_741
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_741(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_741 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74200
     * @tc.name      : TestCase_742
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_742(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_742 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74300
     * @tc.name      : TestCase_743
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_743(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_743 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74400
     * @tc.name      : TestCase_744
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_744(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_744 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74500
     * @tc.name      : TestCase_745
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_745(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_745 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74600
     * @tc.name      : TestCase_746
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_746(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_746 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74700
     * @tc.name      : TestCase_747
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_747(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_747 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74800
     * @tc.name      : TestCase_748
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_748(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_748 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_74900
     * @tc.name      : TestCase_749
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_749(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_749 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75000
     * @tc.name      : TestCase_750
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_750(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_750 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_750 ends.")
    }
}

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
class testPublishData_26 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75100
     * @tc.name      : TestCase_751
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_751(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_751 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75200
     * @tc.name      : TestCase_752
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_752(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_752 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75300
     * @tc.name      : TestCase_753
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_753(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_753 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75400
     * @tc.name      : TestCase_754
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_754(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_754 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75500
     * @tc.name      : TestCase_755
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_755(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_755 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75600
     * @tc.name      : TestCase_756
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_756(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_756 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75700
     * @tc.name      : TestCase_757
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_757(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_757 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75800
     * @tc.name      : TestCase_758
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_758(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_758 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_75900
     * @tc.name      : TestCase_759
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_759(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_759 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76000
     * @tc.name      : TestCase_760
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_760(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_760 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76100
     * @tc.name      : TestCase_761
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_761(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_761 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76200
     * @tc.name      : TestCase_762
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_762(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_762 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76300
     * @tc.name      : TestCase_763
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_763(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_763 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76400
     * @tc.name      : TestCase_764
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_764(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_764 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76500
     * @tc.name      : TestCase_765
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_765(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_765 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76600
     * @tc.name      : TestCase_766
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_766(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_766 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76700
     * @tc.name      : TestCase_767
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_767(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_767 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76800
     * @tc.name      : TestCase_768
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_768(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_768 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_76900
     * @tc.name      : TestCase_769
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_769(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_769 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77000
     * @tc.name      : TestCase_770
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_770(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_770 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77100
     * @tc.name      : TestCase_771
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_771(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_771 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77200
     * @tc.name      : TestCase_772
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_772(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_772 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77300
     * @tc.name      : TestCase_773
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_773(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_773 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77400
     * @tc.name      : TestCase_774
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_774(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_774 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77500
     * @tc.name      : TestCase_775
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_775(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_775 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77600
     * @tc.name      : TestCase_776
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_776(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_776 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77700
     * @tc.name      : TestCase_777
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_777(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_777 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77800
     * @tc.name      : TestCase_778
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_778(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_778 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_77900
     * @tc.name      : TestCase_779
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_779(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_779 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78000
     * @tc.name      : TestCase_780
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_780(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_780 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
                } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_780 ends.")
    }
}

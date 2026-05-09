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
class testPublishData_28 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81100
     * @tc.name      : TestCase_811
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_811(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_811 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81200
     * @tc.name      : TestCase_812
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_812(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_812 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81300
     * @tc.name      : TestCase_813
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_813(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_813 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81400
     * @tc.name      : TestCase_814
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_814(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_814 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81500
     * @tc.name      : TestCase_815
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_815(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_815 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81600
     * @tc.name      : TestCase_816
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_816(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_816 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81700
     * @tc.name      : TestCase_817
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_817(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_817 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81800
     * @tc.name      : TestCase_818
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_818(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_818 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81900
     * @tc.name      : TestCase_819
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_819(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_819 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82000
     * @tc.name      : TestCase_820
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_820(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_820 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82100
     * @tc.name      : TestCase_821
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_821(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_821 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82200
     * @tc.name      : TestCase_822
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_822(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_822 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82300
     * @tc.name      : TestCase_823
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_823(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_823 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82400
     * @tc.name      : TestCase_824
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_824(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_824 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82500
     * @tc.name      : TestCase_825
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_825(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_825 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82600
     * @tc.name      : TestCase_826
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_826(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_826 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82700
     * @tc.name      : TestCase_827
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_827(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_827 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82800
     * @tc.name      : TestCase_828
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_828(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_828 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_82900
     * @tc.name      : TestCase_829
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_829(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_829 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83000
     * @tc.name      : TestCase_830
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_830(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_830 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83100
     * @tc.name      : TestCase_831
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_831(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_831 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83200
     * @tc.name      : TestCase_832
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_832(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_832 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83300
     * @tc.name      : TestCase_833
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_833(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_833 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83400
     * @tc.name      : TestCase_834
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_834(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_834 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83500
     * @tc.name      : TestCase_835
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_835(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_835 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83600
     * @tc.name      : TestCase_836
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_836(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_836 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83700
     * @tc.name      : TestCase_837
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_837(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_837 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83800
     * @tc.name      : TestCase_838
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_838(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_838 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_83900
     * @tc.name      : TestCase_839
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_839(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_839 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84000
     * @tc.name      : TestCase_840
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_840(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_840 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_840 ends.")
    }
}

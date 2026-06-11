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
class testPublishData_27 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78100
     * @tc.name      : TestCase_781
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_781(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_781 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78200
     * @tc.name      : TestCase_782
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_782(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_782 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78300
     * @tc.name      : TestCase_783
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_783(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_783 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78400
     * @tc.name      : TestCase_784
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_784(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_784 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78500
     * @tc.name      : TestCase_785
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_785(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_785 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78600
     * @tc.name      : TestCase_786
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_786(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_786 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78700
     * @tc.name      : TestCase_787
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_787(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_787 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78800
     * @tc.name      : TestCase_788
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_788(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_788 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_78900
     * @tc.name      : TestCase_789
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_789(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_789 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79000
     * @tc.name      : TestCase_790
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_790(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_790 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79100
     * @tc.name      : TestCase_791
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_791(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_791 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79200
     * @tc.name      : TestCase_792
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_792(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_792 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79300
     * @tc.name      : TestCase_793
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_793(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_793 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79400
     * @tc.name      : TestCase_794
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_794(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_794 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79500
     * @tc.name      : TestCase_795
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_795(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_795 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79600
     * @tc.name      : TestCase_796
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_796(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_796 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79700
     * @tc.name      : TestCase_797
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_797(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_797 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79800
     * @tc.name      : TestCase_798
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_798(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_798 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_79900
     * @tc.name      : TestCase_799
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_799(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_799 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80000
     * @tc.name      : TestCase_800
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_800(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_800 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_800 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80100
     * @tc.name      : TestCase_801
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_801(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_801 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80200
     * @tc.name      : TestCase_802
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_802(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_802 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80300
     * @tc.name      : TestCase_803
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_803(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_803 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80400
     * @tc.name      : TestCase_804
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_804(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_804 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80500
     * @tc.name      : TestCase_805
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_805(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_805 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80600
     * @tc.name      : TestCase_806
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_806(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_806 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80700
     * @tc.name      : TestCase_807
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_807(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_807 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80800
     * @tc.name      : TestCase_808
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_808(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_808 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_80900
     * @tc.name      : TestCase_809
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_809(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_809 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_81000
     * @tc.name      : TestCase_810
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.FOUNDATION_READY"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_810(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_810 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_810 ends.")
    }
}

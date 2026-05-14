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
class testPublishData_29 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84100
     * @tc.name      : TestCase_841
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_841(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_841 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84200
     * @tc.name      : TestCase_842
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_842(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_842 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84300
     * @tc.name      : TestCase_843
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_843(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_843 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84400
     * @tc.name      : TestCase_844
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_844(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_844 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84500
     * @tc.name      : TestCase_845
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_845(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_845 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84600
     * @tc.name      : TestCase_846
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_846(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_846 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84700
     * @tc.name      : TestCase_847
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_847(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_847 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84800
     * @tc.name      : TestCase_848
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_848(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_848 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_84900
     * @tc.name      : TestCase_849
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_849(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_849 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85000
     * @tc.name      : TestCase_850
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_850(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_850 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85100
     * @tc.name      : TestCase_851
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_851(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_851 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85200
     * @tc.name      : TestCase_852
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_852(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_852 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85300
     * @tc.name      : TestCase_853
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_853(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_853 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85400
     * @tc.name      : TestCase_854
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_854(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_854 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85500
     * @tc.name      : TestCase_855
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_855(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_855 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85600
     * @tc.name      : TestCase_856
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_856(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_856 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85700
     * @tc.name      : TestCase_857
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_857(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_857 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85800
     * @tc.name      : TestCase_858
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_858(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_858 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_85900
     * @tc.name      : TestCase_859
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_859(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_859 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86000
     * @tc.name      : TestCase_860
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_860(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_860 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86100
     * @tc.name      : TestCase_861
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_861(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_861 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86200
     * @tc.name      : TestCase_862
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_862(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_862 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86300
     * @tc.name      : TestCase_863
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_863(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_863 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86400
     * @tc.name      : TestCase_864
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_864(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_864 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86500
     * @tc.name      : TestCase_865
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_865(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_865 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86600
     * @tc.name      : TestCase_866
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_866(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_866 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86700
     * @tc.name      : TestCase_867
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_867(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_867 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86800
     * @tc.name      : TestCase_868
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_868(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_868 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_86900
     * @tc.name      : TestCase_869
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_869(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_869 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_87000
     * @tc.name      : TestCase_870
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.HOME_MODE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_870(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_870 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_870 ends.")
    }
}

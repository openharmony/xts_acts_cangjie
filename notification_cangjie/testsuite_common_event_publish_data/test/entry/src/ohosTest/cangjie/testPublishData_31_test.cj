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
class testPublishData_31 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90100
     * @tc.name      : TestCase_901
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_901(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_901 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90200
     * @tc.name      : TestCase_902
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_902(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_902 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90300
     * @tc.name      : TestCase_903
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_903(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_903 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90400
     * @tc.name      : TestCase_904
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_904(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_904 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90500
     * @tc.name      : TestCase_905
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_905(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_905 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90600
     * @tc.name      : TestCase_906
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_906(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_906 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90700
     * @tc.name      : TestCase_907
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_907(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_907 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_907 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90800
     * @tc.name      : TestCase_908
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_908(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_908 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_908 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_90900
     * @tc.name      : TestCase_909
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_909(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_909 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_909 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91000
     * @tc.name      : TestCase_910
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_910(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_910 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91100
     * @tc.name      : TestCase_911
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_911(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_911 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91200
     * @tc.name      : TestCase_912
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_912(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_912 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91300
     * @tc.name      : TestCase_913
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_913(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_913 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91400
     * @tc.name      : TestCase_914
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_914(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_914 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91500
     * @tc.name      : TestCase_915
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_915(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_915 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91600
     * @tc.name      : TestCase_916
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_916(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_916 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91700
     * @tc.name      : TestCase_917
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_917(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_917 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91800
     * @tc.name      : TestCase_918
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_918(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_918 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_91900
     * @tc.name      : TestCase_919
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_919(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_919 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92000
     * @tc.name      : TestCase_920
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_920(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_920 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92100
     * @tc.name      : TestCase_921
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_921(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_921 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92200
     * @tc.name      : TestCase_922
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_922(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_922 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92300
     * @tc.name      : TestCase_923
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_923(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_923 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92400
     * @tc.name      : TestCase_924
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_924(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_924 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92500
     * @tc.name      : TestCase_925
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_925(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_925 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92600
     * @tc.name      : TestCase_926
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_926(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_926 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92700
     * @tc.name      : TestCase_927
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_927(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_927 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92800
     * @tc.name      : TestCase_928
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_928(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_928 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_92900
     * @tc.name      : TestCase_929
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_929(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_929 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93000
     * @tc.name      : TestCase_930
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_930(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_930 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_930 ends.")
    }
}

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
class testPublishData_34 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99100
     * @tc.name      : TestCase_991
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_991(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_991 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99200
     * @tc.name      : TestCase_992
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_992(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_992 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99300
     * @tc.name      : TestCase_993
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_993(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_993 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99400
     * @tc.name      : TestCase_994
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_994(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_994 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99500
     * @tc.name      : TestCase_995
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_995(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_995 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99600
     * @tc.name      : TestCase_996
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_996(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_996 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99700
     * @tc.name      : TestCase_997
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_997(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_997 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99800
     * @tc.name      : TestCase_998
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_998(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_998 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_99900
     * @tc.name      : TestCase_999
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_999(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_999 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100000
     * @tc.name      : TestCase_1000
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1000(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1000 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1000 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100100
     * @tc.name      : TestCase_1001
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1001(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1001 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100200
     * @tc.name      : TestCase_1002
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1002(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1002 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100300
     * @tc.name      : TestCase_1003
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1003(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1003 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100400
     * @tc.name      : TestCase_1004
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1004(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1004 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100500
     * @tc.name      : TestCase_1005
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1005(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1005 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100600
     * @tc.name      : TestCase_1006
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1006(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1006 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100700
     * @tc.name      : TestCase_1007
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1007(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1007 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100800
     * @tc.name      : TestCase_1008
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1008(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1008 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_100900
     * @tc.name      : TestCase_1009
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1009(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1009 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101000
     * @tc.name      : TestCase_1010
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1010(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1010 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101100
     * @tc.name      : TestCase_1011
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1011(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1011 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101200
     * @tc.name      : TestCase_1012
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1012(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1012 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101300
     * @tc.name      : TestCase_1013
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1013(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1013 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101400
     * @tc.name      : TestCase_1014
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1014(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1014 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101500
     * @tc.name      : TestCase_1015
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1015(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1015 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101600
     * @tc.name      : TestCase_1016
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1016(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1016 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101700
     * @tc.name      : TestCase_1017
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1017(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1017 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101800
     * @tc.name      : TestCase_1018
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1018(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1018 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_101900
     * @tc.name      : TestCase_1019
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1019(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1019 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_102000
     * @tc.name      : TestCase_1020
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_SLEEP"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1020(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1020 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1020 ends.")
    }
}

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
class testPublishData_58 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171100
     * @tc.name      : TestCase_1711
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1711(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1711 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171200
     * @tc.name      : TestCase_1712
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1712(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1712 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171300
     * @tc.name      : TestCase_1713
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1713(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1713 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171400
     * @tc.name      : TestCase_1714
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1714(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1714 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171500
     * @tc.name      : TestCase_1715
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1715(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1715 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171600
     * @tc.name      : TestCase_1716
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1716(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1716 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171700
     * @tc.name      : TestCase_1717
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1717(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1717 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171800
     * @tc.name      : TestCase_1718
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1718(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1718 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171900
     * @tc.name      : TestCase_1719
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1719(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1719 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172000
     * @tc.name      : TestCase_1720
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1720(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1720 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172100
     * @tc.name      : TestCase_1721
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1721(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1721 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172200
     * @tc.name      : TestCase_1722
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1722(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1722 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172300
     * @tc.name      : TestCase_1723
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1723(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1723 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172400
     * @tc.name      : TestCase_1724
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1724(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1724 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172500
     * @tc.name      : TestCase_1725
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1725(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1725 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172600
     * @tc.name      : TestCase_1726
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1726(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1726 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172700
     * @tc.name      : TestCase_1727
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1727(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1727 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172800
     * @tc.name      : TestCase_1728
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1728(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1728 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_172900
     * @tc.name      : TestCase_1729
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1729(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1729 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#0: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173000
     * @tc.name      : TestCase_1730
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1730(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1730 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#1: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173100
     * @tc.name      : TestCase_1731
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1731(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1731 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#2: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173200
     * @tc.name      : TestCase_1732
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1732(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1732 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#3: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173300
     * @tc.name      : TestCase_1733
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1733(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1733 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#4: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173400
     * @tc.name      : TestCase_1734
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1734(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1734 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#5: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173500
     * @tc.name      : TestCase_1735
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1735(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1735 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#6: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173600
     * @tc.name      : TestCase_1736
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1736(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1736 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#7: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173700
     * @tc.name      : TestCase_1737
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1737(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1737 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#8: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173800
     * @tc.name      : TestCase_1738
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1738(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1738 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#9: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_173900
     * @tc.name      : TestCase_1739
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1739(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1739 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#10: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174000
     * @tc.name      : TestCase_1740
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1740(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1740 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#11: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1740 ends.")
    }
}

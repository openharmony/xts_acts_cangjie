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
class testPublishData_57 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168100
     * @tc.name      : TestCase_1681
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1681(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1681 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168200
     * @tc.name      : TestCase_1682
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1682(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1682 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168300
     * @tc.name      : TestCase_1683
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1683(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1683 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168400
     * @tc.name      : TestCase_1684
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1684(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1684 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168500
     * @tc.name      : TestCase_1685
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1685(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1685 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168600
     * @tc.name      : TestCase_1686
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1686(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1686 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168700
     * @tc.name      : TestCase_1687
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1687(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1687 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168800
     * @tc.name      : TestCase_1688
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1688(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1688 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168900
     * @tc.name      : TestCase_1689
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1689(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1689 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169000
     * @tc.name      : TestCase_1690
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1690(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1690 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169100
     * @tc.name      : TestCase_1691
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1691(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1691 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169200
     * @tc.name      : TestCase_1692
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1692(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1692 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169300
     * @tc.name      : TestCase_1693
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1693(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1693 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169400
     * @tc.name      : TestCase_1694
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1694(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1694 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169500
     * @tc.name      : TestCase_1695
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1695(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1695 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169600
     * @tc.name      : TestCase_1696
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1696(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1696 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169700
     * @tc.name      : TestCase_1697
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1697(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1697 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169800
     * @tc.name      : TestCase_1698
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1698(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1698 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_169900
     * @tc.name      : TestCase_1699
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1699(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1699 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170000
     * @tc.name      : TestCase_1700
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1700(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1700 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1700 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170100
     * @tc.name      : TestCase_1701
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1701(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1701 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170200
     * @tc.name      : TestCase_1702
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1702(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1702 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170300
     * @tc.name      : TestCase_1703
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1703(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1703 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170400
     * @tc.name      : TestCase_1704
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1704(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1704 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170500
     * @tc.name      : TestCase_1705
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1705(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1705 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170600
     * @tc.name      : TestCase_1706
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1706(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1706 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170700
     * @tc.name      : TestCase_1707
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1707(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1707 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170800
     * @tc.name      : TestCase_1708
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1708(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1708 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_170900
     * @tc.name      : TestCase_1709
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1709(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1709 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_171000
     * @tc.name      : TestCase_1710
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1710(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1710 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1710 ends.")
    }
}

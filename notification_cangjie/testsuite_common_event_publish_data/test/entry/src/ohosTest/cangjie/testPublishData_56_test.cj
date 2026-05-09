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
class testPublishData_56 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165100
     * @tc.name      : TestCase_1651
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1651(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1651 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165200
     * @tc.name      : TestCase_1652
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1652(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1652 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165300
     * @tc.name      : TestCase_1653
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1653(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1653 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165400
     * @tc.name      : TestCase_1654
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1654(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1654 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165500
     * @tc.name      : TestCase_1655
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1655(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1655 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165600
     * @tc.name      : TestCase_1656
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1656(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1656 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165700
     * @tc.name      : TestCase_1657
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1657(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1657 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165800
     * @tc.name      : TestCase_1658
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1658(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1658 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_165900
     * @tc.name      : TestCase_1659
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1659(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1659 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166000
     * @tc.name      : TestCase_1660
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1660(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1660 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166100
     * @tc.name      : TestCase_1661
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1661(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1661 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166200
     * @tc.name      : TestCase_1662
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1662(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1662 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166300
     * @tc.name      : TestCase_1663
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1663(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1663 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166400
     * @tc.name      : TestCase_1664
     * @tc.desc      : test publish parameter use commonEventPublishData "common.event.IVI_ACTIVE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1664(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1664 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166500
     * @tc.name      : TestCase_1665
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1665(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1665 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166600
     * @tc.name      : TestCase_1666
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1666(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1666 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166700
     * @tc.name      : TestCase_1667
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1667(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1667 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166800
     * @tc.name      : TestCase_1668
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1668(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1668 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_166900
     * @tc.name      : TestCase_1669
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1669(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1669 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167000
     * @tc.name      : TestCase_1670
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1670(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1670 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167100
     * @tc.name      : TestCase_1671
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1671(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1671 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167200
     * @tc.name      : TestCase_1672
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1672(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1672 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167300
     * @tc.name      : TestCase_1673
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1673(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1673 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167400
     * @tc.name      : TestCase_1674
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1674(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1674 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167500
     * @tc.name      : TestCase_1675
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1675(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1675 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167600
     * @tc.name      : TestCase_1676
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1676(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1676 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167700
     * @tc.name      : TestCase_1677
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1677(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1677 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167800
     * @tc.name      : TestCase_1678
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1678(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1678 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_167900
     * @tc.name      : TestCase_1679
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1679(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1679 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_168000
     * @tc.name      : TestCase_1680
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.INCOMING_CALL_MISSED"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1680(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1680 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1680 ends.")
    }
}

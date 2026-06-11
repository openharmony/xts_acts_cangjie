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
class testPublishData_23 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66100
     * @tc.name      : TestCase_661
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_661(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_661 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66200
     * @tc.name      : TestCase_662
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_662(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_662 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66300
     * @tc.name      : TestCase_663
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_663(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_663 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66400
     * @tc.name      : TestCase_664
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_664(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_664 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66500
     * @tc.name      : TestCase_665
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_665(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_665 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66600
     * @tc.name      : TestCase_666
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_666(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_666 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66700
     * @tc.name      : TestCase_667
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_667(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_667 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66800
     * @tc.name      : TestCase_668
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_668(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_668 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_66900
     * @tc.name      : TestCase_669
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_669(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_669 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67000
     * @tc.name      : TestCase_670
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_670(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_670 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67100
     * @tc.name      : TestCase_671
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_671(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_671 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67200
     * @tc.name      : TestCase_672
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_672(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_672 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67300
     * @tc.name      : TestCase_673
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_673(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_673 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67400
     * @tc.name      : TestCase_674
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_674(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_674 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67500
     * @tc.name      : TestCase_675
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_675(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_675 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67600
     * @tc.name      : TestCase_676
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_676(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_676 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67700
     * @tc.name      : TestCase_677
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_677(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_677 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67800
     * @tc.name      : TestCase_678
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_678(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_678 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_67900
     * @tc.name      : TestCase_679
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_679(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_679 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68000
     * @tc.name      : TestCase_680
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_680(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_680 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68100
     * @tc.name      : TestCase_681
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_681(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_681 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68200
     * @tc.name      : TestCase_682
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_682(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_682 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68300
     * @tc.name      : TestCase_683
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_683(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_683 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68400
     * @tc.name      : TestCase_684
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_684(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_684 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68500
     * @tc.name      : TestCase_685
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_685(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_685 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68600
     * @tc.name      : TestCase_686
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_686(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_686 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68700
     * @tc.name      : TestCase_687
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_687(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_687 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68800
     * @tc.name      : TestCase_688
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_688(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_688 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_68900
     * @tc.name      : TestCase_689
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_689(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_689 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_69000
     * @tc.name      : TestCase_690
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_690(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_690 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_690 ends.")
    }
}

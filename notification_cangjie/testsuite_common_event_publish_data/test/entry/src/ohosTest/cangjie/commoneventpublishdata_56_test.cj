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
class testPublishData_60 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177100
     * @tc.name      : TestCase_1771
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1771(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1771 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177200
     * @tc.name      : TestCase_1772
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1772(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1772 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177300
     * @tc.name      : TestCase_1773
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1773(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1773 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177400
     * @tc.name      : TestCase_1774
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1774(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1774 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177500
     * @tc.name      : TestCase_1775
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1775(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1775 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177600
     * @tc.name      : TestCase_1776
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1776(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1776 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177700
     * @tc.name      : TestCase_1777
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1777(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1777 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177800
     * @tc.name      : TestCase_1778
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1778(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1778 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177900
     * @tc.name      : TestCase_1779
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1779(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1779 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178000
     * @tc.name      : TestCase_1780
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1780(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1780 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178100
     * @tc.name      : TestCase_1781
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1781(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1781 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178200
     * @tc.name      : TestCase_1782
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1782(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1782 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178300
     * @tc.name      : TestCase_1783
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1783(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1783 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178400
     * @tc.name      : TestCase_1784
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1784(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1784 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178500
     * @tc.name      : TestCase_1785
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1785(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1785 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178600
     * @tc.name      : TestCase_1786
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1786(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1786 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178700
     * @tc.name      : TestCase_1787
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1787(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1787 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178800
     * @tc.name      : TestCase_1788
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1788(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1788 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_178900
     * @tc.name      : TestCase_1789
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1789(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1789 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179000
     * @tc.name      : TestCase_1790
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1790(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1790 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179100
     * @tc.name      : TestCase_1791
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1791(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1791 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179200
     * @tc.name      : TestCase_1792
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1792(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1792 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179300
     * @tc.name      : TestCase_1793
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1793(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1793 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179400
     * @tc.name      : TestCase_1794
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1794(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1794 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179500
     * @tc.name      : TestCase_1795
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1795(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1795 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179600
     * @tc.name      : TestCase_1796
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1796(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1796 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179700
     * @tc.name      : TestCase_1797
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1797(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1797 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179800
     * @tc.name      : TestCase_1798
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1798(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1798 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_179900
     * @tc.name      : TestCase_1799
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1799(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1799 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_180000
     * @tc.name      : TestCase_1800
     * @tc.desc      : test publish parameter use commonEventPublishData "errorString"+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1800(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1800 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1800 ends.")
    }
}

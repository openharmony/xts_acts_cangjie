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
class testPublishData_59 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174100
     * @tc.name      : TestCase_1741
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1741(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1741 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#12: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174200
     * @tc.name      : TestCase_1742
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1742(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1742 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#13: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174300
     * @tc.name      : TestCase_1743
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1743(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1743 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#14: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174400
     * @tc.name      : TestCase_1744
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1744(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1744 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#15: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174500
     * @tc.name      : TestCase_1745
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1745(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1745 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#16: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174600
     * @tc.name      : TestCase_1746
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1746(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1746 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#17: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174700
     * @tc.name      : TestCase_1747
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1747(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1747 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#18: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174800
     * @tc.name      : TestCase_1748
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1748(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1748 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#19: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_174900
     * @tc.name      : TestCase_1749
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1749(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1749 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#20: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175000
     * @tc.name      : TestCase_1750
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1750(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1750 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#21: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175100
     * @tc.name      : TestCase_1751
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1751(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1751 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#22: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175200
     * @tc.name      : TestCase_1752
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1752(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1752 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#23: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175300
     * @tc.name      : TestCase_1753
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1753(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1753 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#24: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175400
     * @tc.name      : TestCase_1754
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1754(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1754 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#25: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175500
     * @tc.name      : TestCase_1755
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1755(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1755 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#26: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175600
     * @tc.name      : TestCase_1756
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1756(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1756 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#27: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175700
     * @tc.name      : TestCase_1757
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1757(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1757 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#28: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175800
     * @tc.name      : TestCase_1758
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1758(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1758 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#29: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_175900
     * @tc.name      : TestCase_1759
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1759(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1759 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#30: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176000
     * @tc.name      : TestCase_1760
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1760(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1760 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#31: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176100
     * @tc.name      : TestCase_1761
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1761(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1761 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#32: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176200
     * @tc.name      : TestCase_1762
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1762(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1762 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#33: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176300
     * @tc.name      : TestCase_1763
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1763(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1763 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#34: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176400
     * @tc.name      : TestCase_1764
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1764(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1764 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#35: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176500
     * @tc.name      : TestCase_1765
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1765(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1765 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#36: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176600
     * @tc.name      : TestCase_1766
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1766(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1766 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#37: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176700
     * @tc.name      : TestCase_1767
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1767(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1767 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#38: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176800
     * @tc.name      : TestCase_1768
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1768(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1768 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#39: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_176900
     * @tc.name      : TestCase_1769
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1769(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1769 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#40: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_177000
     * @tc.name      : TestCase_1770
     * @tc.desc      : test publish parameter use commonEventPublishData ""+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1770(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1770 begins.")
        Hilog.info(0u32, "cangjietest", "", "publish fail")
        try {
            CommonEventManager.publish("",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
            @Expect("assertion#41: not throw", "publish fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "publish failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1770 ends.")
    }
}

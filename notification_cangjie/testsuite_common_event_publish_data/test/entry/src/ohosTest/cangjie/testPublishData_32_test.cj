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
class testPublishData_32 {
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
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93100
     * @tc.name      : TestCase_931
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_931(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_931 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93200
     * @tc.name      : TestCase_932
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_932(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_932 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93300
     * @tc.name      : TestCase_933
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_933(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_933 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93400
     * @tc.name      : TestCase_934
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_934(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_934 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93500
     * @tc.name      : TestCase_935
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_935(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_935 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93600
     * @tc.name      : TestCase_936
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_936(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_936 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93700
     * @tc.name      : TestCase_937
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_937(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_937 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93800
     * @tc.name      : TestCase_938
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_938(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_938 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_93900
     * @tc.name      : TestCase_939
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_939(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_939 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94000
     * @tc.name      : TestCase_940
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_940(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_940 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94100
     * @tc.name      : TestCase_941
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_941(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_941 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94200
     * @tc.name      : TestCase_942
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_942(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_942 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94300
     * @tc.name      : TestCase_943
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_943(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_943 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94400
     * @tc.name      : TestCase_944
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_944(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_944 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "DATA", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94500
     * @tc.name      : TestCase_945
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_945(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_945 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94600
     * @tc.name      : TestCase_946
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_946(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_946 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94700
     * @tc.name      : TestCase_947
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_947(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_947 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94800
     * @tc.name      : TestCase_948
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_948(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_948 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_94900
     * @tc.name      : TestCase_949
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_949(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_949 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95000
     * @tc.name      : TestCase_950
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_950(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_950 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95100
     * @tc.name      : TestCase_951
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_951(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_951 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95200
     * @tc.name      : TestCase_952
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_952(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_952 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 0i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95300
     * @tc.name      : TestCase_953
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_953(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_953 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95400
     * @tc.name      : TestCase_954
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_954(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_954 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95500
     * @tc.name      : TestCase_955
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_955(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_955 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95600
     * @tc.name      : TestCase_956
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_956(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_956 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: true, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95700
     * @tc.name      : TestCase_957
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_957(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_957 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95800
     * @tc.name      : TestCase_958
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_958(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_958 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["subscriberPermissions"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_95900
     * @tc.name      : TestCase_959
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_959(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_959 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_96000
     * @tc.name      : TestCase_960
     * @tc.desc      : test publish parameter use commonEventPublishData "usual.event.HTTP_PROXY_CHANGE"+"!#$@%^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_960(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_960 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE",
                options: CommonEventPublishData(bundleName: "!#$@%^&*", data: "sw65^6&^$%$", code: 1i32,
                    subscriberPermissions: ["Data"], isOrdered: false, isSticky: false,
                    parameters: HashMap<String, CommonEventValueType>()))
        } catch (e: BusinessException) {
            @Expect(e.code,1500003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_960 ends.")
    }
}

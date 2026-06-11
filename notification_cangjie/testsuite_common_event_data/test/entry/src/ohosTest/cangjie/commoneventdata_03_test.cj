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
import ohos.business_exception.BusinessException

@Test
class testSubscribe_53 {
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
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156100
     * @tc.name      : TestCase_1561
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key145", CommonEventValueType.FLOAT64(-1.000000f64)), ("key146", CommonEventValueType.STRING("hello world")), ("key147", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1561(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1561 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156200
     * @tc.name      : TestCase_1562
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key148", CommonEventValueType.FLOAT64(-1.000000f64)), ("key149", CommonEventValueType.STRING("hello world")), ("key150", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1562(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1562 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156300
     * @tc.name      : TestCase_1563
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key151", CommonEventValueType.FLOAT64(-1.000000f64)), ("key152", CommonEventValueType.STRING("hello world")), ("key153", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1563(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1563 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156400
     * @tc.name      : TestCase_1564
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key154", CommonEventValueType.FLOAT64(-1.000000f64)), ("key155", CommonEventValueType.STRING("hello world")), ("key156", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1564(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1564 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156500
     * @tc.name      : TestCase_1565
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key157", CommonEventValueType.FLOAT64(-1.000000f64)), ("key158", CommonEventValueType.STRING("hello world")), ("key159", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1565(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1565 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156600
     * @tc.name      : TestCase_1566
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key160", CommonEventValueType.FLOAT64(-1.000000f64)), ("key161", CommonEventValueType.STRING("hello world")), ("key162", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1566(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1566 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156700
     * @tc.name      : TestCase_1567
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key163", CommonEventValueType.FLOAT64(-1.000000f64)), ("key164", CommonEventValueType.BOOL(true)), ("key165", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1567(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1567 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156800
     * @tc.name      : TestCase_1568
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key166", CommonEventValueType.FLOAT64(-1.000000f64)), ("key167", CommonEventValueType.BOOL(true)), ("key168", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1568(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1568 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156900
     * @tc.name      : TestCase_1569
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key169", CommonEventValueType.FLOAT64(-1.000000f64)), ("key170", CommonEventValueType.BOOL(true)), ("key171", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1569(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1569 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157000
     * @tc.name      : TestCase_1570
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key172", CommonEventValueType.FLOAT64(-1.000000f64)), ("key173", CommonEventValueType.BOOL(true)), ("key174", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1570(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1570 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157100
     * @tc.name      : TestCase_1571
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key175", CommonEventValueType.FLOAT64(-1.000000f64)), ("key176", CommonEventValueType.BOOL(true)), ("key177", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1571(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1571 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157200
     * @tc.name      : TestCase_1572
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key178", CommonEventValueType.FLOAT64(-1.000000f64)), ("key179", CommonEventValueType.BOOL(true)), ("key180", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1572(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1572 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157300
     * @tc.name      : TestCase_1573
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key181", CommonEventValueType.FLOAT64(-1.000000f64)), ("key182", CommonEventValueType.FD(1i32)), ("key183", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1573(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1573 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157400
     * @tc.name      : TestCase_1574
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key184", CommonEventValueType.FLOAT64(-1.000000f64)), ("key185", CommonEventValueType.FD(1i32)), ("key186", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1574(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1574 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157500
     * @tc.name      : TestCase_1575
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key187", CommonEventValueType.FLOAT64(-1.000000f64)), ("key188", CommonEventValueType.FD(1i32)), ("key189", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1575(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1575 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157600
     * @tc.name      : TestCase_1576
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key190", CommonEventValueType.FLOAT64(-1.000000f64)), ("key191", CommonEventValueType.FD(1i32)), ("key192", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1576(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1576 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157700
     * @tc.name      : TestCase_1577
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key193", CommonEventValueType.FLOAT64(-1.000000f64)), ("key194", CommonEventValueType.FD(1i32)), ("key195", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1577(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1577 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157800
     * @tc.name      : TestCase_1578
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key196", CommonEventValueType.FLOAT64(-1.000000f64)), ("key197", CommonEventValueType.FD(1i32)), ("key198", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1578(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1578 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_157900
     * @tc.name      : TestCase_1579
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key199", CommonEventValueType.FLOAT64(-1.000000f64)), ("key200", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key201", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1579(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1579 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158000
     * @tc.name      : TestCase_1580
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key202", CommonEventValueType.FLOAT64(-1.000000f64)), ("key203", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key204", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1580(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1580 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158100
     * @tc.name      : TestCase_1581
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key205", CommonEventValueType.FLOAT64(-1.000000f64)), ("key206", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key207", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1581(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1581 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158200
     * @tc.name      : TestCase_1582
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key208", CommonEventValueType.FLOAT64(-1.000000f64)), ("key209", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key210", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1582(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1582 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158300
     * @tc.name      : TestCase_1583
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key211", CommonEventValueType.FLOAT64(-1.000000f64)), ("key212", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key213", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1583(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1583 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158400
     * @tc.name      : TestCase_1584
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key214", CommonEventValueType.FLOAT64(-1.000000f64)), ("key215", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key216", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1584(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1584 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158500
     * @tc.name      : TestCase_1585
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key217", CommonEventValueType.STRING("hello world")), ("key218", CommonEventValueType.INT(-1i32)), ("key219", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1585(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1585 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158600
     * @tc.name      : TestCase_1586
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key220", CommonEventValueType.STRING("hello world")), ("key221", CommonEventValueType.INT(-1i32)), ("key222", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1586(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1586 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158700
     * @tc.name      : TestCase_1587
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key223", CommonEventValueType.STRING("hello world")), ("key224", CommonEventValueType.INT(-1i32)), ("key225", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1587(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1587 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158800
     * @tc.name      : TestCase_1588
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key226", CommonEventValueType.STRING("hello world")), ("key227", CommonEventValueType.INT(-1i32)), ("key228", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1588(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1588 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_158900
     * @tc.name      : TestCase_1589
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key229", CommonEventValueType.STRING("hello world")), ("key230", CommonEventValueType.INT(-1i32)), ("key231", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1589(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1589 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_159000
     * @tc.name      : TestCase_1590
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key232", CommonEventValueType.STRING("hello world")), ("key233", CommonEventValueType.INT(-1i32)), ("key234", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1590(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1590 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1590 ends.")
    }
}

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
class testSubscribe_56 {
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
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165100
     * @tc.name      : TestCase_1651
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key415", CommonEventValueType.BOOL(true)), ("key416", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key417", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1651(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1651 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165200
     * @tc.name      : TestCase_1652
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key418", CommonEventValueType.BOOL(true)), ("key419", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key420", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1652(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1652 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165300
     * @tc.name      : TestCase_1653
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key421", CommonEventValueType.BOOL(true)), ("key422", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key423", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1653(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1653 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165400
     * @tc.name      : TestCase_1654
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key424", CommonEventValueType.BOOL(true)), ("key425", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key426", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1654(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1654 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165500
     * @tc.name      : TestCase_1655
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key427", CommonEventValueType.BOOL(true)), ("key428", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key429", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1655(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1655 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165600
     * @tc.name      : TestCase_1656
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key430", CommonEventValueType.BOOL(true)), ("key431", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key432", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1656(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1656 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165700
     * @tc.name      : TestCase_1657
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key433", CommonEventValueType.FD(1i32)), ("key434", CommonEventValueType.INT(-1i32)), ("key435", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1657(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1657 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165800
     * @tc.name      : TestCase_1658
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key436", CommonEventValueType.FD(1i32)), ("key437", CommonEventValueType.INT(-1i32)), ("key438", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1658(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1658 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165900
     * @tc.name      : TestCase_1659
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key439", CommonEventValueType.FD(1i32)), ("key440", CommonEventValueType.INT(-1i32)), ("key441", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1659(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1659 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166000
     * @tc.name      : TestCase_1660
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key442", CommonEventValueType.FD(1i32)), ("key443", CommonEventValueType.INT(-1i32)), ("key444", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1660(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1660 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166100
     * @tc.name      : TestCase_1661
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key445", CommonEventValueType.FD(1i32)), ("key446", CommonEventValueType.INT(-1i32)), ("key447", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1661(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1661 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166200
     * @tc.name      : TestCase_1662
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key448", CommonEventValueType.FD(1i32)), ("key449", CommonEventValueType.INT(-1i32)), ("key450", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1662(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1662 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166300
     * @tc.name      : TestCase_1663
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key451", CommonEventValueType.FD(1i32)), ("key452", CommonEventValueType.FLOAT64(-1.000000f64)), ("key453", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1663(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1663 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166400
     * @tc.name      : TestCase_1664
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key454", CommonEventValueType.FD(1i32)), ("key455", CommonEventValueType.FLOAT64(-1.000000f64)), ("key456", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1664(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1664 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166500
     * @tc.name      : TestCase_1665
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key457", CommonEventValueType.FD(1i32)), ("key458", CommonEventValueType.FLOAT64(-1.000000f64)), ("key459", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1665(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1665 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166600
     * @tc.name      : TestCase_1666
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key460", CommonEventValueType.FD(1i32)), ("key461", CommonEventValueType.FLOAT64(-1.000000f64)), ("key462", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1666(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1666 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166700
     * @tc.name      : TestCase_1667
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key463", CommonEventValueType.FD(1i32)), ("key464", CommonEventValueType.FLOAT64(-1.000000f64)), ("key465", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1667(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1667 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166800
     * @tc.name      : TestCase_1668
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key466", CommonEventValueType.FD(1i32)), ("key467", CommonEventValueType.FLOAT64(-1.000000f64)), ("key468", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1668(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1668 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_166900
     * @tc.name      : TestCase_1669
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key469", CommonEventValueType.FD(1i32)), ("key470", CommonEventValueType.STRING("hello world")), ("key471", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1669(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1669 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167000
     * @tc.name      : TestCase_1670
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key472", CommonEventValueType.FD(1i32)), ("key473", CommonEventValueType.STRING("hello world")), ("key474", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1670(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1670 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167100
     * @tc.name      : TestCase_1671
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key475", CommonEventValueType.FD(1i32)), ("key476", CommonEventValueType.STRING("hello world")), ("key477", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1671(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1671 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167200
     * @tc.name      : TestCase_1672
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key478", CommonEventValueType.FD(1i32)), ("key479", CommonEventValueType.STRING("hello world")), ("key480", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1672(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1672 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167300
     * @tc.name      : TestCase_1673
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key481", CommonEventValueType.FD(1i32)), ("key482", CommonEventValueType.STRING("hello world")), ("key483", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1673(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1673 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167400
     * @tc.name      : TestCase_1674
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key484", CommonEventValueType.FD(1i32)), ("key485", CommonEventValueType.STRING("hello world")), ("key486", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1674(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1674 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167500
     * @tc.name      : TestCase_1675
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key487", CommonEventValueType.FD(1i32)), ("key488", CommonEventValueType.BOOL(true)), ("key489", CommonEventValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1675(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1675 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167600
     * @tc.name      : TestCase_1676
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key490", CommonEventValueType.FD(1i32)), ("key491", CommonEventValueType.BOOL(true)), ("key492", CommonEventValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1676(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1676 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167700
     * @tc.name      : TestCase_1677
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key493", CommonEventValueType.FD(1i32)), ("key494", CommonEventValueType.BOOL(true)), ("key495", CommonEventValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1677(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1677 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167800
     * @tc.name      : TestCase_1678
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key496", CommonEventValueType.FD(1i32)), ("key497", CommonEventValueType.BOOL(true)), ("key498", CommonEventValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1678(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1678 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_167900
     * @tc.name      : TestCase_1679
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key499", CommonEventValueType.FD(1i32)), ("key500", CommonEventValueType.BOOL(true)), ("key501", CommonEventValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1679(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1679 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_168000
     * @tc.name      : TestCase_1680
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key502", CommonEventValueType.FD(1i32)), ("key503", CommonEventValueType.BOOL(true)), ("key504", CommonEventValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1680(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1680 begins.")
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1680 ends.")
    }
}

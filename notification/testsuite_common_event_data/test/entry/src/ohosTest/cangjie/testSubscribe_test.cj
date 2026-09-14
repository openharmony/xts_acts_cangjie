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

struct SubscribeTestDataParam {
    let publisherPermission: String

    public init(publisherPermission: String) {
        this.publisherPermission = publisherPermission
    }
}

let subscribeTestDataCases_51: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("reason"),
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_52: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_53: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_54: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_55: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_56: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_57: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890")
]

let subscribeTestDataCases_58: Array<SubscribeTestDataParam> = [
    SubscribeTestDataParam("1234567890"),
    SubscribeTestDataParam("!#$@%^&*")
]

@Test
class testSubscribe {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "cangjietest", "get user granted permission ohos.permission.COMMONEVENT_STICKY")
        try {
            getRequiredPermissions(["ohos.permission.COMMONEVENT_STICKY"])
            sleep(Duration.second * 1i64)
            click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0u32, "cangjietest", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150100
     * @tc.name      : TestCase_1501
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1501(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1501 begins.")
        for (param in subscribeTestDataCases_51) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153100
     * @tc.name      : TestCase_1531
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1531(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1531 begins.")
        for (param in subscribeTestDataCases_52) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156100
     * @tc.name      : TestCase_1561
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1561(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1561 begins.")
        for (param in subscribeTestDataCases_53) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_159100
     * @tc.name      : TestCase_1591
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1591(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1591 begins.")
        for (param in subscribeTestDataCases_54) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_162100
     * @tc.name      : TestCase_1621
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1621(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1621 begins.")
        for (param in subscribeTestDataCases_55) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_165100
     * @tc.name      : TestCase_1651
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1651(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1651 begins.")
        for (param in subscribeTestDataCases_56) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_168100
     * @tc.name      : TestCase_1681
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1681(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1681 begins.")
        for (param in subscribeTestDataCases_57) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_171100
     * @tc.name      : TestCase_1711
     * @tc.desc      : test subscribe with various publisherPermission values, expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1711(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1711 begins.")
        for (param in subscribeTestDataCases_58) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherPermission, userId: -1i32,
                        priority: -1i32, publisherBundleName: param.publisherPermission))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1711 ends.")
    }
}

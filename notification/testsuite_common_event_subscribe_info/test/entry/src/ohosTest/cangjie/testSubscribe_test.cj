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

struct SubscribeParam {
    let events: Array<String>
    let publisherPermission: String
    let publisherDeviceId: String
    let userId: Int32
    let priority: Int32
    let publisherBundleName: String

    public init(events: Array<String>, publisherPermission: String, publisherDeviceId: String,
        userId: Int32, priority: Int32, publisherBundleName: String) {
        this.events = events
        this.publisherPermission = publisherPermission
        this.publisherDeviceId = publisherDeviceId
        this.userId = userId
        this.priority = priority
        this.publisherBundleName = publisherBundleName
    }
}

let subscribeFailCases: Array<SubscribeParam> = [
    SubscribeParam([], "", "", -1i32, -1i32, ""),
    SubscribeParam([], "reason", "reason", -1i32, -1i32, "reason"),
    SubscribeParam([], "#!$@$23", "#!$@$23", 1024i32, 1024i32, "#!$@$23"),
    SubscribeParam([], "@POD3e3", "@POD3e3", 10000i32, 10000i32, "@POD3e3"),
    SubscribeParam([], "#@#$%*d./", "#@#$%*d./", 10i32, 10i32, "#@#$%*d./"),
    SubscribeParam([], "3213", "3213", 1i32, 1i32, "3213")
]

let subscribeSuccessCases: Array<SubscribeParam> = [
    SubscribeParam(["common.event.ABILITY_ADDED", "usual.event.DATE_CHANGED"], "aaaa", "aaaa", 0i32, 0i32, "aaaa")
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
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test subscribe with various invalid CommonEventSubscribeInfo parameter combinations (different publisherPermission, publisherDeviceId, publisherBundleName, userId, priority), expect BusinessException code 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_216 begins.")
        for (param in subscribeFailCases) {
            Hilog.info(0u32, "cangjietest", "requestSuspendDelay failed")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo(param.events, publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherDeviceId, userId: param.userId,
                        priority: param.priority, publisherBundleName: param.publisherBundleName))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test subscribe with valid CommonEventSubscribeInfo parameter combinations (events, publisherPermission, publisherDeviceId, userId, priority, publisherBundleName), expect success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_217 begins.")
        for (param in subscribeSuccessCases) {
            Hilog.info(0u32, "cangjietest", "subscribe")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo(param.events, publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherDeviceId, userId: param.userId,
                        priority: param.priority, publisherBundleName: param.publisherBundleName))
                CommonEventManager.subscribe(sub,
                    {
                        e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "onframe")
                    })
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase TestCase_217 ends.")
    }
}

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

struct CreateSubscriberParam {
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

let createSubscriberCases: Array<CreateSubscriberParam> = [
    CreateSubscriberParam([], "", "", -1i32, -1i32, ""),
    CreateSubscriberParam(["common.event.ABILITY_ADDED", "usual.event.DATE_CHANGED"], "aaaa", "aaaa", 0i32, 0i32, "aaaa"),
    CreateSubscriberParam([], "3213", "3213", 1i32, 1i32, "3213"),
    CreateSubscriberParam([], "#@#$%*d./", "#@#$%*d./", 10i32, 10i32, "#@#$%*d./"),
    CreateSubscriberParam([], "@POD3e3", "@POD3e3", 10000i32, 10000i32, "@POD3e3"),
    CreateSubscriberParam([], "#!$@$23", "#!$@$23", 1024i32, 1024i32, "#!$@$23"),
    CreateSubscriberParam([], "reason", "reason", -1i32, -1i32, "reason"),
    CreateSubscriberParam([], "1234567890", "1234567890", -1i32, -1i32, "1234567890"),
    CreateSubscriberParam([], "!#$@%^&*", "!#$@%^&*", -1i32, -1i32, "!#$@%^&*")
]

@Test
class testCreateSubscriber_1 {
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
     * @tc.number    : Sub_Cangjie_testCreateSubscriber_createSubscriber_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test createSubscriber with various CommonEventSubscribeInfo parameter combinations (different events, publisherPermission, publisherDeviceId, userId, priority, publisherBundleName), expect success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        for (param in createSubscriberCases) {
            Hilog.info(0u32, "cangjietest", "", "case start")
            try {
                CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo(param.events, publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherDeviceId, userId: param.userId,
                        priority: param.priority, publisherBundleName: param.publisherBundleName))
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }
}

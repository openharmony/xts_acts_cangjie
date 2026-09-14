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

struct UnsubscribeParam {
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

let unsubscribeCases: Array<UnsubscribeParam> = [
    UnsubscribeParam([], "", "", -1i32, -1i32, ""),
    UnsubscribeParam(["common.event.ABILITY_ADDED", "usual.event.DATE_CHANGED"], "aaaa", "aaaa", 0i32, 0i32, "aaaa"),
    UnsubscribeParam([], "3213", "3213", 1i32, 1i32, "3213"),
    UnsubscribeParam([], "#@#$%*d./", "#@#$%*d./", 10i32, 10i32, "#@#$%*d./"),
    UnsubscribeParam([], "@POD3e3", "@POD3e3", 10000i32, 10000i32, "@POD3e3"),
    UnsubscribeParam([], "#!$@$23", "#!$@$23", 1024i32, 1024i32, "#!$@$23"),
    UnsubscribeParam([], "reason", "reason", -1i32, -1i32, "reason"),
    UnsubscribeParam([], "1234567890", "1234567890", -1i32, -1i32, "1234567890"),
    UnsubscribeParam([], "!#$@%^&*", "!#$@%^&*", -1i32, -1i32, "!#$@%^&*")
]

@Test
class testUnsubscribe_1 {
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
     * @tc.number    : Sub_Cangjie_testUnsubscribe_unsubscribe_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test unsubscribe with various CommonEventSubscribeInfo parameter combinations (different events, publisherPermission, publisherDeviceId, userId, priority, publisherBundleName), expect success or BusinessException code 1500008
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        for (param in unsubscribeCases) {
            Hilog.info(0u32, "cangjietest", "", "define local variable sub")
            try {
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo(param.events, publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherDeviceId, userId: param.userId,
                        priority: param.priority, publisherBundleName: param.publisherBundleName))
                Hilog.info(0u32, "cangjietest", "", "unsubscribe")
                CommonEventManager.unsubscribe(sub)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
                Hilog.error(0, "cangjietest", "testcase TestCase_1 fail: ${e.code}" + e.message)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }
}

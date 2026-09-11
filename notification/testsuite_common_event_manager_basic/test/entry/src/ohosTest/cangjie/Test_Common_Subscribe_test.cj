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

import kit.BasicServicesKit.*
import ohos.ui_test.*
import std.sync.{AtomicBool}
import std.collection.HashMap
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}

struct SubscribeParam {
    let publisherPermission: String
    let publisherDeviceId: String
    let userId: Int32
    let priority: Int32
    let publisherBundleName: String
    let publishEventName: String
    let publishDataIndex: Int32
    let subscribeBeforePublish: Bool
    let expectCallbackCalled: Bool

    public init(publisherPermission: String, publisherDeviceId: String, userId: Int32,
        priority: Int32, publisherBundleName: String, publishEventName: String,
        publishDataIndex: Int32, subscribeBeforePublish: Bool, expectCallbackCalled: Bool) {
        this.publisherPermission = publisherPermission
        this.publisherDeviceId = publisherDeviceId
        this.userId = userId
        this.priority = priority
        this.publisherBundleName = publisherBundleName
        this.publishEventName = publishEventName
        this.publishDataIndex = publishDataIndex
        this.subscribeBeforePublish = subscribeBeforePublish
        this.expectCallbackCalled = expectCallbackCalled
    }
}

let subscribeCases: Array<SubscribeParam> = [
    SubscribeParam("3213", "3213", 1i32, 1i32, "3213", "Support.COMMON_EVENT_SCREEN_ON", 0i32, true, true),
    SubscribeParam("ohos.permission.PLACE_CALL", "3213", 1i32, 1i32, "3213", "Support.COMMON_EVENT_SCREEN_ON", 1i32, true, true),
    SubscribeParam("3213", "3213", 1i32, 1i32, "3213", "Support.COMMON_EVENT_SCREEN_ON", 2i32, true, false),
    SubscribeParam("#!$@$23", "#!$@$23", 1024i32, 1024i32, "#!$@$23", "Support.COMMON_EVENT_SCREEN_ON11", 3i32, false, false),
    SubscribeParam("#@#$%*d./", "#@#$%*d./", 10i32, 10i32, "#@#$%*d./", "Support.COMMON_EVENT_SCREEN_ON1", 4i32, false, false)
]

@Test
class Test_CommonEvent_Subscribe {

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Subscribe_0100
     * @tc.name      : Test_CommonEvent_Subscribe_00
     * @tc.desc      : test CommonEvent subscribe with various subscriber parameters, publish event names and execution orders (subscribe-before-publish / publish-before-subscribe), verify callback state
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Subscribe_00() {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CommonEvent_Subscribe_00 begins.")
        for (param in subscribeCases) {
            try {
                let isCallBackCalled = AtomicBool(false)
                let sub = CommonEventManager.createSubscriber(
                    CommonEventSubscribeInfo([], publisherPermission: param.publisherPermission,
                        publisherDeviceId: param.publisherDeviceId, userId: param.userId,
                        priority: param.priority, publisherBundleName: param.publisherBundleName))
                let callBack = {
                    e: Option<BusinessException>, c: Option<CommonEventData> =>
                    Hilog.info(0, "CangjieTest", "", "subscribe success")
                    isCallBackCalled.store(true)
                }
                var publishData = commonEventPublishData00
                if (param.publishDataIndex == 1i32) {
                    publishData = commonEventPublishData01
                } else if (param.publishDataIndex == 2i32) {
                    publishData = commonEventPublishData02
                } else if (param.publishDataIndex == 3i32) {
                    publishData = commonEventPublishData03
                } else if (param.publishDataIndex == 4i32) {
                    publishData = commonEventPublishData04
                }
                if (param.subscribeBeforePublish) {
                    CommonEventManager.subscribe(sub, callBack)
                    @Expect(isCallBackCalled.load(), false)
                    CommonEventManager.publish(param.publishEventName, options: publishData)
                    sleepFor(1.second)
                    @Expect(isCallBackCalled.load(), param.expectCallbackCalled)
                    sleepFor(1.second)
                } else {
                    @Expect(isCallBackCalled.load(), false)
                    CommonEventManager.publish(param.publishEventName, options: publishData)
                    CommonEventManager.subscribe(sub, callBack)
                    sleepFor(2.second)
                    @Expect(isCallBackCalled.load(), param.expectCallbackCalled)
                }
                CommonEventManager.unsubscribe(sub)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
                Hilog.info(0u32, "cangjietest", "", "testcase Test_CommonEvent_Subscribe_00 : ${e.code}" + e.message)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CommonEvent_Subscribe_00 ends.")
    }
}

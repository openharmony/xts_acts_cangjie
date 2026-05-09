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
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}

@Test
class Test_CommonEvent_Subscribe {

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Subscribe_0100
     * @tc.name      : Test_CommonEvent_Subscribe_00
     * @tc.desc      : test CommonEvent Test_CommonEvent_Subscribe_00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Subscribe_00() {
        try {
            let isCallBackCalled = AtomicBool(false)
            let sub00 = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "3213", publisherDeviceId: "3213", userId: 1i32,
                    priority: 1i32, publisherBundleName: "3213"))

            let callBack = {
                e: Option<BusinessException>, c: Option<CommonEventData> =>
                Hilog.info(0, "CangjieTest", "", "subscribe success")
                isCallBackCalled.store(true)
            }
            CommonEventManager.subscribe(sub00, callBack)
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.publish("Support.COMMON_EVENT_SCREEN_ON", options: commonEventPublishData00)
            sleepFor(1.second)
            @Expect(isCallBackCalled.load(), true)
            sleepFor(1.second)
            CommonEventManager.unsubscribe(sub00)
        } catch (e: BusinessException) {
            @Expect(e.code,401)
            @Expect(e.message.contains("Parameter error."))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Subscribe_0200
     * @tc.name      : Test_CommonEvent_Subscribe_01
     * @tc.desc      : test CommonEvent Test_CommonEvent_Subscribe_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Subscribe_01() {
        try {
            let isCallBackCalled = AtomicBool(false)
            let sub01 = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "ohos.permission.PLACE_CALL",
                    publisherDeviceId: "3213", userId: 1i32, priority: 1i32, publisherBundleName: "3213"))
            let callBack = {
                e: Option<BusinessException>, c: Option<CommonEventData> =>
                Hilog.info(0, "CangjieTest", "", "subscribe success")
                isCallBackCalled.store(true)
            }
            CommonEventManager.subscribe(sub01, callBack)
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.publish("Support.COMMON_EVENT_SCREEN_ON", options: commonEventPublishData01)
            sleepFor(1.second)
            @Expect(isCallBackCalled.load(), true)
            sleepFor(1.second)
            CommonEventManager.unsubscribe(sub01)
        } catch (e: BusinessException) {
            @Expect(e.code,401)
            @Expect(e.message.contains("Parameter error."))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Subscribe_0300
     * @tc.name      : Test_CommonEvent_Subscribe_02
     * @tc.desc      : test CommonEvent Test_CommonEvent_Subscribe_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Subscribe_02() {
        try {
            let isCallBackCalled = AtomicBool(false)
            let sub00 = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "3213", publisherDeviceId: "3213", userId: 1i32,
                    priority: 1i32, publisherBundleName: "3213"))
            let callBack = {
                e: Option<BusinessException>, c: Option<CommonEventData> =>
                Hilog.info(0, "CangjieTest", "", "subscribe success")
                isCallBackCalled.store(true)
            }
            CommonEventManager.subscribe(sub00, callBack)
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.publish("Support.COMMON_EVENT_SCREEN_ON", options: commonEventPublishData02)
            sleepFor(1.second)
            @Expect(isCallBackCalled.load(), false)
            sleepFor(1.second)
            CommonEventManager.unsubscribe(sub00)
        } catch (e: BusinessException) {
            @Expect(e.code,401)
            @Expect(e.message.contains("Parameter error."))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Subscribe_0400
     * @tc.name      : Test_CommonEvent_Subscribe_03
     * @tc.desc      : test CommonEvent Test_CommonEvent_Subscribe_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Subscribe_03() {
        try {
            let isCallBackCalled = AtomicBool(false)
            let sub03 = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "#!$@$23", publisherDeviceId: "#!$@$23",
                    userId: 1024i32, priority: 1024i32, publisherBundleName: "#!$@$23"))
            let callBack = {
                e: Option<BusinessException>, c: Option<CommonEventData> =>
                Hilog.info(0, "CangjieTest", "", "subscribe success")
                isCallBackCalled.store(true)
            }
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.publish("Support.COMMON_EVENT_SCREEN_ON11", options: commonEventPublishData03)
            CommonEventManager.subscribe(sub03, callBack)
            sleepFor(2.second)
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.unsubscribe(sub03)
        } catch (e: BusinessException) {
            @Expect(e.code,401)
            @Expect(e.message.contains("Parameter error."))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Subscribe_0500
     * @tc.name      : Test_CommonEvent_Subscribe_04
     * @tc.desc      : test CommonEvent Test_CommonEvent_Subscribe_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Subscribe_04() {
        try {
            let isCallBackCalled = AtomicBool(false)
            let sub02 = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "#@#$%*d./", publisherDeviceId: "#@#$%*d./",
                    userId: 10i32, priority: 10i32, publisherBundleName: "#@#$%*d./"))
            let callBack = {
                e: Option<BusinessException>, c: Option<CommonEventData> =>
                isCallBackCalled.store(true)
                Hilog.info(0, "CangjieTest", "", "subscribe success")
            }
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.publish("Support.COMMON_EVENT_SCREEN_ON1", options: commonEventPublishData04)
            CommonEventManager.subscribe(sub02, callBack)
            sleepFor(2.second)
            @Expect(isCallBackCalled.load(), false)
            CommonEventManager.unsubscribe(sub02)
        } catch (e: BusinessException) {
            @Expect(e.code,401)
            @Expect(e.message.contains("Parameter error."))
        }
    }
}

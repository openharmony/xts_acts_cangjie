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

import ohos.common_event_manager.*
import ohos.ui_test.*
import std.collection.HashMap
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}

@Test
class Test_CommonEvent_CreateSubscriber {

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_CreateSubscriber_0100
     * @tc.name      : Test_CommonEvent_CreateSubscriber_00
     * @tc.desc      : test CommonEvent Test_CommonEvent_CreateSubscriber_00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_CreateSubscriber_00() {
        let support = Support.COMMON_EVENT_ABILITY_ADDED
        let subscribeInfo: CommonEventSubscribeInfo = CommonEventSubscribeInfo([support.toString()])
        let subscriber = CommonEventManager.createSubscriber(subscribeInfo)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_CreateSubscriber_0200
     * @tc.name      : Test_CommonEvent_CreateSubscriber_01
     * @tc.desc      : test CommonEvent Test_CommonEvent_CreateSubscriber_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_CreateSubscriber_01() {
        let subscribeInfo: CommonEventSubscribeInfo = CommonEventSubscribeInfo(
            [Support.COMMON_EVENT_ABILITY_ADDED.toString(), "new_event_commonevent"])
        let subscriber = CommonEventManager.createSubscriber(subscribeInfo)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_CreateSubscriber_0300
     * @tc.name      : Test_CommonEvent_CreateSubscriber_02
     * @tc.desc      : test CommonEvent Test_CommonEvent_CreateSubscriber_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_CreateSubscriber_02() {
        let subscribeInfo: CommonEventSubscribeInfo = CommonEventSubscribeInfo(["new_event_commonevent"], userId: 100,
            publisherPermission: "ohos.permission.PLACE_CALL", publisherDeviceId: "2MM0224161068529", priority: 2,
            publisherBundleName: "com.example.myapplication")
        let subscriber = CommonEventManager.createSubscriber(subscribeInfo)
        @Expect(true)
    }
}

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
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_SubscribeInfoStruct {
    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Struct_0100
     * @tc.name      : Test_subscribeInfo_defaultAndBounds
     * @tc.desc      : Covers default and boundary priority/userId construction of CommonEventSubscribeInfo.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_subscribeInfo_defaultAndBounds(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_subscribeInfo_defaultAndBounds begins.")
        let def = CommonEventSubscribeInfo(["usual.event.X"])
        @Expect(def.events.size, 1)
        @Expect(def.events[0], "usual.event.X")
        @Expect(def.publisherPermission, "")
        @Expect(def.publisherDeviceId, "")
        @Expect(def.publisherBundleName, "")
        @Expect(def.priority, 0i32)

        let pLow = CommonEventSubscribeInfo(["usual.event.X"], priority: -100i32)
        @Expect(pLow.priority, -100i32)
        let pHigh = CommonEventSubscribeInfo(["usual.event.X"], priority: 1000i32)
        @Expect(pHigh.priority, 1000i32)
        let pFull = CommonEventSubscribeInfo(
            ["usual.event.X", "usual.event.Y"],
            publisherPermission: "perm",
            publisherDeviceId: "dev",
            userId: 0i32,
            priority: 100i32,
            publisherBundleName: "bundle"
        )
        @Expect(pFull.events.size, 2)
        @Expect(pFull.publisherPermission, "perm")
        @Expect(pFull.publisherDeviceId, "dev")
        @Expect(pFull.userId, 0i32)
        @Expect(pFull.priority, 100i32)
        @Expect(pFull.publisherBundleName, "bundle")
        Hilog.info(0u32, "cangjietest", "testcase Test_subscribeInfo_defaultAndBounds ends.")
    }
}
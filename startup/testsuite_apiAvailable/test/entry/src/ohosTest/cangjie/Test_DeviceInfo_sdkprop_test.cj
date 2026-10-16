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
import ohos.hilog.Hilog
import ohos.device_info.*

@Test
class Test_DeviceInfo_sdkprop {
    /*
     * @tc.number    : Sub_Cangjie_DeviceInfo_sdkprop_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : new props sdkMinorApiVersion/sdkPatchApiVersion exist and hold values consistent with the current SDK version (minor/patch within 0..99).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        let major = DeviceInfo.sdkApiVersion
        let minor = DeviceInfo.sdkMinorApiVersion
        let patch = DeviceInfo.sdkPatchApiVersion
        @Expect(major > 0, true)
        @Expect(minor >= 0 && minor <= 99, true)
        @Expect(patch >= 0 && patch <= 99, true)
        Hilog.info(0u32, "CangjieTest", "sdk version: ${major}.${minor}.${patch}")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}

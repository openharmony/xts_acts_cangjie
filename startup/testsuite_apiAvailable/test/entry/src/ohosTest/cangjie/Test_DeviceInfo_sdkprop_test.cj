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
     * @tc.desc      : start test with new prop.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(DeviceInfo.sdkMinorApiVersion, 0)
        @Expect(DeviceInfo.sdkPatchApiVersion, 0)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}

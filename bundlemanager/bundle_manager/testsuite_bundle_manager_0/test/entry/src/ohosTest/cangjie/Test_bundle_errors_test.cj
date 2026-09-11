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
import kit.AbilityKit.*
import ohos.business_exception.BusinessException
import ohos.hilog.Hilog

@Test
class Test_bundle_errors {
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_err_dev_0100
     * @tc.name      : Test_Err_Dev_GetProfileByAbility_Disabled
     * @tc.desc      : Requires target ability disabled on real device (bm disable).
     *                 Cover BundleManager.getProfileByAbility error path (17700024,
     *                 real-device measured; the disabled check fires at the
     *                 application level before the profile lookup, so 17700029
     *                 is not reachable; both are declared for this API)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_GetProfileByAbility_Disabled(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_GetProfileByAbility_Disabled begins.")
        try {
            BundleManager.getProfileByAbility("entry", "EntryAbility", metadataName: "profile0")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "getProfileByAbility code=${e.code}")
            @Expect(e.code, 17700024i32)
        }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_GetProfileByAbility_Disabled ends.")
    }
}

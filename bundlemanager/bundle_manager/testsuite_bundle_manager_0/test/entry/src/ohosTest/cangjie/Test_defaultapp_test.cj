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

import std.core.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.AbilityKit.*
import kit.AbilityKit.BundleManager
import ohos.base.*
import ohos.hilog.Hilog
import ohos.business_exception.*

@Test
class Test_default_app {
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_default_app_0100
     * @tc.name      : Test_IsDefaultApplication_AllTypes
     * @tc.desc      : Cover DefaultAppManager.isDefaultApplication across all
     *                 ApplicationType values, expecting false with no default app
     *                 set (aligned with ACTS Sub_Bms_Framework_Status_DefaultApp_static_0900)
     *                 or 801 when the DefaultApp syscap is absent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_IsDefaultApplication_AllTypes(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_IsDefaultApplication_AllTypes begins.")
        let appTypes = [ApplicationType.Browser, ApplicationType.Image, ApplicationType.Audio,
            ApplicationType.Video, ApplicationType.Pdf, ApplicationType.Word,
            ApplicationType.Excel, ApplicationType.Ppt, ApplicationType.Email]
        let names = ["Browser", "Image", "Audio", "Video", "Pdf", "Word", "Excel", "Ppt", "Email"]
        var i = 0
        for (t in appTypes) {
            try {
                let isDefault = DefaultAppManager.isDefaultApplication(t)
                Hilog.info(0u32, "cangjietest", "isDefaultApplication %{public}s result: %{public}s", [names[i], isDefault.toString()])
                @Expect(isDefault, false)
            } catch (e: BusinessException) {
                Hilog.info(0u32, "cangjietest", "isDefaultApplication %{public}s error code: %{public}s", [names[i], e.code.toString()])
                @Expect(e.code, 801i32)
            }
            i = i + 1
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_IsDefaultApplication_AllTypes ends.")
    }
}

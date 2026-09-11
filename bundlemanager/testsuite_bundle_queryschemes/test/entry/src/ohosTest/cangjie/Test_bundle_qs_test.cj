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
import ohos.bundle.bundle_manager.BundleManager
import ohos.business_exception.BusinessException

@Test
class Test_bundle_qs {
    /*
     * @tc.number    : Sub_Cangjie_Bundle_qs_0100
     * @tc.name      : Test_Err_CanOpenLink_InvalidLink
     * @tc.desc      : Cover BundleManager.canOpenLink error path (17700055) with a
     *                 malformed http link while querySchemes declares "http"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_CanOpenLink_InvalidLink(): Unit {
        Hilog.info(0u32, "cangjietest", "%{public}s", "testcase Test_Err_CanOpenLink_InvalidLink begins.")
        try {
            BundleManager.canOpenLink("http:/")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "%{public}s", "canOpenLink code=${e.code.toString()}")
            @Expect(e.code, 17700055i32)
        }
        Hilog.info(0u32, "cangjietest", "%{public}s", "testcase Test_Err_CanOpenLink_InvalidLink ends.")
    }
}

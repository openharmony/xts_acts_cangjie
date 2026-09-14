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

import std.unittest.testmacro.{Test, TestCase, Expect}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.bundle.bundle_manager.BundleFlag
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestBundleFlag {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestBundleFlag_0100
     * @tc.name      : test_bundleFlag_constants
     * @tc.desc      : test BundleFlag class GET_BUNDLE_INFO_DEFAULT, GET_BUNDLE_INFO_WITH_ROUTER_MAP, GET_BUNDLE_INFO_WITH_SKILL constants
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bundleFlag_constants(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_bundleFlag_constants begins.")
        @Expect(BundleFlag.GET_BUNDLE_INFO_DEFAULT, 0x00000000)
        @Expect(BundleFlag.GET_BUNDLE_INFO_WITH_ROUTER_MAP, 0x00000200)
        @Expect(BundleFlag.GET_BUNDLE_INFO_WITH_SKILL, 0x00000800)
        let combined = BundleFlag.GET_BUNDLE_INFO_DEFAULT | BundleFlag.GET_BUNDLE_INFO_WITH_ROUTER_MAP | BundleFlag.GET_BUNDLE_INFO_WITH_SKILL
        @Expect(combined, 0x00000A00)
        Hilog.info(0u32, "cangjietest", "", "testcase test_bundleFlag_constants ends.")
    }
}

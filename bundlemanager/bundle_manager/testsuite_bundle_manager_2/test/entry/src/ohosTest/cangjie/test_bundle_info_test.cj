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

import std.unittest.testmacro.{Test, Expect, TestCase}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class TestBundleInfo {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestBundleInfo_0100
     * @tc.name      : test00
     * @tc.desc      : test BundleManager test00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test00(): Unit {
        let bundleInfo = getFullBundleInfo()
        if (bundleInfo.targetVersion >= 22) {
            @Expect(bundleInfo.name, "com.example.testsuite_bundle_manager_2")
            @Expect(bundleInfo.vendor, "example")
            @Expect(bundleInfo.versionCode, 1000000)
            @Expect(bundleInfo.versionName, "1.0.0")
            @Expect(bundleInfo.minCompatibleVersionCode, 1000000)
            @Expect(bundleInfo.installTime > 0)
            @Expect(bundleInfo.updateTime > 0)
        } else {
            @Expect(false)
        }
    }
}

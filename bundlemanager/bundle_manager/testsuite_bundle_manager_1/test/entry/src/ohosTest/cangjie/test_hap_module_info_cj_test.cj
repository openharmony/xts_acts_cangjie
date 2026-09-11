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
import ohos.arkui.state_macro_manage.r
import ohos.bundle.bundle_manager.{ModuleMetadata, Metadata, BundleType, HapModuleInfo, ExtensionAbilityInfo}
import ohos.bundle.bundle_manager.RouterItem
import kit.CoreFileKit.*
import kit.LocalizationKit.{ResourceManager}
import std.collection.*
import ohos.bundle.bundle_manager.SkillUri
import std.unittest.mock.NoneMatcher

@Test
class TestHapModuleInfo02 {
    // 应用包信息中保存的HAP模块信息数组中的HAP模块信息的数量正确

    /*
     * @tc.number    : Sub_Cangjie_BundleManager01_TestHapModuleInfo02_0100
     * @tc.name      : test00
     * @tc.desc      : test BundleManager01 test00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test00() {
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        @Expect(entryModuleInfo.codePath, "/data/storage/el1/bundle/entry.hap")
        @Expect(entryModuleInfo.nativeLibraryPath, "")
        let routerMap = entryModuleInfo.routerMap
    }
}

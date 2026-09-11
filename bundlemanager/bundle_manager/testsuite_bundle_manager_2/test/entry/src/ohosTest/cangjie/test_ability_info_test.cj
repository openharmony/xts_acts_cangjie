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
import ohos.bundle.bundle_manager.{HapModuleInfo, AbilityInfo, LaunchType, SupportedWindowMode, WindowSize}
import ohos.arkui.state_macro_manage.r
import ohos.resource_manager.AppResource
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.AbilityKit.*
import std.collection.forEach
import std.collection.collectString
import std.collection.map
internal import ohos.resource.__GenerateResource__

@Test
class TestAbilityInfo {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestAbilityInfo_0100
     * @tc.name      : test_abilityInfo_01
     * @tc.desc      : test BundleManager test_abilityInfo_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_abilityInfo_01(): Unit {
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let entryAbilityInfo = entryModuleInfo.abilitiesInfo |>
            pick {abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"}
        @Expect(entryAbilityInfo.bundleName, "com.example.testsuite_bundle_manager_2")
        @Expect(entryAbilityInfo.moduleName, "entry")
        @Expect(entryAbilityInfo.name, "EntryAbility")
        @Expect(entryAbilityInfo.label, "$string:EntryAbility_label")
        @Expect(entryAbilityInfo.description, "$string:EntryAbility_desc")
        @Expect(UInt32(entryAbilityInfo.descriptionId), @r(app.string.EntryAbility_desc).id)
        @Expect(entryAbilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(entryAbilityInfo.iconId), @r(app.media.layered_image).id)
        @Expect(entryAbilityInfo.process, "")
        @Expect(entryAbilityInfo.exported, true)
        match (entryAbilityInfo.launchType) {
            case LaunchType.Singleton => ()
            case _ => @Expect(false)
        }
        @Expect(entryAbilityInfo.enabled, true)
        let windowSize: WindowSize = entryAbilityInfo.windowSize
        @Expect(windowSize.maxWindowRatio, 0.0)
        @Expect(windowSize.minWindowRatio, 0.0)
        @Expect(windowSize.maxWindowWidth, 0)
        @Expect(windowSize.minWindowWidth, 0)
        @Expect(windowSize.maxWindowHeight, 0)
        @Expect(windowSize.minWindowHeight, 0)
    }
}

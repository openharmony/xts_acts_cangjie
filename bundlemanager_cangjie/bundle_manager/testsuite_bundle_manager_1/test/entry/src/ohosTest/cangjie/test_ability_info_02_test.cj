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
import kit.CoreFileKit.*
import kit.LocalizationKit.{ResourceManager}
import ohos.arkui.state_macro_manage.r
import ohos.bundle.bundle_manager.{ModuleMetadata, Metadata, BundleType, HapModuleInfo, AbilityInfo}
import ohos.bundle.bundle_manager.{ApplicationInfo}
import ohos.bundle.bundle_manager.Skill
import kit.PerformanceAnalysisKit.Hilog
import std.collection.*
import ohos.bundle.bundle_manager.SkillUri

@Test
class TestAbilityInfo02 {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager01_TestAbilityInfo02_0100
     * @tc.name      : test_abilityInfo_02
     * @tc.desc      : test BundleManager01 test_abilityInfo_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_abilityInfo_02(): Unit {
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let entryAbilityInfo = entryModuleInfo.abilitiesInfo |>
            pick {abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"}
        @Expect(entryAbilityInfo.excludeFromDock, false)
        let ability = hapModuleInfos[0].abilitiesInfo
        let appIndex = ability[0].appIndex
        @Expect(appIndex, 0)
    }
}

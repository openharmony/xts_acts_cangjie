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
import ohos.bundle.bundle_manager.{HapModuleInfo, AbilityInfo, DisplayOrientation, SupportedWindowMode}
import ohos.skill.{Skill, SkillUri}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestSkill {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestSkill_0100
     * @tc.name      : test_abilityInfo_orientation_supportedWindowModes
     * @tc.desc      : test AbilityInfo orientation and supportedWindowModes fields, DisplayOrientation and SupportedWindowMode enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_abilityInfo_orientation_supportedWindowModes(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_abilityInfo_orientation_supportedWindowModes begins.")
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let entryAbilityInfo = entryModuleInfo.abilitiesInfo |>
            pick {abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"}
        let orientation: DisplayOrientation = entryAbilityInfo.orientation
        let supportedWindowModes: Array<SupportedWindowMode> = entryAbilityInfo.supportedWindowModes
        Hilog.info(0u32, "cangjietest", "", "orientation accessed, supportedWindowModes.size=${supportedWindowModes.size}")
        match (orientation) {
            case DisplayOrientation.Unspecified => ()
            case DisplayOrientation.Landscape => ()
            case DisplayOrientation.Portrait => ()
            case DisplayOrientation.FollowRecent => ()
            case DisplayOrientation.LandscapeInverted => ()
            case DisplayOrientation.PortraitInverted => ()
            case DisplayOrientation.AutoRotation => ()
            case DisplayOrientation.AutoRotationLandscape => ()
            case DisplayOrientation.AutoRotationPortrait => ()
            case DisplayOrientation.AutoRotationRestricted => ()
            case DisplayOrientation.AutoRotationLandscapeRestricted => ()
            case DisplayOrientation.AutoRotationPortraitRestricted => ()
            case DisplayOrientation.Locked => ()
            case DisplayOrientation.AutoRotationUnspecified => ()
            case DisplayOrientation.FollowDesktop => ()
            case _ => @Expect(false)
        }
        if (supportedWindowModes.size > 0) {
            let mode = supportedWindowModes[0]
            match (mode) {
                case SupportedWindowMode.FullScreen => ()
                case SupportedWindowMode.Split => ()
                case SupportedWindowMode.Floating => ()
                case _ => @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_abilityInfo_orientation_supportedWindowModes ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestSkill_0200
     * @tc.name      : test_skill_fields
     * @tc.desc      : test AbilityInfo skills field, Skill class actions/entities/uris/domainVerify fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_skill_fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_skill_fields begins.")
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let entryAbilityInfo = entryModuleInfo.abilitiesInfo |>
            pick {abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"}
        let skills: Array<Skill> = entryAbilityInfo.skills
        Hilog.info(0u32, "cangjietest", "", "skills.size = ${skills.size}")
        if (skills.size > 0) {
            let skill: Skill = skills[0]
            let actions = skill.actions
            let entities = skill.entities
            let uris: Array<SkillUri> = skill.uris
            let domainVerify = skill.domainVerify
            Hilog.info(0u32, "cangjietest", "", "actions.size=${actions.size}, entities.size=${entities.size}, uris.size=${uris.size}, domainVerify=${domainVerify}")
            @Expect(actions.size == 1)
            @Expect(actions[0] == "action.system.home")
            @Expect(entities.size == 1)
            @Expect(entities[0] == "entity.system.home")
            @Expect(uris.size == 0)
            @Expect(domainVerify == false)
            if (uris.size > 0) {
                let skillUri: SkillUri = uris[0]
                let host = skillUri.host
                let port = skillUri.port
                let path = skillUri.path
                let pathStartWith = skillUri.pathStartWith
                let pathRegex = skillUri.pathRegex
                let uriType = skillUri.uriType
                let utd = skillUri.utd
                let maxFilesSupported = skillUri.maxFilesSupported
                let linkFeature = skillUri.linkFeature
                Hilog.info(0u32, "cangjietest", "", "host=${host}, port=${port}, path=${path}, uriType=${uriType}, utd=${utd}, maxFilesSupported=${maxFilesSupported}, linkFeature=${linkFeature}")
            } else {
                @Expect(uris.size == 0)
            }
        } else {
            @Expect(skills.size == 0)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_skill_fields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestSkill_0300
     * @tc.name      : test_displayOrientation_enum_values
     * @tc.desc      : test DisplayOrientation enum class and all its enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_displayOrientation_enum_values(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_displayOrientation_enum_values begins.")
        @Expect(DisplayOrientation.Unspecified is DisplayOrientation)
        @Expect(DisplayOrientation.Landscape is DisplayOrientation)
        @Expect(DisplayOrientation.Portrait is DisplayOrientation)
        @Expect(DisplayOrientation.FollowRecent is DisplayOrientation)
        @Expect(DisplayOrientation.LandscapeInverted is DisplayOrientation)
        @Expect(DisplayOrientation.PortraitInverted is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotation is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotationLandscape is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotationPortrait is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotationRestricted is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotationLandscapeRestricted is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotationPortraitRestricted is DisplayOrientation)
        @Expect(DisplayOrientation.Locked is DisplayOrientation)
        @Expect(DisplayOrientation.AutoRotationUnspecified is DisplayOrientation)
        @Expect(DisplayOrientation.FollowDesktop is DisplayOrientation)
        Hilog.info(0u32, "cangjietest", "", "testcase test_displayOrientation_enum_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestSkill_0400
     * @tc.name      : test_supportedWindowMode_enum_values
     * @tc.desc      : test SupportedWindowMode enum class and FullScreen, Split, Floating values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_supportedWindowMode_enum_values(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_supportedWindowMode_enum_values begins.")
        @Expect(SupportedWindowMode.FullScreen is SupportedWindowMode)
        @Expect(SupportedWindowMode.Split is SupportedWindowMode)
        @Expect(SupportedWindowMode.Floating is SupportedWindowMode)
        Hilog.info(0u32, "cangjietest", "", "testcase test_supportedWindowMode_enum_values ends.")
    }
}

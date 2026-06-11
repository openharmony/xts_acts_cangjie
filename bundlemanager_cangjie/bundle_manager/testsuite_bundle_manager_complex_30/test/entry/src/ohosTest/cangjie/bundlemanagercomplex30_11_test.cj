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
import std.collection.*
import ohos.base.*
import ohos.hilog.Hilog
import kit.AbilityKit.*
import ohos.bundle.bundle_manager
import ohos.arkui.state_macro_manage.r
import kit.LocalizationKit.AppResource
import ohos.bundle.bundle_manager.{HapModuleInfo, AbilityInfo, LaunchType, SupportedWindowMode}
internal import ohos.resource.__GenerateResource__

@Test
class testAbilityInfo_icon_entry_EntryAbility_2 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463000
     * @tc.name      : TestCase_31
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463100
     * @tc.name      : TestCase_32
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463200
     * @tc.name      : TestCase_33
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463300
     * @tc.name      : TestCase_34
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463400
     * @tc.name      : TestCase_35
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463500
     * @tc.name      : TestCase_36
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463600
     * @tc.name      : TestCase_37
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463700
     * @tc.name      : TestCase_38
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463800
     * @tc.name      : TestCase_39
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_463900
     * @tc.name      : TestCase_40
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464000
     * @tc.name      : TestCase_41
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464100
     * @tc.name      : TestCase_42
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464200
     * @tc.name      : TestCase_43
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464300
     * @tc.name      : TestCase_44
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464400
     * @tc.name      : TestCase_45
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464500
     * @tc.name      : TestCase_46
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464600
     * @tc.name      : TestCase_47
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464700
     * @tc.name      : TestCase_48
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464800
     * @tc.name      : TestCase_49
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_464900
     * @tc.name      : TestCase_50
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465000
     * @tc.name      : TestCase_51
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465100
     * @tc.name      : TestCase_52
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465200
     * @tc.name      : TestCase_53
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465300
     * @tc.name      : TestCase_54
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465400
     * @tc.name      : TestCase_55
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465500
     * @tc.name      : TestCase_56
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465600
     * @tc.name      : TestCase_57
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465700
     * @tc.name      : TestCase_58
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465800
     * @tc.name      : TestCase_59
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_465900
     * @tc.name      : TestCase_60
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        Hilog.info(0u32, "CangjieTest", "define local variable abilityInfo")
        let abilityInfo = moduleInfo.abilitiesInfo |> pick(
            {
                abilityInfo: AbilityInfo => abilityInfo.name == "EntryAbility"
            })
        @Expect(abilityInfo.icon, "$media:layered_image")
        @Expect(UInt32(abilityInfo.iconId), @r(app.media.layered_image).id)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
}

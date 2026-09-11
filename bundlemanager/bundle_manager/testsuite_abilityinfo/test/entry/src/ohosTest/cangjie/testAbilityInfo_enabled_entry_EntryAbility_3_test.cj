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

@Test
class testAbilityInfo_enabled_entry_EntryAbility_3 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57200
     * @tc.name      : TestCase_61
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
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
        @Expect(abilityInfo.enabled, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57300
     * @tc.name      : TestCase_62
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
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
        @Expect(abilityInfo.enabled, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57400
     * @tc.name      : TestCase_63
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
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
        @Expect(abilityInfo.enabled, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57500
     * @tc.name      : TestCase_64
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
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
        @Expect(abilityInfo.enabled, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57600
     * @tc.name      : TestCase_65
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
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
        @Expect(abilityInfo.enabled, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57700
     * @tc.name      : TestCase_66
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
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
        @Expect(abilityInfo.enabled, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57800
     * @tc.name      : TestCase_67
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_57900
     * @tc.name      : TestCase_68
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58000
     * @tc.name      : TestCase_69
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58100
     * @tc.name      : TestCase_70
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58200
     * @tc.name      : TestCase_71
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58300
     * @tc.name      : TestCase_72
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58400
     * @tc.name      : TestCase_73
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58500
     * @tc.name      : TestCase_74
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58600
     * @tc.name      : TestCase_75
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58700
     * @tc.name      : TestCase_76
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58800
     * @tc.name      : TestCase_77
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_58900
     * @tc.name      : TestCase_78
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59000
     * @tc.name      : TestCase_79
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59100
     * @tc.name      : TestCase_80
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59200
     * @tc.name      : TestCase_81
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59300
     * @tc.name      : TestCase_82
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59400
     * @tc.name      : TestCase_83
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59500
     * @tc.name      : TestCase_84
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59600
     * @tc.name      : TestCase_85
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59700
     * @tc.name      : TestCase_86
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59800
     * @tc.name      : TestCase_87
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_59900
     * @tc.name      : TestCase_88
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_60000
     * @tc.name      : TestCase_89
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_60100
     * @tc.name      : TestCase_90
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }
}

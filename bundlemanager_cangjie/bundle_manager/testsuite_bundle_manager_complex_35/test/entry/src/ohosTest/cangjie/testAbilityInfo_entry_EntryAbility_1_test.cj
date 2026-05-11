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
class testAbilityInfo_entry_EntryAbility_1 {

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971100
     * @tc.name      : TestCase_2
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleInfo")
        let moduleInfo = bundleInfo.hapModulesInfo |> pick(
            {
                hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"
            })
        @Expect(moduleInfo.abilitiesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971200
     * @tc.name      : TestCase_3
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971300
     * @tc.name      : TestCase_4
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971400
     * @tc.name      : TestCase_5
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971500
     * @tc.name      : TestCase_6
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971600
     * @tc.name      : TestCase_7
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971700
     * @tc.name      : TestCase_8
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971800
     * @tc.name      : TestCase_9
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_971900
     * @tc.name      : TestCase_10
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972000
     * @tc.name      : TestCase_11
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972100
     * @tc.name      : TestCase_12
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972200
     * @tc.name      : TestCase_13
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972300
     * @tc.name      : TestCase_14
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972400
     * @tc.name      : TestCase_15
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972500
     * @tc.name      : TestCase_16
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972600
     * @tc.name      : TestCase_17
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972700
     * @tc.name      : TestCase_18
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972800
     * @tc.name      : TestCase_19
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_972900
     * @tc.name      : TestCase_20
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973000
     * @tc.name      : TestCase_21
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973100
     * @tc.name      : TestCase_22
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973200
     * @tc.name      : TestCase_23
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973300
     * @tc.name      : TestCase_24
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973400
     * @tc.name      : TestCase_25
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973500
     * @tc.name      : TestCase_26
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973600
     * @tc.name      : TestCase_27
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973700
     * @tc.name      : TestCase_28
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973800
     * @tc.name      : TestCase_29
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_973900
     * @tc.name      : TestCase_30
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
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
        @Expect(abilityInfo.bundleName, "com.example.myapplication")
        @Expect(abilityInfo.moduleName, "entry")
        @Expect(abilityInfo.name, "EntryAbility")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
}

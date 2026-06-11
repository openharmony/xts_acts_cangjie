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
class testAbilityInfo_launchType_entry_EntryAbility_15 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_910800
     * @tc.name      : TestCase_421
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_910900
     * @tc.name      : TestCase_422
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911000
     * @tc.name      : TestCase_423
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911100
     * @tc.name      : TestCase_424
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911200
     * @tc.name      : TestCase_425
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911300
     * @tc.name      : TestCase_426
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911400
     * @tc.name      : TestCase_427
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911500
     * @tc.name      : TestCase_428
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911600
     * @tc.name      : TestCase_429
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911700
     * @tc.name      : TestCase_430
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911800
     * @tc.name      : TestCase_431
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_911900
     * @tc.name      : TestCase_432
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912000
     * @tc.name      : TestCase_433
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912100
     * @tc.name      : TestCase_434
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912200
     * @tc.name      : TestCase_435
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912300
     * @tc.name      : TestCase_436
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912400
     * @tc.name      : TestCase_437
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912500
     * @tc.name      : TestCase_438
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912600
     * @tc.name      : TestCase_439
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912700
     * @tc.name      : TestCase_440
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912800
     * @tc.name      : TestCase_441
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_912900
     * @tc.name      : TestCase_442
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913000
     * @tc.name      : TestCase_443
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913100
     * @tc.name      : TestCase_444
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913200
     * @tc.name      : TestCase_445
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913300
     * @tc.name      : TestCase_446
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913400
     * @tc.name      : TestCase_447
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913500
     * @tc.name      : TestCase_448
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithAbility, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913600
     * @tc.name      : TestCase_449
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithExtensionAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_AbilityInfo_913700
     * @tc.name      : TestCase_450
     * @tc.desc      : check ability info of ability EntryAbility in module entry with bundle flags: GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 ends.")
    }
}

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
class testModuleInfo_name_entry_17 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_201400
     * @tc.name      : TestCase_481
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_481(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_481 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_201500
     * @tc.name      : TestCase_482
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_482(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_482 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_201600
     * @tc.name      : TestCase_483
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_483(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_483 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_201700
     * @tc.name      : TestCase_484
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_484(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_484 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_201800
     * @tc.name      : TestCase_485
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_485(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_485 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_201900
     * @tc.name      : TestCase_486
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_486(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_486 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202000
     * @tc.name      : TestCase_487
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_487(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_487 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202100
     * @tc.name      : TestCase_488
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_488(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_488 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202200
     * @tc.name      : TestCase_489
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_489(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_489 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202300
     * @tc.name      : TestCase_490
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_490(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_490 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202400
     * @tc.name      : TestCase_491
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_491(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_491 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202500
     * @tc.name      : TestCase_492
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_492(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_492 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202600
     * @tc.name      : TestCase_493
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_493(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_493 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202700
     * @tc.name      : TestCase_494
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_494(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_494 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202800
     * @tc.name      : TestCase_495
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_495(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_495 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_202900
     * @tc.name      : TestCase_496
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_496(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_496 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203000
     * @tc.name      : TestCase_497
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_497(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_497 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203100
     * @tc.name      : TestCase_498
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_498(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_498 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203200
     * @tc.name      : TestCase_499
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_499(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_499 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203300
     * @tc.name      : TestCase_500
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_500(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_500 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_500 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203400
     * @tc.name      : TestCase_501
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203500
     * @tc.name      : TestCase_502
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203600
     * @tc.name      : TestCase_503
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203700
     * @tc.name      : TestCase_504
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203800
     * @tc.name      : TestCase_505
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_505(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_203900
     * @tc.name      : TestCase_506
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_506(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_204000
     * @tc.name      : TestCase_507
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_507(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_204100
     * @tc.name      : TestCase_508
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_508(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_204200
     * @tc.name      : TestCase_509
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_509(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ModuleInfo_204300
     * @tc.name      : TestCase_510
     * @tc.desc      : check module info of module entry with bundle flags: GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_510(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        @Expect(bundleInfo.hapModulesInfo.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 ends.")
    }
}

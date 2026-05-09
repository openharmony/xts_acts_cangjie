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
class testApplicationInfo_accessTokenId_5 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_778600
     * @tc.name      : TestCase_121
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_778700
     * @tc.name      : TestCase_122
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_778800
     * @tc.name      : TestCase_123
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_778900
     * @tc.name      : TestCase_124
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779000
     * @tc.name      : TestCase_125
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779100
     * @tc.name      : TestCase_126
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779200
     * @tc.name      : TestCase_127
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779300
     * @tc.name      : TestCase_128
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779400
     * @tc.name      : TestCase_129
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithHapModule, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779500
     * @tc.name      : TestCase_130
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779600
     * @tc.name      : TestCase_131
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779700
     * @tc.name      : TestCase_132
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779800
     * @tc.name      : TestCase_133
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_779900
     * @tc.name      : TestCase_134
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780000
     * @tc.name      : TestCase_135
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780100
     * @tc.name      : TestCase_136
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780200
     * @tc.name      : TestCase_137
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780300
     * @tc.name      : TestCase_138
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780400
     * @tc.name      : TestCase_139
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780500
     * @tc.name      : TestCase_140
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780600
     * @tc.name      : TestCase_141
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780700
     * @tc.name      : TestCase_142
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780800
     * @tc.name      : TestCase_143
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_780900
     * @tc.name      : TestCase_144
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_781000
     * @tc.name      : TestCase_145
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_781100
     * @tc.name      : TestCase_146
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_781200
     * @tc.name      : TestCase_147
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_781300
     * @tc.name      : TestCase_148
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_781400
     * @tc.name      : TestCase_149
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_781500
     * @tc.name      : TestCase_150
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.accessTokenId != 0u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
}

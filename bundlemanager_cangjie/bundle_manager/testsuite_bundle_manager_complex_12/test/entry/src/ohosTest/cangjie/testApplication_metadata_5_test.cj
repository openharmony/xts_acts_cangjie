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
class testApplication_metadata_5 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574200
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
        @Expect(applicationInfo.metadataArray.size, 1i64)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleMetadata")
        let moduleMetadata = applicationInfo.metadataArray |> pick(
            {
                moduleMetaData: ModuleMetadata => moduleMetaData.moduleName == "entry"
            })
        @Expect(moduleMetadata.moduleName, "entry")
        @Expect(moduleMetadata.metadata.size, 1i64)
        Hilog.info(0u32, "CangjieTest", "define local variable metaData")
        let metaData = moduleMetadata.metadata |> pick({
            metaData: Metadata => metaData.name == "profile0"
        })
        @Expect(metaData.name, "profile0")
        @Expect(metaData.value, "value0")
        @Expect(metaData.resource, "$profile:main_pages")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574300
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
        @Expect(applicationInfo.metadataArray.size, 1i64)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleMetadata")
        let moduleMetadata = applicationInfo.metadataArray |> pick(
            {
                moduleMetaData: ModuleMetadata => moduleMetaData.moduleName == "entry"
            })
        @Expect(moduleMetadata.moduleName, "entry")
        @Expect(moduleMetadata.metadata.size, 1i64)
        Hilog.info(0u32, "CangjieTest", "define local variable metaData")
        let metaData = moduleMetadata.metadata |> pick({
            metaData: Metadata => metaData.name == "profile0"
        })
        @Expect(metaData.name, "profile0")
        @Expect(metaData.value, "value0")
        @Expect(metaData.resource, "$profile:main_pages")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574400
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574500
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574600
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574700
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574800
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_574900
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_575000
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_575100
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_575200
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_575300
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
        @Expect(applicationInfo.metadataArray.size, 0i64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_575400
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
        @Expect(applicationInfo.metadataArray.size, 1i64)
        Hilog.info(0u32, "CangjieTest", "define local variable moduleMetadata")
        let moduleMetadata = applicationInfo.metadataArray |> pick(
            {
                moduleMetaData: ModuleMetadata => moduleMetaData.moduleName == "entry"
            })
        @Expect(moduleMetadata.moduleName, "entry")
        @Expect(moduleMetadata.metadata.size, 1i64)
        Hilog.info(0u32, "CangjieTest", "define local variable metaData")
        let metaData = moduleMetadata.metadata |> pick({
            metaData: Metadata => metaData.name == "profile0"
        })
        @Expect(metaData.name, "profile0")
        @Expect(metaData.value, "value0")
        @Expect(metaData.resource, "$profile:main_pages")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
}

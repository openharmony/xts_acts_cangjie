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
class testApplicationInfo_name_9 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75200
     * @tc.name      : TestCase_241
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75300
     * @tc.name      : TestCase_242
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75400
     * @tc.name      : TestCase_243
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75500
     * @tc.name      : TestCase_244
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75600
     * @tc.name      : TestCase_245
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75700
     * @tc.name      : TestCase_246
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75800
     * @tc.name      : TestCase_247
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_75900
     * @tc.name      : TestCase_248
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76000
     * @tc.name      : TestCase_249
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76100
     * @tc.name      : TestCase_250
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76200
     * @tc.name      : TestCase_251
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76300
     * @tc.name      : TestCase_252
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76400
     * @tc.name      : TestCase_253
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76500
     * @tc.name      : TestCase_254
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76600
     * @tc.name      : TestCase_255
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76700
     * @tc.name      : TestCase_256
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "com.example.myapplication")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76800
     * @tc.name      : TestCase_257
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_76900
     * @tc.name      : TestCase_258
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77000
     * @tc.name      : TestCase_259
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77100
     * @tc.name      : TestCase_260
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77200
     * @tc.name      : TestCase_261
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77300
     * @tc.name      : TestCase_262
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77400
     * @tc.name      : TestCase_263
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77500
     * @tc.name      : TestCase_264
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77600
     * @tc.name      : TestCase_265
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77700
     * @tc.name      : TestCase_266
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77800
     * @tc.name      : TestCase_267
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_77900
     * @tc.name      : TestCase_268
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_78000
     * @tc.name      : TestCase_269
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_ApplicationInfo_78100
     * @tc.name      : TestCase_270
     * @tc.desc      : check application info with bundle flags: GetBundleInfoWithHapModule, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable resourceManager")
        let resourceManager = getResourceManager()
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        Hilog.info(0u32, "CangjieTest", "define local variable applicationInfo")
        let applicationInfo = bundleInfo.appInfo
        @Expect(applicationInfo.name, "")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 ends.")
    }
}

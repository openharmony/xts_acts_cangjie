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
class testBundleInfo_minCompatibleVersionCode_8 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_685400
     * @tc.name      : TestCase_211
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_685500
     * @tc.name      : TestCase_212
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_685600
     * @tc.name      : TestCase_213
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_685700
     * @tc.name      : TestCase_214
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_685800
     * @tc.name      : TestCase_215
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_685900
     * @tc.name      : TestCase_216
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686000
     * @tc.name      : TestCase_217
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686100
     * @tc.name      : TestCase_218
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686200
     * @tc.name      : TestCase_219
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686300
     * @tc.name      : TestCase_220
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686400
     * @tc.name      : TestCase_221
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686500
     * @tc.name      : TestCase_222
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686600
     * @tc.name      : TestCase_223
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686700
     * @tc.name      : TestCase_224
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686800
     * @tc.name      : TestCase_225
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_686900
     * @tc.name      : TestCase_226
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687000
     * @tc.name      : TestCase_227
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687100
     * @tc.name      : TestCase_228
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687200
     * @tc.name      : TestCase_229
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687300
     * @tc.name      : TestCase_230
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687400
     * @tc.name      : TestCase_231
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687500
     * @tc.name      : TestCase_232
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687600
     * @tc.name      : TestCase_233
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687700
     * @tc.name      : TestCase_234
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687800
     * @tc.name      : TestCase_235
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_687900
     * @tc.name      : TestCase_236
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_688000
     * @tc.name      : TestCase_237
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_688100
     * @tc.name      : TestCase_238
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_688200
     * @tc.name      : TestCase_239
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_688300
     * @tc.name      : TestCase_240
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.minCompatibleVersionCode, 1000000u32)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
}

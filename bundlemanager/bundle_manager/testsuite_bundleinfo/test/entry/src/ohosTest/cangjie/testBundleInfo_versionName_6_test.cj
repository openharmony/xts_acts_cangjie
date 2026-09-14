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
class testBundleInfo_versionName_6 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475000
     * @tc.name      : TestCase_151
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475100
     * @tc.name      : TestCase_152
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475200
     * @tc.name      : TestCase_153
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475300
     * @tc.name      : TestCase_154
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475400
     * @tc.name      : TestCase_155
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475500
     * @tc.name      : TestCase_156
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475600
     * @tc.name      : TestCase_157
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475700
     * @tc.name      : TestCase_158
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475800
     * @tc.name      : TestCase_159
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_475900
     * @tc.name      : TestCase_160
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476000
     * @tc.name      : TestCase_161
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476100
     * @tc.name      : TestCase_162
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithExtensionAbility, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476200
     * @tc.name      : TestCase_163
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476300
     * @tc.name      : TestCase_164
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476400
     * @tc.name      : TestCase_165
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476500
     * @tc.name      : TestCase_166
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476600
     * @tc.name      : TestCase_167
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476700
     * @tc.name      : TestCase_168
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476800
     * @tc.name      : TestCase_169
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_476900
     * @tc.name      : TestCase_170
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477000
     * @tc.name      : TestCase_171
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477100
     * @tc.name      : TestCase_172
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477200
     * @tc.name      : TestCase_173
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477300
     * @tc.name      : TestCase_174
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477400
     * @tc.name      : TestCase_175
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477500
     * @tc.name      : TestCase_176
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477600
     * @tc.name      : TestCase_177
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477700
     * @tc.name      : TestCase_178
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477800
     * @tc.name      : TestCase_179
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_477900
     * @tc.name      : TestCase_180
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.versionName, "1.0.0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }
}

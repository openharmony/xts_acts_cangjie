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
class testBundleInfo_name_7 {
    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69200
     * @tc.name      : TestCase_181
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69300
     * @tc.name      : TestCase_182
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69400
     * @tc.name      : TestCase_183
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69500
     * @tc.name      : TestCase_184
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69600
     * @tc.name      : TestCase_185
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69700
     * @tc.name      : TestCase_186
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_METADATA | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69800
     * @tc.name      : TestCase_187
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_69900
     * @tc.name      : TestCase_188
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70000
     * @tc.name      : TestCase_189
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70100
     * @tc.name      : TestCase_190
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70200
     * @tc.name      : TestCase_191
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70300
     * @tc.name      : TestCase_192
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70400
     * @tc.name      : TestCase_193
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithAbility, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70500
     * @tc.name      : TestCase_194
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70600
     * @tc.name      : TestCase_195
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70700
     * @tc.name      : TestCase_196
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70800
     * @tc.name      : TestCase_197
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_70900
     * @tc.name      : TestCase_198
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71000
     * @tc.name      : TestCase_199
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71100
     * @tc.name      : TestCase_200
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71200
     * @tc.name      : TestCase_201
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71300
     * @tc.name      : TestCase_202
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71400
     * @tc.name      : TestCase_203
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMetadata, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71500
     * @tc.name      : TestCase_204
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71600
     * @tc.name      : TestCase_205
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71700
     * @tc.name      : TestCase_206
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71800
     * @tc.name      : TestCase_207
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithDisable, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_71900
     * @tc.name      : TestCase_208
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_72000
     * @tc.name      : TestCase_209
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithSignatureInfo, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_SIGNATURE_INFO | BundleFlag
                .GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundleManager_BundleInfo_72100
     * @tc.name      : TestCase_210
     * @tc.desc      : check BundleInfo with bundle flags: GetBundleInfoWithApplication, GetBundleInfoWithExtensionAbility, GetBundleInfoWithRequestedPermission, GetBundleInfoWithMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
                .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_MENU)
        @Expect(bundleInfo.name, "com.example.testsuite_bundleinfo")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
}

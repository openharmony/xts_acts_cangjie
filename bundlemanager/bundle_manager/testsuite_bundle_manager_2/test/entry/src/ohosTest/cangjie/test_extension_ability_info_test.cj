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

import std.unittest.testmacro.{Test, TestCase, Expect}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.bundle.bundle_manager.{HapModuleInfo, ExtensionAbilityInfo, ExtensionAbilityType, AbilityInfo}
import kit.PerformanceAnalysisKit.Hilog


@Test
class TestExtensionAbilityInfo {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestExtensionAbilityInfo_0100
     * @tc.name      : test_extensionAbilityInfo_fields
     * @tc.desc      : test ExtensionAbilityInfo class and extensionAbilityType, readPermission, writePermission, extensionAbilityTypeName, skills fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_extensionAbilityInfo_fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_extensionAbilityInfo_fields begins.")
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let extensionAbilitiesInfo: Array<ExtensionAbilityInfo> = entryModuleInfo.extensionAbilitiesInfo
        Hilog.info(0u32, "cangjietest", "", "extensionAbilitiesInfo.size = ${extensionAbilitiesInfo.size}")
        if (extensionAbilitiesInfo.size > 0) {
            let extAbilityInfo: ExtensionAbilityInfo = extensionAbilitiesInfo[0]
            let extType = extAbilityInfo.extensionAbilityType
            let readPermission = extAbilityInfo.readPermission
            let writePermission = extAbilityInfo.writePermission
            let extTypeName = extAbilityInfo.extensionAbilityTypeName
            let skills = extAbilityInfo.skills
            Hilog.info(0u32, "cangjietest", "", "extType accessed, readPermission=${readPermission}, writePermission=${writePermission}, extTypeName=${extTypeName}, skills.size=${skills.size}")
            match (extType) {
                case ExtensionAbilityType.WorkScheduler => ()
                case ExtensionAbilityType.InputMethod => ()
                case ExtensionAbilityType.Service => ()
                case ExtensionAbilityType.Accessibility => ()
                case ExtensionAbilityType.DataShare => ()
                case ExtensionAbilityType.FileShare => ()
                case ExtensionAbilityType.StaticSubscriber => ()
                case ExtensionAbilityType.Wallpaper => ()
                case ExtensionAbilityType.Backup => ()
                case ExtensionAbilityType.Window => ()
                case ExtensionAbilityType.EnterpriseAdmin => ()
                case ExtensionAbilityType.Thumbnail => ()
                case ExtensionAbilityType.Preview => ()
                case ExtensionAbilityType.Print => ()
                case ExtensionAbilityType.Share => ()
                case ExtensionAbilityType.Push => ()
                case ExtensionAbilityType.Driver => ()
                case ExtensionAbilityType.Action => ()
                case ExtensionAbilityType.AdsService => ()
                case ExtensionAbilityType.EmbeddedUI => ()
                case ExtensionAbilityType.InsightIntentUI => ()
                case ExtensionAbilityType.Unspecified => ()
                case _ => @Expect(false)
            }
        } else {
            @Expect(extensionAbilitiesInfo.size == 0)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_extensionAbilityInfo_fields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestExtensionAbilityInfo_0200
     * @tc.name      : test_extensionAbilityType_enum_values
     * @tc.desc      : test ExtensionAbilityType enum class and all its enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_extensionAbilityType_enum_values(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_extensionAbilityType_enum_values begins.")
        @Expect(ExtensionAbilityType.WorkScheduler is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.InputMethod is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Service is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Accessibility is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.DataShare is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.FileShare is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.StaticSubscriber is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Wallpaper is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Backup is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Window is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.EnterpriseAdmin is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Thumbnail is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Preview is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Print is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Share is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Push is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Driver is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Action is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.AdsService is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.EmbeddedUI is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.InsightIntentUI is ExtensionAbilityType)
        @Expect(ExtensionAbilityType.Unspecified is ExtensionAbilityType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_extensionAbilityType_enum_values ends.")
    }
}

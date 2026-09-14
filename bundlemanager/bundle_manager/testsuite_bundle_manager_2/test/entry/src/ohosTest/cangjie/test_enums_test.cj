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
import ohos.bundle.bundle_manager.{PermissionGrantState, LaunchType, ApplicationType, DefaultAppManager, BundleManager, BundleInfo, BundleFlag}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestEnums {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestEnums_0100
     * @tc.name      : test_permissionGrantState_enum_values
     * @tc.desc      : test PermissionGrantState enum class and PermissionDenied, PermissionGranted values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_permissionGrantState_enum_values(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_permissionGrantState_enum_values begins.")
        @Expect(PermissionGrantState.PermissionDenied is PermissionGrantState)
        @Expect(PermissionGrantState.PermissionGranted is PermissionGrantState)
        let bundleInfo = getFullBundleInfo()
        let permissionGrantStates = bundleInfo.permissionGrantStates
        Hilog.info(0u32, "cangjietest", "", "permissionGrantStates.size=${permissionGrantStates.size}")
        if (permissionGrantStates.size > 0) {
            let state = permissionGrantStates[0]
            match (state) {
                case PermissionGrantState.PermissionDenied => ()
                case PermissionGrantState.PermissionGranted => ()
                case _ => @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_permissionGrantState_enum_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestEnums_0200
     * @tc.name      : test_launchType_enum_values
     * @tc.desc      : test LaunchType enum class and Singleton, Multiton, Specified values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_launchType_enum_values(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_launchType_enum_values begins.")
        @Expect(LaunchType.Singleton is LaunchType)
        @Expect(LaunchType.Multiton is LaunchType)
        @Expect(LaunchType.Specified is LaunchType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_launchType_enum_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestEnums_0300
     * @tc.name      : test_applicationType_enum_values
     * @tc.desc      : test ApplicationType enum class and Browser, Image, Audio, Video, Pdf, Word, Excel, Ppt, Email values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationType_enum_values(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationType_enum_values begins.")
        @Expect(ApplicationType.Browser is ApplicationType)
        @Expect(ApplicationType.Image is ApplicationType)
        @Expect(ApplicationType.Audio is ApplicationType)
        @Expect(ApplicationType.Video is ApplicationType)
        @Expect(ApplicationType.Pdf is ApplicationType)
        @Expect(ApplicationType.Word is ApplicationType)
        @Expect(ApplicationType.Excel is ApplicationType)
        @Expect(ApplicationType.Ppt is ApplicationType)
        @Expect(ApplicationType.Email is ApplicationType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationType_enum_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestEnums_0400
     * @tc.name      : test_defaultAppManager_class
     * @tc.desc      : test DefaultAppManager class and BundleManager class reference
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_defaultAppManager_class(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_defaultAppManager_class begins.")
        try {
            let result = DefaultAppManager.isDefaultApplication(ApplicationType.Browser)
            Hilog.info(0u32, "cangjietest", "", "isDefaultApplication(Browser)=${result}")
            @Expect(result == false)
        } catch (e: Exception) {
            Hilog.info(0u32, "cangjietest", "", "isDefaultApplication threw exception: ${e}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_defaultAppManager_class ends.")
    }
}

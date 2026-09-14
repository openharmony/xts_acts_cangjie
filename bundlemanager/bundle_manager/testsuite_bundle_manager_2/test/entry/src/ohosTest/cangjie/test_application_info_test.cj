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
import ohos.bundle.bundle_manager.{ApplicationInfo, BundleInfo, BundleType, MultiAppMode, MultiAppModeType}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestApplicationInfo {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0100
     * @tc.name      : test_applicationInfo_removable
     * @tc.desc      : test ApplicationInfo removable field and class reference
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationInfo_removable(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_removable begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo: ApplicationInfo = bundleInfo.appInfo
        let removable = appInfo.removable
        Hilog.info(0u32, "cangjietest", "", "removable = ${removable}")
        @Expect(removable == true)
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_removable ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0200
     * @tc.name      : test_applicationInfo_uid
     * @tc.desc      : test ApplicationInfo uid field
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationInfo_uid(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_uid begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let uid = appInfo.uid
        Hilog.info(0u32, "cangjietest", "", "uid = ${uid}")
        @Expect(uid >= 0)
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_uid ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0300
     * @tc.name      : test_applicationInfo_resources
     * @tc.desc      : test ApplicationInfo iconResource and descriptionResource fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationInfo_resources(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_resources begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let iconResource = appInfo.iconResource
        let descriptionResource = appInfo.descriptionResource
        Hilog.info(0u32, "cangjietest", "", "iconResource bundleName=${iconResource.bundleName}, moduleName=${iconResource.moduleName}")
        @Expect(iconResource.bundleName == "com.example.testsuite_bundle_manager_2")
        @Expect(iconResource.moduleName == "entry")
        @Expect(descriptionResource.bundleName == "com.example.testsuite_bundle_manager_2")
        @Expect(descriptionResource.moduleName == "entry")
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_resources ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0400
     * @tc.name      : test_applicationInfo_strings
     * @tc.desc      : test ApplicationInfo appProvisionType, installSource, releaseType fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationInfo_strings(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_strings begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let appProvisionType = appInfo.appProvisionType
        let installSource = appInfo.installSource
        let releaseType = appInfo.releaseType
        Hilog.info(0u32, "cangjietest", "", "appProvisionType=${appProvisionType}, installSource=${installSource}, releaseType=${releaseType}")
        @Expect(appProvisionType.size > 0)
        @Expect(installSource == "unknown")
        @Expect(releaseType == "Beta")
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_strings ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0500
     * @tc.name      : test_applicationInfo_bools
     * @tc.desc      : test ApplicationInfo systemApp, debug, dataUnclearable, cloudFileSyncEnabled fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationInfo_bools(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_bools begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let systemApp = appInfo.systemApp
        let debug = appInfo.debug
        let dataUnclearable = appInfo.dataUnclearable
        let cloudFileSyncEnabled = appInfo.cloudFileSyncEnabled
        Hilog.info(0u32, "cangjietest", "", "systemApp=${systemApp}, debug=${debug}, dataUnclearable=${dataUnclearable}, cloudFileSyncEnabled=${cloudFileSyncEnabled}")
        @Expect(systemApp == false)
        @Expect(debug == true)
        @Expect(dataUnclearable == false)
        @Expect(cloudFileSyncEnabled == false)
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_bools ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0600
     * @tc.name      : test_applicationInfo_bundleType
     * @tc.desc      : test ApplicationInfo bundleType field and BundleType enum App value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_applicationInfo_bundleType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_bundleType begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let bundleType = appInfo.bundleType
        Hilog.info(0u32, "cangjietest", "", "bundleType accessed")
        match (bundleType) {
            case BundleType.App => ()
            case _ => @Expect(false)
        }
        @Expect(BundleType.App is BundleType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_applicationInfo_bundleType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestApplicationInfo_0700
     * @tc.name      : test_multiAppMode
     * @tc.desc      : test ApplicationInfo multiAppMode field, MultiAppMode class and fields, MultiAppModeType enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_multiAppMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_multiAppMode begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let multiAppMode: MultiAppMode = appInfo.multiAppMode
        let multiAppModeType = multiAppMode.multiAppModeType
        let maxCount = multiAppMode.maxCount
        Hilog.info(0u32, "cangjietest", "", "maxCount = ${maxCount}")
        @Expect(maxCount == 0)
        match (multiAppModeType) {
            case MultiAppModeType.Unspecified => ()
            case MultiAppModeType.MultiInstance => ()
            case MultiAppModeType.AppClone => ()
            case _ => @Expect(false)
        }
        @Expect(MultiAppModeType.Unspecified is MultiAppModeType)
        @Expect(MultiAppModeType.MultiInstance is MultiAppModeType)
        @Expect(MultiAppModeType.AppClone is MultiAppModeType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_multiAppMode ends.")
    }
}

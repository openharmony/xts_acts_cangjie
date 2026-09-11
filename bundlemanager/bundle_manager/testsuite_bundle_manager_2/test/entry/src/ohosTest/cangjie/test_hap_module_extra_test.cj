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
import ohos.bundle.bundle_manager.{HapModuleInfo, PreloadItem, Dependency, ModuleMetadata, ModuleType, Metadata}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestHapModuleExtra {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestHapModuleExtra_0100
     * @tc.name      : test_hapModule_preloads_dependencies
     * @tc.desc      : test HapModuleInfo preloads and dependencies fields, PreloadItem and Dependency classes
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hapModule_preloads_dependencies(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_hapModule_preloads_dependencies begins.")
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let preloads: Array<PreloadItem> = entryModuleInfo.preloads
        let dependencies: Array<Dependency> = entryModuleInfo.dependencies
        Hilog.info(0u32, "cangjietest", "", "preloads.size=${preloads.size}, dependencies.size=${dependencies.size}")
        @Expect(preloads.size == 0)
        @Expect(dependencies.size == 0)
        if (preloads.size > 0) {
            let preloadItem: PreloadItem = preloads[0]
            Hilog.info(0u32, "cangjietest", "", "preloadItem.moduleName=${preloadItem.moduleName}")
        }
        if (dependencies.size > 0) {
            let dependency: Dependency = dependencies[0]
            Hilog.info(0u32, "cangjietest", "", "dependency.bundleName=${dependency.bundleName}, dependency.moduleName=${dependency.moduleName}, dependency.versionCode=${dependency.versionCode}")
        }
        @Expect(entryModuleInfo.name == "entry")
        Hilog.info(0u32, "cangjietest", "", "testcase test_hapModule_preloads_dependencies ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestHapModuleExtra_0200
     * @tc.name      : test_moduleMetadata_and_moduleType
     * @tc.desc      : test ModuleMetadata class and ModuleType enum Entry, Feature, Shared values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_moduleMetadata_and_moduleType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_moduleMetadata_and_moduleType begins.")
        let bundleInfo = getFullBundleInfo()
        let appInfo = bundleInfo.appInfo
        let metadataArray: Array<ModuleMetadata> = appInfo.metadataArray
        Hilog.info(0u32, "cangjietest", "", "metadataArray.size=${metadataArray.size}")
        if (metadataArray.size > 0) {
            let moduleMetadata: ModuleMetadata = metadataArray[0]
            let moduleName = moduleMetadata.moduleName
            let metadata = moduleMetadata.metadata
            Hilog.info(0u32, "cangjietest", "", "moduleMetadata.moduleName=${moduleName}, metadata.size=${metadata.size}")
        }
        @Expect(ModuleType.Entry is ModuleType)
        @Expect(ModuleType.Feature is ModuleType)
        @Expect(ModuleType.Shared is ModuleType)
        Hilog.info(0u32, "cangjietest", "", "testcase test_moduleMetadata_and_moduleType ends.")
    }
}

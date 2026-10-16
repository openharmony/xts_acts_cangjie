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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.hilog.Hilog
import ohos.metadata.Metadata
import ohos.bundle.bundle_manager.{BundleManager, BundleFlag, ApplicationInfo, ModuleMetadata}

@Test
class TestMetadata {
    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestMetadata_0100
     * @tc.name      : test_metadata_type
     * @tc.desc      : Get Metadata instance via ApplicationInfo.metadataArray and assert name/value/resource fields.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_metadata_type(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_metadata_type begins.")
        let bundleFlags = BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA
        let bundleInfo = BundleManager.getBundleInfoForSelf(bundleFlags)
        let appInfo: ApplicationInfo = bundleInfo.appInfo
        let metadataArray: Array<ModuleMetadata> = appInfo.metadataArray
        Hilog.info(0u32, "cangjietest", "", "metadataArray.size=${metadataArray.size}")
        @Expect(metadataArray.size > 0)
        if (metadataArray.size > 0) {
            let moduleMetadata: ModuleMetadata = metadataArray[0]
            let metadata: Array<Metadata> = moduleMetadata.metadata
            Hilog.info(0u32, "cangjietest", "", "metadata.size=${metadata.size}")
            @Expect(metadata.size > 0)
            if (metadata.size > 0) {
                let md: Metadata = metadata[0]
                Hilog.info(0u32, "cangjietest", "", "md.name=${md.name}, md.value=${md.value}, md.resource=${md.resource}")
                @Expect(md.name == "asd")
                @Expect(md.value == "asd")
                @Expect(md.resource == "$profile:main_pages")
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase test_metadata_type ends.")
    }
}

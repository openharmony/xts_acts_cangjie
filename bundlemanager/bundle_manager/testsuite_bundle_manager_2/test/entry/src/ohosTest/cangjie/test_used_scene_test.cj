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
import ohos.bundle.bundle_manager.{BundleInfo, ReqPermissionDetail, UsedScene}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestUsedScene {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestUsedScene_0100
     * @tc.name      : test_usedScene_fields
     * @tc.desc      : test UsedScene class and abilities, when fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_usedScene_fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_usedScene_fields begins.")
        let bundleInfo: BundleInfo = getFullBundleInfo()
        let reqPermissionDetails: Array<ReqPermissionDetail> = bundleInfo.reqPermissionDetails
        Hilog.info(0u32, "cangjietest", "", "reqPermissionDetails.size = ${reqPermissionDetails.size}")
        if (reqPermissionDetails.size > 0) {
            let reqPermission: ReqPermissionDetail = reqPermissionDetails[0]
            let usedScene: UsedScene = reqPermission.usedScene
            let abilities: Array<String> = usedScene.abilities
            let when: String = usedScene.when
            Hilog.info(0u32, "cangjietest", "", "abilities.size=${abilities.size}, when=${when}")
        } else {
            @Expect(reqPermissionDetails.size == 0)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_usedScene_fields ends.")
    }
}

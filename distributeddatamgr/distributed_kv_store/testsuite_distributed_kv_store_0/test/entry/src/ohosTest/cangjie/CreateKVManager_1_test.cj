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
import ohos.data.distributed_kv_store.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import ohos_app_cangjie_entry.Global

@Test
class CreateKVManager_1 {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_createKVManager_Parameters
     * @tc.name      : TestCase_CreateKVManager_Various_BundleNames
     * @tc.desc      : create kv manager with various bundle names to test parameter validation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_CreateKVManager_Various_BundleNames(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_CreateKVManager_Various_BundleNames begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        
        let bundleNameTestCases = [
            "",
            "\0",
            "#$%^&",
            "123456",
            "abcedABC",
            "afbc.adf134.j89fa",
            "\\w\\/\\n",
            "i.am.the.creature.of.the.night",
            "a" * 129,
            "a" * 100000,
            "com.example.testsuite_distributed_kv_store_0"
        ]
        
        var caseNum = 1
        for (bundleName in bundleNameTestCases) {
            Hilog.info(0, "cangjietest", "create kv manager. Case ${caseNum}: bundleName='${bundleName}'")
            let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(Global.getAbilityContext(), bundleName))
            @Expect(true)
            caseNum++
        }
        
        Hilog.info(0, "cangjietest", "testcase TestCase_CreateKVManager_Various_BundleNames ends.")
    }
}
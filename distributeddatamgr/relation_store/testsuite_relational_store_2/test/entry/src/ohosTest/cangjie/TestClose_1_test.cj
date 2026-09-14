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
import ohos.data.relational_store.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos_app_cangjie_entry.Global

@Test
class TestClose_1 {
    /*
     * @tc.number    : TestCase_Close_ConfigCombinations
     * @tc.name      : TestCase_Close_Various_Configs
     * @tc.desc      : Close the result set with various store config combinations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Close_Various_Configs(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase begins")
        
        let securityLevels: Array<RelationalStoreSecurityLevel> = [
            RelationalStoreSecurityLevel.S1,
            RelationalStoreSecurityLevel.S2,
            RelationalStoreSecurityLevel.S3,
            RelationalStoreSecurityLevel.S4
        ]
        
        let vectorOptions: Array<Bool> = [true, false]
        let persistOptions: Array<Bool> = [true, false]
        let enableSemanticIndexOptions: Array<Bool> = [true, false]
        
        var caseNum = 1
        for (securityLevel in securityLevels) {
            for (vector in vectorOptions) {
                for (persist in persistOptions) {
                    for (enableSemanticIndex in enableSemanticIndexOptions) {
                        try {                            
                            let rdbStore = getRdbStore(Global.getAbilityContext(),
                                StoreConfig(securityLevel, name: "valid name", encrypt: true, 
                                    dataGroupId: "valid createTime", customDir: "valid modifyTime", 
                                    rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), 
                                    vector: vector, tokenizer: Tokenizer.NoneTokenizer, 
                                    persist: persist, enableSemanticIndex: enableSemanticIndex))
                            
                            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER'")
                            resultSet.close()
                            @Expect(false)
                        } catch (e: BusinessException) {
                            @Expect(e.code, 14801002i32)
                        }
                        caseNum++
                    }
                }
            }
        }
        
        Hilog.info(0u32, "cangjietest", "testcase ends")
    }
}
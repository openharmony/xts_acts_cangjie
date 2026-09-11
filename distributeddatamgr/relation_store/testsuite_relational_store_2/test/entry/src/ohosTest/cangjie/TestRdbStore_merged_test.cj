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
import std.core.*
import std.collection.HashMap
import ohos.app.ability.ui_ability.UIAbilityContext
import ohos_app_cangjie_entry.Global
import ohos.business_exception.BusinessException
enum TestScenario {
    | FullTransactionFlow
    | OnlyCreateStore
    | MultipleStores
}

class StoreTestConfig {
    let securityLevel: RelationalStoreSecurityLevel
    let vector: Bool
    let persist: Bool
    let enableSemanticIndex: Bool
    let isReadOnly: Bool
    let allowRebuild: Bool
    let autoCleanDirtyData: Bool
    let pluginLibs: Array<String>
    let idValue: Int64
    let scenario: TestScenario
    let testCaseNumber: String
    
    init(
        securityLevel: RelationalStoreSecurityLevel,
        vector: Bool,
        persist: Bool,
        enableSemanticIndex: Bool,
        isReadOnly: Bool,
        allowRebuild: Bool,
        autoCleanDirtyData: Bool,
        pluginLibs: Array<String>,
        idValue: Int64,
        scenario: TestScenario,
        testCaseNumber: String
    ) {
        this.securityLevel = securityLevel
        this.vector = vector
        this.persist = persist
        this.enableSemanticIndex = enableSemanticIndex
        this.isReadOnly = isReadOnly
        this.allowRebuild = allowRebuild
        this.autoCleanDirtyData = autoCleanDirtyData
        this.pluginLibs = pluginLibs
        this.idValue = idValue
        this.scenario = scenario
        this.testCaseNumber = testCaseNumber
    }
}

func generateTestConfigs_0_1(): ArrayList<StoreTestConfig> {
    let configs = ArrayList<StoreTestConfig>()
    let securityLevels = [RelationalStoreSecurityLevel.S1, RelationalStoreSecurityLevel.S4]
    let boolValues = [true, false]
    let pluginLibsOptions: Array<Array<String>> = [[], ["", "pluginLibs"]]
    let idValues = [1i64, -1i64]
    
    var testCaseNum = 400
    
    for (securityLevel in securityLevels) {
        for (vector in boolValues) {
            for (persist in boolValues) {
                for (enableSemanticIndex in boolValues) {
                    for (isReadOnly in boolValues) {
                        for (allowRebuild in boolValues) {
                            for (autoCleanDirtyData in boolValues) {
                                for (pluginLibs in pluginLibsOptions) {
                                    for (idVal in idValues) {
                                        configs.add(StoreTestConfig(
                                            securityLevel,
                                            vector,
                                            persist,
                                            enableSemanticIndex,
                                            isReadOnly,
                                            allowRebuild,
                                            autoCleanDirtyData,
                                            pluginLibs,
                                            idVal,
                                            TestScenario.FullTransactionFlow,
                                            "${testCaseNum}"
                                        ))
                                        testCaseNum += 4
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    configs
}

func generateTestConfigs_0_2(): ArrayList<StoreTestConfig> {
    let configs = ArrayList<StoreTestConfig>()
    let securityLevels = [
        RelationalStoreSecurityLevel.S1, 
        RelationalStoreSecurityLevel.S2, 
        RelationalStoreSecurityLevel.S3, 
        RelationalStoreSecurityLevel.S4
    ]
    let boolValues = [true, false]
    let pluginLibsOptions: Array<Array<String>> = [[], ["", "pluginLibs"]]
    
    var testCaseNum = 1500
    
    for (securityLevel in securityLevels) {
        for (vector in boolValues) {
            for (persist in boolValues) {
                for (enableSemanticIndex in boolValues) {
                    for (isReadOnly in boolValues) {
                        for (allowRebuild in boolValues) {
                            for (autoCleanDirtyData in boolValues) {
                                for (pluginLibs in pluginLibsOptions) {
                                    configs.add(StoreTestConfig(
                                        securityLevel,
                                        vector,
                                        persist,
                                        enableSemanticIndex,
                                        isReadOnly,
                                        allowRebuild,
                                        autoCleanDirtyData,
                                        pluginLibs,
                                        1i64,
                                        TestScenario.FullTransactionFlow,
                                        "${testCaseNum}"
                                    ))
                                    testCaseNum += 1
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    configs
}

@Test
class TestRdbStore_merged {
    
    /*
     * @tc.number    : TestRdbStore_beginTransaction_0_1_parametric
     * @tc.name      : testBeginTransaction_0_1
     * @tc.desc      : Begin a transaction before executing the SQL statement. Parametric test for testsuite_0_1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBeginTransaction_0_1(): Unit {
        let testConfigs = generateTestConfigs_0_1()
        for (config in testConfigs) {
            let testName = "TestCase_${config.testCaseNumber}"
            Hilog.info(0u32, "cangjietest", "", "testcase ${testName} begins.")
            try {
                let rdbStore = getRdbStore(
                    Global.getAbilityContext(),
                    StoreConfig(
                        config.securityLevel,
                        name: "valid name",
                        encrypt: true,
                        dataGroupId: "valid createTime",
                        customDir: "valid modifyTime",
                        rootDir: "rootDir",
                        autoCleanDirtyData: config.autoCleanDirtyData,
                        allowRebuild: config.allowRebuild,
                        isReadOnly: config.isReadOnly,
                        pluginLibs: config.pluginLibs,
                        cryptoParam: CryptoParam(),
                        vector: config.vector,
                        tokenizer: Tokenizer.NoneTokenizer,
                        persist: config.persist,
                        enableSemanticIndex: config.enableSemanticIndex
                    )
                )
                let values = HashMap<String, RelationalStoreValueType>()
                rdbStore.beginTransaction()
                values.add("ID", RelationalStoreValueType.Integer(config.idValue))
                values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
                rdbStore.insert("THING", values)
                rdbStore.insert("THING", values)
                rdbStore.commit()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 14801002i32)
            }
            Hilog.info(0u32, "cangjietest", "", "testcase ${testName} ends.")
        }
    }
    
    /*
     * @tc.number    : TestRdbStore_beginTransaction_0_2_parametric
     * @tc.name      : testBeginTransaction_0_2
     * @tc.desc      : Begin a transaction before executing the SQL statement. Parametric test for testsuite_0_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBeginTransaction_0_2(): Unit {
        let testConfigs = generateTestConfigs_0_2()
        for (config in testConfigs) {
            let testName = "TestCase_${config.testCaseNumber}"
            Hilog.info(0u32, "cangjietest", "", "testcase ${testName} begins.")
            try {
                let rdbStore = getRdbStore(
                    Global.getAbilityContext(),
                    StoreConfig(
                        config.securityLevel,
                        name: "valid name",
                        encrypt: true,
                        dataGroupId: "valid createTime",
                        customDir: "valid modifyTime",
                        rootDir: "rootDir",
                        autoCleanDirtyData: config.autoCleanDirtyData,
                        allowRebuild: config.allowRebuild,
                        isReadOnly: config.isReadOnly,
                        pluginLibs: config.pluginLibs,
                        cryptoParam: CryptoParam(),
                        vector: config.vector,
                        tokenizer: Tokenizer.NoneTokenizer,
                        persist: config.persist,
                        enableSemanticIndex: config.enableSemanticIndex
                    )
                )
                let values = HashMap<String, RelationalStoreValueType>()
                rdbStore.beginTransaction()
                values.add("ID", RelationalStoreValueType.Integer(1i64))
                values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
                rdbStore.insert("THING", values)
                rdbStore.insert("THING", values)
                rdbStore.commit()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 14801002i32)
            }
            Hilog.info(0u32, "cangjietest", "", "testcase ${testName} ends.")
        }
    }
}
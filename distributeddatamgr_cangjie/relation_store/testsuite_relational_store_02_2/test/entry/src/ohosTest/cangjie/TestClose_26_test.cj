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
class TestClose_26 {
    /*
     * @tc.number    : TestCase_250100
     * @tc.name      : TestCase_2501
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2501(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2501 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2501 ends.")
    }

    /*
     * @tc.number    : TestCase_251000
     * @tc.name      : TestCase_2510
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2510(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2510 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2510 ends.")
    }

    /*
     * @tc.number    : TestCase_251100
     * @tc.name      : TestCase_2511
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2511(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2511 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2511 ends.")
    }

    /*
     * @tc.number    : TestCase_252000
     * @tc.name      : TestCase_2520
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2520(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2520 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2520 ends.")
    }

    /*
     * @tc.number    : TestCase_252100
     * @tc.name      : TestCase_2521
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2521(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2521 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2521 ends.")
    }

    /*
     * @tc.number    : TestCase_253000
     * @tc.name      : TestCase_2530
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2530(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2530 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2530 ends.")
    }

    /*
     * @tc.number    : TestCase_253100
     * @tc.name      : TestCase_2531
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2531(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2531 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2531 ends.")
    }

    /*
     * @tc.number    : TestCase_254000
     * @tc.name      : TestCase_2540
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2540(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2540 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2540 ends.")
    }

    /*
     * @tc.number    : TestCase_254100
     * @tc.name      : TestCase_2541
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2541(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2541 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2541 ends.")
    }

    /*
     * @tc.number    : TestCase_255000
     * @tc.name      : TestCase_2550
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2550(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2550 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2550 ends.")
    }

    /*
     * @tc.number    : TestCase_255100
     * @tc.name      : TestCase_2551
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2551(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2551 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2551 ends.")
    }

    /*
     * @tc.number    : TestCase_256000
     * @tc.name      : TestCase_2560
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2560(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2560 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2560 ends.")
    }

    /*
     * @tc.number    : TestCase_256100
     * @tc.name      : TestCase_2561
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2561(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2561 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2561 ends.")
    }

    /*
     * @tc.number    : TestCase_257000
     * @tc.name      : TestCase_2570
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2570(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2570 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2570 ends.")
    }

    /*
     * @tc.number    : TestCase_257100
     * @tc.name      : TestCase_2571
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2571(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2571 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2571 ends.")
    }

    /*
     * @tc.number    : TestCase_258000
     * @tc.name      : TestCase_2580
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2580(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2580 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2580 ends.")
    }

    /*
     * @tc.number    : TestCase_258100
     * @tc.name      : TestCase_2581
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2581(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2581 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2581 ends.")
    }

    /*
     * @tc.number    : TestCase_259000
     * @tc.name      : TestCase_2590
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2590(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2590 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2590 ends.")
    }

    /*
     * @tc.number    : TestCase_259100
     * @tc.name      : TestCase_2591
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2591(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2591 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2591 ends.")
    }

    /*
     * @tc.number    : TestCase_260000
     * @tc.name      : TestCase_2600
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2600(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2600 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2600 ends.")
    }
}

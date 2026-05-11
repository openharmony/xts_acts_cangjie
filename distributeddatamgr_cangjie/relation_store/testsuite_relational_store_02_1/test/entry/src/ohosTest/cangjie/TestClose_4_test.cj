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
class TestClose_4 {
    /*
     * @tc.number    : TestCase_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_301 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : TestCase_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_306 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : TestCase_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_311 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : TestCase_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_316 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : TestCase_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_321 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : TestCase_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_326 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : TestCase_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_331 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : TestCase_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_336 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : TestCase_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_341 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : TestCase_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_346 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : TestCase_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_351 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : TestCase_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_356 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : TestCase_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_361 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : TestCase_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_366 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : TestCase_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_371 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : TestCase_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_376 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : TestCase_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_381 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_381 ends.")
    }

    /*
     * @tc.number    : TestCase_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : "1024" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_390 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_390 ends.")
    }

    /*
     * @tc.number    : TestCase_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_391 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : TestCase_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : "1024" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_400 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_400 ends.")
    }
}

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
class TestClose_46 {
    /*
     * @tc.number    : TestCase_450100
     * @tc.name      : TestCase_4501
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4501(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4501 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4501 ends.")
    }

    /*
     * @tc.number    : TestCase_451000
     * @tc.name      : TestCase_4510
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4510(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4510 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4510 ends.")
    }

    /*
     * @tc.number    : TestCase_451100
     * @tc.name      : TestCase_4511
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4511(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4511 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4511 ends.")
    }

    /*
     * @tc.number    : TestCase_452000
     * @tc.name      : TestCase_4520
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4520(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4520 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
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
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4520 ends.")
    }

    /*
     * @tc.number    : TestCase_452100
     * @tc.name      : TestCase_4521
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4521(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4521 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4521 ends.")
    }

    /*
     * @tc.number    : TestCase_453000
     * @tc.name      : TestCase_4530
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4530(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4530 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4530 ends.")
    }

    /*
     * @tc.number    : TestCase_453100
     * @tc.name      : TestCase_4531
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4531(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4531 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4531 ends.")
    }

    /*
     * @tc.number    : TestCase_454000
     * @tc.name      : TestCase_4540
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4540(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4540 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4540 ends.")
    }

    /*
     * @tc.number    : TestCase_454100
     * @tc.name      : TestCase_4541
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4541(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4541 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4541 ends.")
    }

    /*
     * @tc.number    : TestCase_455000
     * @tc.name      : TestCase_4550
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4550(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4550 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4550 ends.")
    }

    /*
     * @tc.number    : TestCase_455100
     * @tc.name      : TestCase_4551
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4551(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4551 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4551 ends.")
    }

    /*
     * @tc.number    : TestCase_456000
     * @tc.name      : TestCase_4560
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4560(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4560 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4560 ends.")
    }

    /*
     * @tc.number    : TestCase_456100
     * @tc.name      : TestCase_4561
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4561(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4561 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4561 ends.")
    }

    /*
     * @tc.number    : TestCase_457000
     * @tc.name      : TestCase_4570
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4570(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4570 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4570 ends.")
    }

    /*
     * @tc.number    : TestCase_457100
     * @tc.name      : TestCase_4571
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4571(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4571 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4571 ends.")
    }

    /*
     * @tc.number    : TestCase_458000
     * @tc.name      : TestCase_4580
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4580(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4580 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4580 ends.")
    }

    /*
     * @tc.number    : TestCase_458100
     * @tc.name      : TestCase_4581
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4581(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4581 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4581 ends.")
    }

    /*
     * @tc.number    : TestCase_459000
     * @tc.name      : TestCase_4590
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4590(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4590 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4590 ends.")
    }

    /*
     * @tc.number    : TestCase_459100
     * @tc.name      : TestCase_4591
     * @tc.desc      : "1" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4591(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4591 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4591 ends.")
    }

    /*
     * @tc.number    : TestCase_460000
     * @tc.name      : TestCase_4600
     * @tc.desc      : "2" Close the result set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4600(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4600 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable resultSet")
            let resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'PETER")
            Hilog.info(0u32, "cangjietest", "", "testClose")
            resultSet.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4600 ends.")
    }
}

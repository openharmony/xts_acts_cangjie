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
//import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import std.core.*
import std.collection.HashMap
import ohos_app_cangjie_entry.Global

@Test
class TestRdbStore_delete_1 {
    /*
     * @tc.number    : TestRdbStore_delete_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : "Lisa" Delete data from the database according to the RdbPredicates deletion conditions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable predicates")
            let predicates = RdbPredicates("EMPLOYEE")
            Hilog.info(0u32, "cangjietest", "", "values1")
            predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            Hilog.info(0u32, "cangjietest", "", "delete failed")
            rdbStore.delete(predicates)
            @Expect("assertion#37: not throw", "delete failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_delete_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : "Jack" Delete data from the database according to the RdbPredicates deletion conditions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable predicates")
            let predicates = RdbPredicates("EMPLOYEE")
            Hilog.info(0u32, "cangjietest", "", "values1")
            predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Jack"))
            Hilog.info(0u32, "cangjietest", "", "delete failed")
            rdbStore.delete(predicates)
            @Expect("assertion#38: not throw", "delete failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_delete_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : "Tom" Delete data from the database according to the RdbPredicates deletion conditions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable predicates")
            let predicates = RdbPredicates("EMPLOYEE")
            Hilog.info(0u32, "cangjietest", "", "values1")
            predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Tom"))
            Hilog.info(0u32, "cangjietest", "", "delete failed")
            rdbStore.delete(predicates)
            @Expect("assertion#39: not throw", "delete failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_delete_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : "Jens" Delete data from the database according to the RdbPredicates deletion conditions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable predicates")
            let predicates = RdbPredicates("EMPLOYEE")
            Hilog.info(0u32, "cangjietest", "", "values1")
            predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Jens"))
            Hilog.info(0u32, "cangjietest", "", "delete failed")
            rdbStore.delete(predicates)
            @Expect("assertion#40: not throw", "delete failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_delete_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : "OK" Delete data from the database according to the RdbPredicates deletion conditions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable predicates")
            let predicates = RdbPredicates("EMPLOYEE")
            Hilog.info(0u32, "cangjietest", "", "values1")
            predicates.equalTo("NAME", RelationalStoreValueType.StringValue("OK"))
            Hilog.info(0u32, "cangjietest", "", "delete failed")
            rdbStore.delete(predicates)
            @Expect("assertion#41: not throw", "delete failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_delete_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : "Sun" Delete data from the database according to the RdbPredicates deletion conditions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable predicates")
            let predicates = RdbPredicates("EMPLOYEE")
            Hilog.info(0u32, "cangjietest", "", "values1")
            predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Sun"))
            Hilog.info(0u32, "cangjietest", "", "delete failed")
            rdbStore.delete(predicates)
            @Expect("assertion#42: not throw", "delete failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 ends.")
    }
}

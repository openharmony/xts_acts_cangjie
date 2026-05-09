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
import ohos.ui_test.*
import ohos.data.relational_store.*
import ohos.data.relational_store.RelationalStoreSecurityLevel
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import std.math.*
import std.collection.{HashMap}
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_deleteRdbStore_16 {

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_deleteRdbStore_16_0100
     * @tc.name      : Test_deleterdbstore_01
     * @tc.desc      : test RelationStore Test_deleterdbstore_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_deleterdbstore_01(): Unit {
        let set = StoreConfig(RelationalStoreSecurityLevel.S1, name: "zps.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: false, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false)
        var rdbStore = getRdbStore(getAbilityContext(),set)
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID int NOT NULL, NAME varchar(255) NOT NULL, AGE int, SALARY float NOT NULL, CODES Bit NOT NULL, PRIMARY KEY (Id))"
        )
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        values.add("SALARY", RelationalStoreValueType.Double(100.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))
        rdbStore.insert("EMPLOYEE", values)
        let predicates1 = RdbPredicates("EMPLOYEE")
        let resultSet1 = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet1.rowCount, 1)
        var delrdbStore = deleteRdbStore(getAbilityContext(), set)
        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet2  = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet2.rowCount, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_deleteRdbStore_16_0200
     * @tc.name      : Test_deleterdbstore_02
     * @tc.desc      : test RelationStore Test_deleterdbstore_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_deleterdbstore_02(): Unit {
        Hilog.info(0u32, "", "cangjietest aaa", "")
        var rdbStore = getRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "zps1.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: false, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID int NOT NULL, NAME varchar(255) NOT NULL, AGE int, SALARY float NOT NULL, CODES Bit NOT NULL, PRIMARY KEY (Id))"
        )
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        values.add("SALARY", RelationalStoreValueType.Double(100.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))
        rdbStore.insert("EMPLOYEE", values)
        let predicates1 = RdbPredicates("EMPLOYEE")
        let resultSet1 = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        Hilog.info(0u32, "cangjietest", "resultSet1.rowcount is ${resultSet1.rowCount}")
        @Expect(resultSet1.rowCount, 1)

        var delrdbStore = deleteRdbStore(getAbilityContext(), "zps1.db")

        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        Hilog.info(0u32, "cangjietest", "resultSet.rowcount is ${resultSet.rowCount}")
        @Expect(resultSet.rowCount, 1)

        var delrdbStore1 = deleteRdbStore(getAbilityContext(), "zps1.db")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_deleteRdbStore_16_0300
     * @tc.name      : Test_deleterdbstore_03
     * @tc.desc      : test RelationStore Test_deleterdbstore_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_deleterdbstore_03(): Unit {
        var rdbStore = getRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "zps.db", encrypt: false, dataGroupId: "",
                customDir: "test/", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false, isReadOnly: false,
                pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID int NOT NULL, NAME varchar(255) NOT NULL, AGE int, SALARY float NOT NULL, CODES Bit NOT NULL, PRIMARY KEY (Id))"
        )
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        values.add("SALARY", RelationalStoreValueType.Double(100.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))
        rdbStore.insert("EMPLOYEE", values)
        try {
            deleteRdbStore(getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "zps.db", encrypt: false, dataGroupId: "zpstesdt",
                    customDir: "test/", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
                    @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.toString(), "BusinessException: errorcode: 14801002, message: deleteRdbStore failed: The data group id is invalid.")
            @Expect(e.code, 14801002)
            @Expect(e.message, "deleteRdbStore failed: The data group id is invalid.")
        }
    }
}

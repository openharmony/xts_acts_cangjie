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
import ohos.business_exception.{BusinessException}
import std.collection.{HashMap}

@Test
class Test_RdbPredicates_init_02 {
    var _rdbStore: Option<RdbStore> = None
    prop rdbStore: RdbStore {
        get() {
            match (_rdbStore) {
                case Some(rdbStore) => rdbStore
                case None =>
                    let stageContext = getAbilityContext()
                    _rdbStore = getRdbStore(stageContext,
                        StoreConfig(RelationalStoreSecurityLevel.S2, name: "RdbTest.db", encrypt: true, dataGroupId: "",
                            customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true,
                            allowRebuild: false, isReadOnly: false, pluginLibs: ["pluginLibs"],
                            cryptoParam: CryptoParam(), vector: false, tokenizer: Tokenizer.NoneTokenizer, persist: true,
                            enableSemanticIndex: false))
                    _rdbStore.getOrThrow()
            }
        }
    }
    public override func afterAll(): Unit {
        match (_rdbStore) {
            case None => ()
            case Some(_) =>
                let stageContext = getAbilityContext()
                deleteRdbStore(stageContext, "RdbTest.db")
        }
    }
    public override func beforeEach(): Unit {
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

        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(2))
        values1.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values1.add("AGE", RelationalStoreValueType.Integer(19))
        values1.add("SALARY", RelationalStoreValueType.Double(1000.5))
        values1.add("CODES", RelationalStoreValueType.Boolean(false))
        rdbStore.insert("EMPLOYEE", values1)

        var values2 = HashMap<String, RelationalStoreValueType>()
        values2.add("ID", RelationalStoreValueType.Integer(3))
        values2.add("NAME", RelationalStoreValueType.StringValue("Bob"))
        values2.add("SALARY", RelationalStoreValueType.Double(10000.5))
        values2.add("CODES", RelationalStoreValueType.Boolean(true))
        rdbStore.insert("EMPLOYEE", values2)
    }
    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_RdbPredicates_init_02_0100
     * @tc.name      : test_rdbpredicates_init_01
     * @tc.desc      : test RelationStore test_rdbpredicates_init_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rdbpredicates_init_01(): Unit {
        try {
            let predicates = RdbPredicates("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "RdbPredicates init failed: Parameter error. The name must be not empty string.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_RdbPredicates_init_02_0200
     * @tc.name      : test_rdbpredicates_init_02
     * @tc.desc      : test RelationStore test_rdbpredicates_init_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rdbpredicates_init_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notEqualTo("NAME", RelationalStoreValueType.StringValue("Bob"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 2)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_RdbPredicates_init_02_0300
     * @tc.name      : test_rdbpredicates_init_03
     * @tc.desc      : test RelationStore test_rdbpredicates_init_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rdbpredicates_init_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notEqualTo("ID", RelationalStoreValueType.Integer(3))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 2)
    }
}

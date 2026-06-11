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

@Test
class Test_greaterThan_lessThan_orEqualTo_07 {
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
        for (i in 1..101) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue(""))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(-Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 101..201) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("\0"))
            values.add("AGE", RelationalStoreValueType.Integer(i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.5))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 300..400) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            values.add("SALARY", RelationalStoreValueType.Double(-10000.5))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 400..500) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("a#$%^&*C123"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.25))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 500..600) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME",
                RelationalStoreValueType.StringValue(
                    "111111111111111111111111111111111111111111111111111111111111111111111123"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.25))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }

        for (i in Int64.Min..Int64.Min + 100) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME",
                RelationalStoreValueType.StringValue(
                    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"))
            values.add("AGE", RelationalStoreValueType.Integer(i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in Int64.Max - 99..=Int64.Max) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("bcdefg1231978287"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
    }
    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0100
     * @tc.name      : test_greaterthan_01
     * @tc.desc      : test RelationStore test_greaterthan_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthan_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThan("ID", RelationalStoreValueType.Integer(299))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 400)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0200
     * @tc.name      : test_greaterthan_02
     * @tc.desc      : test RelationStore test_greaterthan_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthan_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThan("ID", RelationalStoreValueType.Integer(Int64.Max))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0300
     * @tc.name      : test_greaterthan_03
     * @tc.desc      : test RelationStore test_greaterthan_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthan_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThan("SALARY", RelationalStoreValueType.Double(101.4))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 400)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0400
     * @tc.name      : test_greaterthan_04
     * @tc.desc      : test RelationStore test_greaterthan_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthan_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThan("CODES", RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 400)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0500
     * @tc.name      : test_greaterthanorequalto_05
     * @tc.desc      : test RelationStore test_greaterthanorequalto_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthanorequalto_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThanOrEqualTo("ID", RelationalStoreValueType.Integer(301))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 399)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0600
     * @tc.name      : test_greaterthanequalto_06
     * @tc.desc      : test RelationStore test_greaterthanequalto_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthanequalto_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThanOrEqualTo("ID", RelationalStoreValueType.Integer(Int64.Max))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0700
     * @tc.name      : test_greaterthanorequalto_07
     * @tc.desc      : test RelationStore test_greaterthanorequalto_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthanorequalto_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThanOrEqualTo("SALARY", RelationalStoreValueType.Double(101.6))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 399)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0800
     * @tc.name      : test_greaterthanorequalto_08
     * @tc.desc      : test RelationStore test_greaterthanorequalto_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterthanorequalto_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.greaterThanOrEqualTo("CODES", RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_0900
     * @tc.name      : test_lessthan_09
     * @tc.desc      : test RelationStore test_lessthan_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthan_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThan("ID", RelationalStoreValueType.Integer(299))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1000
     * @tc.name      : test_lessthan_10
     * @tc.desc      : test RelationStore test_lessthan_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthan_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThan("ID", RelationalStoreValueType.Integer(Int64.Max))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 699)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1100
     * @tc.name      : test_lessthan_11
     * @tc.desc      : test RelationStore test_lessthan_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthan_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThan("SALARY", RelationalStoreValueType.Double(101.5))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1200
     * @tc.name      : test_lessthan_12
     * @tc.desc      : test RelationStore test_lessthan_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthan_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThan("CODES", RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1300
     * @tc.name      : test_lessthan_13
     * @tc.desc      : test RelationStore test_lessthan_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthan_13(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThan("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1400
     * @tc.name      : test_lessthanorequalto_14
     * @tc.desc      : test RelationStore test_lessthanorequalto_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthanorequalto_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThanOrEqualTo("ID", RelationalStoreValueType.Integer(200))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1500
     * @tc.name      : test_lessthanorequalto_15
     * @tc.desc      : test RelationStore test_lessthanorequalto_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthanorequalto_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThanOrEqualTo("ID", RelationalStoreValueType.Integer(-1))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1600
     * @tc.name      : test_lessthanorequalto_16
     * @tc.desc      : test RelationStore test_lessthanorequalto_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthanorequalto_16(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThanOrEqualTo("SALARY", RelationalStoreValueType.Double(-1.0))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1700
     * @tc.name      : test_lessthanorequalto_17
     * @tc.desc      : test RelationStore test_lessthanorequalto_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthanorequalto_17(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThanOrEqualTo("CODES", RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_greaterThan_lessThan_orEqualTo_07_1800
     * @tc.name      : test_lessthanorequalto_18
     * @tc.desc      : test RelationStore test_lessthanorequalto_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessthanorequalto_18(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.lessThanOrEqualTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }
}

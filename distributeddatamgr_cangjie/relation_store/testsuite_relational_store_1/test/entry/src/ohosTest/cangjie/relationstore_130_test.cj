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
class Test_like_glob_between_notBetween_06 {
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0100
     * @tc.name      : test_like_01
     * @tc.desc      : test RelationStore test_like_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("NAME", "%123")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0200
     * @tc.name      : test_like_02
     * @tc.desc      : test RelationStore test_like_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("NAME", "123%")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0300
     * @tc.name      : test_like_03
     * @tc.desc      : test RelationStore test_like_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("NAME", "%123%")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0400
     * @tc.name      : test_like_04
     * @tc.desc      : test RelationStore test_like_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("ID", "4%")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 111)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0500
     * @tc.name      : test_like_05
     * @tc.desc      : test RelationStore test_like_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("NAME", "a#%")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0600
     * @tc.name      : test_like_06
     * @tc.desc      : test RelationStore test_like_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("ID", "%")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0700
     * @tc.name      : test_glob_07
     * @tc.desc      : test RelationStore test_glob_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_glob_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.glob("ID", "4*")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 111)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0800
     * @tc.name      : test_glob_08
     * @tc.desc      : test RelationStore test_glob_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_glob_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.glob("NAME", "*b?d?fg*")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_0900
     * @tc.name      : test_glob_09
     * @tc.desc      : test RelationStore test_glob_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_glob_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.glob("NAME", "*b?d?gf*")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1000
     * @tc.name      : test_glob_10
     * @tc.desc      : test RelationStore test_glob_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_glob_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.glob("NAME", "*?")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 500)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1100
     * @tc.name      : test_glob_11
     * @tc.desc      : test RelationStore test_glob_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_glob_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.glob("NAME", "????")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1200
     * @tc.name      : test_between_12
     * @tc.desc      : test RelationStore test_between_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_between_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.between("AGE", RelationalStoreValueType.Integer(101), RelationalStoreValueType.Integer(200))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1300
     * @tc.name      : test_between_13
     * @tc.desc      : test RelationStore test_between_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_between_13(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.between("SALARY", RelationalStoreValueType.Double(-1.0), RelationalStoreValueType.Double(-100.0))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1400
     * @tc.name      : test_between_14
     * @tc.desc      : test RelationStore test_between_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_between_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.between("SALARY", RelationalStoreValueType.Double(-100.0), RelationalStoreValueType.Double(-1.0))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1500
     * @tc.name      : test_between_15
     * @tc.desc      : test RelationStore test_between_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_between_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.between("CODES", RelationalStoreValueType.Boolean(false), RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1600
     * @tc.name      : test_between_16
     * @tc.desc      : test RelationStore test_between_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_between_16(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.between("CODES", RelationalStoreValueType.Boolean(true), RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1700
     * @tc.name      : test_notbetween_17
     * @tc.desc      : test RelationStore test_notbetween_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notbetween_17(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notBetween("CODES", RelationalStoreValueType.Boolean(true), RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1800
     * @tc.name      : test_notbetween_18
     * @tc.desc      : test RelationStore test_notbetween_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notbetween_18(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notBetween("ID", RelationalStoreValueType.Integer(Int64.Max),
            RelationalStoreValueType.Integer(Int64.Max - 100))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_1900
     * @tc.name      : test_notbetween_19
     * @tc.desc      : test RelationStore test_notbetween_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notbetween_19(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notBetween("ID", RelationalStoreValueType.Integer(Int64.Max),
            RelationalStoreValueType.Integer(Int64.Max - 100))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_2000
     * @tc.name      : test_notbetween_20
     * @tc.desc      : test RelationStore test_notbetween_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notbetween_20(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notBetween("ID", RelationalStoreValueType.Integer(Int64.Min),
            RelationalStoreValueType.Integer(Int64.Min + 100))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 600)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_like_glob_between_notBetween_06_2100
     * @tc.name      : test_notbetween_21
     * @tc.desc      : test RelationStore test_notbetween_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notbetween_21(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notBetween("NAME", RelationalStoreValueType.StringValue("Lisa"),
            RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 600)
    }
}

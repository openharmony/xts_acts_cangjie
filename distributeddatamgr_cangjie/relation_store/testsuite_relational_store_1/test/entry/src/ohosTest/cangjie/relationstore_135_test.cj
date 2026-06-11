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
import std.collection.{HashMap}
import std.math.*
import ohos.business_exception.{BusinessException}

@Test
class Test_update_delete_11 {
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
        for (i in Int64.Max - 99..=Int64.Max) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("bcdefg1231978287"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
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
    }
    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0100
     * @tc.name      : test_update_01
     * @tc.desc      : test RelationStore test_update_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        values.add("SALARY", RelationalStoreValueType.Double(9999.513))
        @Expect(rdbStore.update(values, predicates), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0200
     * @tc.name      : test_update_02
     * @tc.desc      : test RelationStore test_update_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        try {
            rdbStore.update(values, predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800000)
            @Expect(e.message, "RdbStore update failed: Inner error. Inner code is 12594054")
        }
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0300
     * @tc.name      : test_update_03
     * @tc.desc      : test RelationStore test_update_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME1", RelationalStoreValueType.StringValue("TOM"))
        try {
            rdbStore.update(values, predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021)
            @Expect(e.message,"RdbStore update failed: SQLite: Generic error.")
        }
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0400
     * @tc.name      : test_update_04
     * @tc.desc      : test RelationStore test_update_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("zps"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("123"))
        @Expect(rdbStore.update(values, predicates), 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0500
     * @tc.name      : test_update_05
     * @tc.desc      : test RelationStore test_update_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("CODES", RelationalStoreValueType.Boolean(false))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("CODES", RelationalStoreValueType.Boolean(true))
        @Expect(rdbStore.update(values, predicates), 300)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-1")
        @Expect(resultSet.getDouble(3), -1.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "-9223372036854775709")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775709")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0600
     * @tc.name      : test_update_06
     * @tc.desc      : test RelationStore test_update_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        values.add("SALARY", RelationalStoreValueType.Double(9999.513))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictNone), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0700
     * @tc.name      : test_update_07
     * @tc.desc      : test RelationStore test_update_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        values.add("SALARY", RelationalStoreValueType.Double(9999.513))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictNone), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(1000))
        values1.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values1.add("AGE", RelationalStoreValueType.Integer(88))
        values1.add("SALARY", RelationalStoreValueType.Double(9999.513))
        try {
            rdbStore.update(values1, predicates1, conflict: ConflictResolution.OnConflictNone)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800032)
            @Expect(e.message, "RdbStore update failed: SQLite: Abort due to constraint violation.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0800
     * @tc.name      : test_update_08
     * @tc.desc      : test RelationStore test_update_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        values.add("SALARY", RelationalStoreValueType.Double(9999.513))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictRollback), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 9999.513)
        @Expect(resultSet.getString(4), "0")
        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(1000))
        values1.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values1.add("AGE", RelationalStoreValueType.Integer(88))
        values1.add("SALARY", RelationalStoreValueType.Double(9999.513))
        try {
            rdbStore.update(values1, predicates1, conflict: ConflictResolution.OnConflictRollback)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800032)
            @Expect(e.message, "RdbStore update failed: SQLite: Abort due to constraint violation.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_0900
     * @tc.name      : test_update_09
     * @tc.desc      : test RelationStore test_update_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("a#$%^&*C123"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictIgnore), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 400.25)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "499")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 499.25)
        @Expect(resultSet.getString(4), "1")
        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(1000))
        values1.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values1.add("AGE", RelationalStoreValueType.Integer(88))
        @Expect(rdbStore.update(values1, predicates1,conflict:ConflictResolution.OnConflictIgnore), 1)
        let predicates2 = RdbPredicates("EMPLOYEE")
        predicates2
            .equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
            .equalTo("ID", RelationalStoreValueType.Integer(1000))
        let resultSet1 = rdbStore.query(predicates2, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        resultSet1.goToFirstRow()
        @Expect(resultSet1.getDouble(3), 400.25)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1000
     * @tc.name      : test_update_10
     * @tc.desc      : test RelationStore test_update_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("a#$%^&*C123"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictReplace), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 400.25)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "499")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 499.25)
        @Expect(resultSet.getString(4), "1")
        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(1000))
        values1.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values1.add("AGE", RelationalStoreValueType.Integer(88))
        @Expect(rdbStore.update(values1, predicates1,conflict:ConflictResolution.OnConflictReplace), 100)
        let predicates2 = RdbPredicates("EMPLOYEE")
        predicates2.equalTo("ID", RelationalStoreValueType.Integer(1000))
        let resultSet1 = rdbStore.query(predicates2, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet1.rowCount, 1)
        resultSet1.goToFirstRow()
        @Expect(resultSet1.getString(0), "1000")
        @Expect(resultSet1.getString(1), "TOM")
        @Expect(resultSet1.getString(2), "88")
        @Expect(resultSet1.getDouble(3), 499.25)
        @Expect(resultSet1.getString(4), "1")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1100
     * @tc.name      : test_update_11
     * @tc.desc      : test RelationStore test_update_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("a#$%^&*C123"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictAbort), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 400.25)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "499")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 499.25)
        @Expect(resultSet.getString(4), "1")
        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(1000))
        values1.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values1.add("AGE", RelationalStoreValueType.Integer(88))
        try {
            rdbStore.update(values1, predicates1, conflict: ConflictResolution.OnConflictAbort)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800032)
            @Expect(e.message, "RdbStore update failed: SQLite: Abort due to constraint violation.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1200
     * @tc.name      : test_update_12
     * @tc.desc      : test RelationStore test_update_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("a#$%^&*C123"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictFail), 100)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1.equalTo("NAME", RelationalStoreValueType.StringValue("TOM"))
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 400.25)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "499")
        @Expect(resultSet.getString(1), "TOM")
        @Expect(resultSet.getString(2), "88")
        @Expect(resultSet.getDouble(3), 499.25)
        @Expect(resultSet.getString(4), "1")
        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(1000))
        values1.add("NAME", RelationalStoreValueType.StringValue("TOM"))
        values1.add("AGE", RelationalStoreValueType.Integer(88))
        try {
            rdbStore.update(values1, predicates1, conflict: ConflictResolution.OnConflictFail)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800032)
            @Expect(e.message, "RdbStore update failed: SQLite: Abort due to constraint violation.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1300
     * @tc.name      : test_update_13
     * @tc.desc      : test RelationStore test_update_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_13(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        try {
            rdbStore.update(values, predicates, conflict: ConflictResolution.OnConflictReplace)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800000)
            @Expect(e.message, "RdbStore update failed: Inner error. Inner code is 12594054")
        }
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1400
     * @tc.name      : test_update_14
     * @tc.desc      : test RelationStore test_update_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME1", RelationalStoreValueType.StringValue("TOM"))
        try {
            rdbStore.update(values, predicates, conflict: ConflictResolution.OnConflictReplace)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021)
            @Expect(e.message,"RdbStore update failed: SQLite: Generic error.")
        }
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1500
     * @tc.name      : test_update_15
     * @tc.desc      : test RelationStore test_update_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("zps"))
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("123"))
        @Expect(rdbStore.update(values, predicates,conflict:ConflictResolution.OnConflictReplace), 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1600
     * @tc.name      : test_delete_17
     * @tc.desc      : test RelationStore test_delete_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_17(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("CODES", RelationalStoreValueType.Boolean(false))
        @Expect(rdbStore.delete(predicates),300)
        let predicates1 = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 400)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-1")
        @Expect(resultSet.getDouble(3), -1.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "-9223372036854775709")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775709")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1700
     * @tc.name      : test_delete_18
     * @tc.desc      : test RelationStore test_delete_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_18(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("CODES", RelationalStoreValueType.Boolean(false)).like("ID", "4%")
        @Expect(rdbStore.delete(predicates),0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_update_delete_11_1800
     * @tc.name      : test_delete_19
     * @tc.desc      : test RelationStore test_delete_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_19(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        @Expect(rdbStore.delete(predicates),700)
        let predicates1 = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }
}

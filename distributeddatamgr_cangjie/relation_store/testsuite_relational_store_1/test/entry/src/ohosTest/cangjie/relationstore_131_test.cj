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
import ohos.business_exception.BusinessException

@Test
class Test_limitAs_offsetAs_groupBy_in_notIn_09 {
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0100
     * @tc.name      : test_limitas_01
     * @tc.desc      : test RelationStore test_limitas_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limitas_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(0)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0200
     * @tc.name      : test_limitas_02
     * @tc.desc      : test RelationStore test_limitas_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limitas_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(Int32.Min)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0300
     * @tc.name      : test_limitas_03
     * @tc.desc      : test RelationStore test_limitas_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limitas_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(1)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 1)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-1")
        @Expect(resultSet.getDouble(3), -1.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0400
     * @tc.name      : test_limitas_04
     * @tc.desc      : test RelationStore test_limitas_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limitas_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(Int32.Max)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
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
        @Expect(resultSet.getDouble(3), -9223372036854775709.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0500
     * @tc.name      : test_limitas_05
     * @tc.desc      : test RelationStore test_limitas_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limitas_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(100)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-1")
        @Expect(resultSet.getDouble(3), -1.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "100")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-100")
        @Expect(resultSet.getDouble(3), -100.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0600
     * @tc.name      : test_offsetas_06
     * @tc.desc      : test RelationStore test_offsetas_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(700).offsetAs(-1)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
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
        @Expect(resultSet.getDouble(3), -9223372036854775709.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0700
     * @tc.name      : test_offsetas_07
     * @tc.desc      : test RelationStore test_offsetas_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(-1).offsetAs(-1)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
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
        @Expect(resultSet.getDouble(3), -9223372036854775709.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0800
     * @tc.name      : test_offsetas_08
     * @tc.desc      : test RelationStore test_offsetas_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(100).offsetAs(0)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-1")
        @Expect(resultSet.getDouble(3), -1.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "100")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-100")
        @Expect(resultSet.getDouble(3), -100.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0900
     * @tc.name      : test_offsetas_09
     * @tc.desc      : test RelationStore test_offsetas_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(100).offsetAs(0)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-1")
        @Expect(resultSet.getDouble(3), -1.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "100")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-100")
        @Expect(resultSet.getDouble(3), -100.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1000
     * @tc.name      : test_offsetas_10
     * @tc.desc      : test RelationStore test_offsetas_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(0).offsetAs(0)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
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
        @Expect(resultSet.getDouble(3), -9223372036854775709.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1100
     * @tc.name      : test_offsetas_11
     * @tc.desc      : test RelationStore test_offsetas_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.limitAs(90).offsetAs(100)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 90)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "101")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "101")
        @Expect(resultSet.getDouble(3), 101.5)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "190")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "190")
        @Expect(resultSet.getDouble(3), 190.5)
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1200
     * @tc.name      : test_offsetas_12
     * @tc.desc      : test RelationStore test_offsetas_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetas_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa")).limitAs(10).offsetAs(20)
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 10)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "320")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getDouble(3), -10000.5)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "329")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getDouble(3), -10000.5)
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1300
     * @tc.name      : test_groupby_13
     * @tc.desc      : test RelationStore test_groupby_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_groupby_13(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.groupBy(["NAME"])
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 6)
        predicates.orderByAsc("ID")
        let resultSet1 = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet1.rowCount, 6)
        resultSet1.goToFirstRow()
        @Expect(resultSet1.getString(0), "-9223372036854775808")
        @Expect(resultSet1.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet1.getString(2), "-9223372036854775808")
        @Expect(resultSet1.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet1.getString(4), "1")
        resultSet1.goToLastRow()
        @Expect(resultSet1.getString(0), "9223372036854775708")
        @Expect(resultSet1.getString(1), "bcdefg1231978287")
        @Expect(resultSet1.getString(2), "-9223372036854775708")
        @Expect(resultSet1.getDouble(3), 9223372036854775807.0)
        @Expect(resultSet1.getString(4), "0")
        try {
            resultSet1.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1400
     * @tc.name      : test_groupby_14
     * @tc.desc      : test RelationStore test_groupby_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_groupby_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.groupBy(["AGEX"])
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1500
     * @tc.name      : test_groupby_15
     * @tc.desc      : test RelationStore test_groupby_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_groupby_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.groupBy(["NAME", "CODES"]).orderByAsc("ID")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 7)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "-9223372036854775808")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775808")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "9223372036854775708")
        @Expect(resultSet.getString(1), "bcdefg1231978287")
        @Expect(resultSet.getString(2), "-9223372036854775708")
        @Expect(resultSet.getDouble(3), 9223372036854775807.0)
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1600
     * @tc.name      : test_in_16
     * @tc.desc      : test RelationStore test_in_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_16(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.`inValues`("AGE",
            [RelationalStoreValueType.Integer(1), RelationalStoreValueType.Integer(100),
                RelationalStoreValueType.Integer(-400)])
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 1)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "a#$%^&*C123")
        @Expect(resultSet.getString(2), "-400")
        @Expect(resultSet.getDouble(3), 400.25)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "a#$%^&*C123")
        @Expect(resultSet.getString(2), "-400")
        @Expect(resultSet.getDouble(3), 400.25)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1700
     * @tc.name      : test_in_17
     * @tc.desc      : test RelationStore test_in_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_17(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("AGE",
            [RelationalStoreValueType.Integer(1), RelationalStoreValueType.Integer(-400),
                RelationalStoreValueType.Integer(101)])
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 598)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_1800
     * @tc.name      : test_notIn_18
     * @tc.desc      : test RelationStore test_notIn_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notIn_18(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("CODES", [RelationalStoreValueType.Boolean(true)])
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }
}

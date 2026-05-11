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
import kit.PerformanceAnalysisKit.Hilog
import std.collection.{HashMap}
import ohos.business_exception.BusinessException

@Test
class Test_orderByAsc_orderByDesc_distinct_08 {
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0100
     * @tc.name      : test_orderbyasc_01
     * @tc.desc      : test RelationStore test_orderbyasc_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderbyasc_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByAsc("ID")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "-9223372036854775808")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775808")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "9223372036854775807")
        @Expect(resultSet.getString(1), "bcdefg1231978287")
        @Expect(resultSet.getString(2), "-9223372036854775807")
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0200
     * @tc.name      : test_orderbyasc_02
     * @tc.desc      : test RelationStore test_orderbyasc_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderbyasc_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByAsc("SALARY")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "-9223372036854775808")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775808")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "9223372036854775807")
        @Expect(resultSet.getString(1), "bcdefg1231978287")
        @Expect(resultSet.getString(2), "-9223372036854775807")
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0300
     * @tc.name      : test_orderbyasc_03
     * @tc.desc      : test RelationStore test_orderbyasc_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderbyasc_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByAsc("CODES")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "101")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "101")
        @Expect(resultSet.getDouble(3), 101.5)
        @Expect(resultSet.getString(4), "0")
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0400
     * @tc.name      : test_orderbydesc_04
     * @tc.desc      : test RelationStore test_orderbydesc_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderbydesc_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByDesc("ID")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "9223372036854775807")
        @Expect(resultSet.getString(1), "bcdefg1231978287")
        @Expect(resultSet.getString(2), "-9223372036854775807")
        @Expect(resultSet.getDouble(3), 9223372036854775807.0)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "-9223372036854775808")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775808")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0500
     * @tc.name      : test_orderbydesc_05
     * @tc.desc      : test RelationStore test_orderbydesc_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderbydesc_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByDesc("SALARY")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 700)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "9223372036854775708")
        @Expect(resultSet.getString(1), "bcdefg1231978287")
        @Expect(resultSet.getString(2), "-9223372036854775708")
        @Expect(resultSet.getDouble(3), 9223372036854775807.0)
        @Expect(resultSet.getString(4), "0")
        for (i in 0..10) {
            resultSet.goToNextRow()
            Hilog.info(0u32, "cangjietest", "", "${resultSet.getDouble(3)}")
        }
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "-9223372036854775709")
        @Expect(resultSet.getString(1), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")
        @Expect(resultSet.getString(2), "-9223372036854775709")
        @Expect(resultSet.getDouble(3), -9223372036854775808.0)
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0600
     * @tc.name      : test_orderbydesc_06
     * @tc.desc      : test RelationStore test_orderbydesc_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderbydesc_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .between("ID", RelationalStoreValueType.Integer(1), RelationalStoreValueType.Integer(200))
            .orderByAsc("CODES")
            .orderByDesc("ID")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "200")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "200")
        @Expect(resultSet.getDouble(3), 200.5)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToRow(99)
        @Expect(resultSet.getString(0), "101")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "101")
        @Expect(resultSet.getDouble(3), 101.5)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToRow(100)
        @Expect(resultSet.getString(0), "100")
        @Expect(resultSet.getString(1), "")
        @Expect(resultSet.getString(2), "-100")
        @Expect(resultSet.getDouble(3), -100.0)
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_orderByAsc_orderByDesc_distinct_08_0700
     * @tc.name      : test_distinct_07
     * @tc.desc      : test RelationStore test_distinct_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_distinct_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa")).distinct()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }
}

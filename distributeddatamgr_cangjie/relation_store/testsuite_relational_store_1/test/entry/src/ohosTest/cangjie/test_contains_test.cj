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
import ohos.hilog.Hilog
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

@Test
class Test_contains {
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
    }
    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0100
     * @tc.name      : test_contains_01
     * @tc.desc      : test RelationStore test_contains_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.contains("NAME", "is")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0200
     * @tc.name      : test_contains_02
     * @tc.desc      : test RelationStore test_contains_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.contains("NAME", "")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 500)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0300
     * @tc.name      : test_contains_03
     * @tc.desc      : test RelationStore test_contains_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.contains("NAME", "\0")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 500)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0400
     * @tc.name      : test_contains_04
     * @tc.desc      : test RelationStore test_contains_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.contains("NAME", "\\")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0500
     * @tc.name      : test_contains_05
     * @tc.desc      : test RelationStore test_contains_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.contains("NAME", "#")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0600
     * @tc.name      : test_contains_06
     * @tc.desc      : test RelationStore test_contains_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.contains("NAME", "123")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "a#$%^&*C123")
        @Expect(resultSet.getString(2), "-400")
        @Expect(resultSet.getString(3), "400.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(199)
        @Expect(resultSet.getString(0), "599")
        @Expect(resultSet.getString(1), "111111111111111111111111111111111111111111111111111111111111111111111123")
        @Expect(resultSet.getString(2), "-599")
        @Expect(resultSet.getString(3), "599.25")
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0700
     * @tc.name      : test_beginswith_07
     * @tc.desc      : test RelationStore test_beginswith_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginswith_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginsWith("NAME", "L")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getDouble(3), -10000.5)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToRow(99)
        @Expect(resultSet.getString(0), "399")
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0800
     * @tc.name      : test_beginswith_08
     * @tc.desc      : test RelationStore test_beginswith_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginswith_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginsWith("NAME", "a#$")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "a#$%^&*C123")
        @Expect(resultSet.getString(2), "-400")
        @Expect(resultSet.getString(3), "400.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(99)
        @Expect(resultSet.getString(0), "499")
        @Expect(resultSet.getString(1), "a#$%^&*C123")
        @Expect(resultSet.getString(2), "-499")
        @Expect(resultSet.getString(3), "499.25")
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_0900
     * @tc.name      : test_beginswith_09
     * @tc.desc      : test RelationStore test_beginswith_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginswith_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginsWith("NAME", "111")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "500")
        @Expect(resultSet.getString(1), "111111111111111111111111111111111111111111111111111111111111111111111123")
        @Expect(resultSet.getString(2), "-500")
        @Expect(resultSet.getString(3), "500.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(99)
        @Expect(resultSet.getString(0), "599")
        @Expect(resultSet.getString(1), "111111111111111111111111111111111111111111111111111111111111111111111123")
        @Expect(resultSet.getString(2), "-599")
        @Expect(resultSet.getString(3), "599.25")
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1000
     * @tc.name      : test_beginswith_10
     * @tc.desc      : test RelationStore test_beginswith_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginswith_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginsWith("NAME", "123")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
        // @Expect(resultSet.goToRow(0), false)
        try {
            resultSet.goToRow(0)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1100
     * @tc.name      : test_endswith_11
     * @tc.desc      : test RelationStore test_endswith_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endswith_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.endsWith("NAME", "a#$")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
        try {
            resultSet.goToRow(0)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1200
     * @tc.name      : test_endswith_12
     * @tc.desc      : test RelationStore test_endswith_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endswith_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.endsWith("NAME", "a")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getDouble(3), -10000.5)
        @Expect(resultSet.getString(4), "0")
        resultSet.goToRow(99)
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getString(3), "-10000")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1300
     * @tc.name      : test_endswith_13
     * @tc.desc      : test RelationStore test_endswith_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endswith_13(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.endsWith("NAME", "123")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "400")
        @Expect(resultSet.getString(1), "a#$%^&*C123")
        @Expect(resultSet.getString(2), "-400")
        @Expect(resultSet.getString(3), "400.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(199)
        @Expect(resultSet.getString(0), "599")
        @Expect(resultSet.getString(1), "111111111111111111111111111111111111111111111111111111111111111111111123")
        @Expect(resultSet.getString(2), "-599")
        @Expect(resultSet.getString(3), "599.25")
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1400
     * @tc.name      : test_endswith_14
     * @tc.desc      : test RelationStore test_endswith_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endswith_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.endsWith("NAME", "")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 500)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1500
     * @tc.name      : test_isnull_15
     * @tc.desc      : test RelationStore test_isnull_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isnull_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.isNull("NAME")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1600
     * @tc.name      : test_isnull_16
     * @tc.desc      : test RelationStore test_isnull_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isnull_16(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.isNull("AGE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1700
     * @tc.name      : test_isnull_17
     * @tc.desc      : test RelationStore test_isnull_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isnull_17(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.isNull("CODES")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1800
     * @tc.name      : test_isnotnull_18
     * @tc.desc      : test RelationStore test_isnotnull_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isnotnull_18(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.isNotNull("NAME")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 500)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_1900
     * @tc.name      : test_isnotnull_19
     * @tc.desc      : test RelationStore test_isnotnull_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isnotnull_19(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.isNotNull("AGE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 400)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_contains_beginsWith_endsWith_isNull_isNotNull_05_2000
     * @tc.name      : test_isnotnull_20
     * @tc.desc      : test RelationStore test_isnotnull_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isnotnull_20(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.isNotNull("CODES")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 500)
    }
}

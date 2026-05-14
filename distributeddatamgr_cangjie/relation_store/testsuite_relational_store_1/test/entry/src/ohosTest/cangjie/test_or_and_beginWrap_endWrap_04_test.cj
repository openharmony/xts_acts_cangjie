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
class Test_or_and_beginWrap_endWrap_04 {
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
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            values.add("AGE", RelationalStoreValueType.Integer(i + 1))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.25))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 101..201) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("仓颉"))
            values.add("AGE", RelationalStoreValueType.Integer(i + 2))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.5))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 300..400) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            values.add("SALARY", RelationalStoreValueType.Double(10000.5))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
    }
    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0100
     * @tc.name      : test_beginwrap_01
     * @tc.desc      : test RelationStore test_beginwrap_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginwrap_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0200
     * @tc.name      : test_beginwrap_02
     * @tc.desc      : test RelationStore test_beginwrap_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginwrap_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginWrap().equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0300
     * @tc.name      : test_endwrap_03
     * @tc.desc      : test RelationStore test_endwrap_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endwrap_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0400
     * @tc.name      : test_endwrap_04
     * @tc.desc      : test RelationStore test_endwrap_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endwrap_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notEqualTo("NAME", RelationalStoreValueType.StringValue("Lisa")).endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0500
     * @tc.name      : test_begin_endwrap_05
     * @tc.desc      : test RelationStore test_begin_endwrap_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_begin_endwrap_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginWrap().endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0600
     * @tc.name      : test_begin_endwrap_06
     * @tc.desc      : test RelationStore test_begin_endwrap_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_begin_endwrap_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginWrap().equalTo("NAME", RelationalStoreValueType.StringValue("Lisa")).endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "2")
        @Expect(resultSet.getString(3), "1.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(199)
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getString(3), "10000.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0700
     * @tc.name      : test_or_07
     * @tc.desc      : test RelationStore test_or_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_or_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .beginWrap()
            .equalTo("NAME", RelationalStoreValueType.StringValue("仓颉"))
            .or()
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
            .endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "2")
        @Expect(resultSet.getString(3), "1.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(199)
        @Expect(resultSet.getString(0), "200")
        @Expect(resultSet.getString(1), "仓颉")
        @Expect(resultSet.getString(2), "202")
        @Expect(resultSet.getString(3), "200.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0800
     * @tc.name      : test_or_08
     * @tc.desc      : test RelationStore test_or_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_or_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .beginWrap()
            .notEqualTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .or()
            .greaterThan("ID", RelationalStoreValueType.Integer(299))
            .endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "101")
        @Expect(resultSet.getString(1), "仓颉")
        @Expect(resultSet.getString(2), "103")
        @Expect(resultSet.getString(3), "101.5")
        @Expect(resultSet.getString(4), "0")
        resultSet.goToRow(199)
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getString(3), "10000.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_0900
     * @tc.name      : test_or_09
     * @tc.desc      : test RelationStore test_or_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_or_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("仓颉"))
            .or()
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToRow(0)
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "2")
        @Expect(resultSet.getString(3), "1.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToRow(199)
        @Expect(resultSet.getString(0), "200")
        @Expect(resultSet.getString(1), "仓颉")
        @Expect(resultSet.getString(2), "202")
        @Expect(resultSet.getString(3), "200.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_1000
     * @tc.name      : test_and_10
     * @tc.desc      : test RelationStore test_and_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_and_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .beginWrap()
            .equalTo("NAME", RelationalStoreValueType.StringValue("仓颉"))
            .and()
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
            .endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 0)
        try {
            resultSet.goToFirstRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_1100
     * @tc.name      : test_and_11
     * @tc.desc      : test RelationStore test_and_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_and_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.beginWrap().isNull("AGE").and().lessThan("ID", RelationalStoreValueType.Integer(301)).endWrap()
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 1)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "300")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getString(3), "10000.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_1200
     * @tc.name      : test_and_12
     * @tc.desc      : test RelationStore test_and_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_and_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.like("NAME", "%sa%").and().lessThan("ID", RelationalStoreValueType.Integer(300))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "2")
        @Expect(resultSet.getString(3), "1.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "100")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "101")
        @Expect(resultSet.getString(3), "100.25")
        @Expect(resultSet.getString(4), "1")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_1300
     * @tc.name      : test_and_or_13
     * @tc.desc      : test RelationStore test_and_or_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_and_or_13(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .like("NAME", "%sa%")
            .and()
            .lessThan("ID", RelationalStoreValueType.Integer(300))
            .or()
            .greaterThan("AGE", RelationalStoreValueType.Integer(102))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 200)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "2")
        @Expect(resultSet.getString(3), "1.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "200")
        @Expect(resultSet.getString(1), "仓颉")
        @Expect(resultSet.getString(2), "202")
        @Expect(resultSet.getString(3), "200.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_1400
     * @tc.name      : test_and_or_14
     * @tc.desc      : test RelationStore test_and_or_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_and_or_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .like("NAME", "%sa%")
            .or()
            .lessThan("ID", RelationalStoreValueType.Integer(300))
            .and()
            .greaterThan("AGE", RelationalStoreValueType.Integer(102))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 300)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "2")
        @Expect(resultSet.getString(3), "1.25")
        @Expect(resultSet.getString(4), "1")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getString(2), "")
        @Expect(resultSet.getString(3), "10000.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_or_and_beginWrap_endWrap_04_1500
     * @tc.name      : test_and_or_15
     * @tc.desc      : test RelationStore test_and_or_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_and_or_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .beginWrap()
            .like("NAME", "%sa%")
            .or()
            .lessThan("ID", RelationalStoreValueType.Integer(300))
            .endWrap()
            .and()
            .greaterThan("AGE", RelationalStoreValueType.Integer(102))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 100)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "101")
        @Expect(resultSet.getString(1), "仓颉")
        @Expect(resultSet.getString(2), "103")
        @Expect(resultSet.getString(3), "101.5")
        @Expect(resultSet.getString(4), "0")
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "200")
        @Expect(resultSet.getString(1), "仓颉")
        @Expect(resultSet.getString(2), "202")
        @Expect(resultSet.getString(3), "200.5")
        @Expect(resultSet.getString(4), "0")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }
}

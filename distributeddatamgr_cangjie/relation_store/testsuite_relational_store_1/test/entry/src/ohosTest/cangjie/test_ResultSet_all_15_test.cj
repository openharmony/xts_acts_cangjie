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
import ohos.business_exception.BusinessException

@Test
class Test_ResultSet_all_15 {
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
            values.add("NAME", RelationalStoreValueType.StringValue("\0"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(-Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 101..201) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("仓颉"))
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
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0100
     * @tc.name      : test_resultset_01
     * @tc.desc      : test RelationStore test_resultset_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_01(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.columnNames,["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.columnCount, 5)
        @Expect(resultSet.rowCount, 100)
        @Expect(resultSet.rowIndex, -1)
        @Expect(resultSet.isAtFirstRow, false)
        @Expect(resultSet.isAtLastRow, false)
        @Expect(resultSet.isEnded, false)
        @Expect(resultSet.isStarted, false)
        @Expect(resultSet.isClosed, false)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0200
     * @tc.name      : test_resultset_02
     * @tc.desc      : test RelationStore test_resultset_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_02(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("CODES", RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME"])
        @Expect(resultSet.columnNames,["ID", "NAME"])
        @Expect(resultSet.columnCount, 2)
        @Expect(resultSet.rowCount, 300)
        resultSet.goToFirstRow()
        @Expect(resultSet.rowIndex, 0)
        @Expect(resultSet.isAtFirstRow, true)
        @Expect(resultSet.isStarted, true)
        resultSet.goToLastRow()
        @Expect(resultSet.rowIndex, 299)
        @Expect(resultSet.isAtLastRow, true)
        @Expect(resultSet.isEnded, false)
        @Expect(resultSet.isStarted, true)
        resultSet.close()
        @Expect(resultSet.isClosed, true)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0300
     * @tc.name      : test_resultset_03
     * @tc.desc      : test RelationStore test_resultset_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_03(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("CODES", RelationalStoreValueType.Boolean(false))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME"])
        @Expect(resultSet.getColumnIndex("ID"), 0)
        @Expect(resultSet.getColumnIndex("NAME"), 1)
        let a = resultSet.getColumnIndex("AGE")
        @Expect(a, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0400
     * @tc.name      : test_resultset_04
     * @tc.desc      : test RelationStore test_resultset_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_04(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.getColumnIndex("ID"), 0)
        @Expect(resultSet.getColumnIndex("NAME"), 1)
        @Expect(resultSet.getColumnIndex("AGE"), 2)
        try {
            resultSet.getColumnIndex("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "ResultSet getColumnIndex failed: Parameter error. The columnName must be not empty string.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0500
     * @tc.name      : test_resultset_05
     * @tc.desc      : test RelationStore test_resultset_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_05(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.getColumnIndex("ID"), 0)
        @Expect(resultSet.getColumnIndex("NAME"), 1)
        @Expect(resultSet.getColumnIndex("AGE"), 2)
        try {
            resultSet.getColumnIndex("\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "ResultSet getColumnIndex failed: Parameter error. The columnName must be not empty string.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0600
     * @tc.name      : test_resultset_06
     * @tc.desc      : test RelationStore test_resultset_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_06(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.getColumnIndex("ID"), 0)
        @Expect(resultSet.getColumnIndex("NAME"), 1)
        @Expect(resultSet.getColumnIndex("AGE"), 2)
        let b = resultSet.getColumnIndex("$%^")
        @Expect(b, -1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0700
     * @tc.name      : test_resultset_07
     * @tc.desc      : test RelationStore test_resultset_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_07(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.getColumnName(0), "ID")
        @Expect(resultSet.getColumnName(1), "NAME")
        @Expect(resultSet.getColumnName(2), "AGE")
        try {
            resultSet.getColumnName(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
            @Expect(e.message, "ResultSet getColumnName failed: Column out of bounds.")
        }
        try {
            resultSet.getColumnName(Int32.Max)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
            @Expect(e.message, "ResultSet getColumnName failed: Column out of bounds.")
        }
        try {
            resultSet.getColumnName(Int32.Min)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
            @Expect(e.message, "ResultSet getColumnName failed: Column out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0800
     * @tc.name      : test_resultset_08
     * @tc.desc      : test RelationStore test_resultset_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_08(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.rowIndex, -1)
        try {
            resultSet.goTo(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }        
        try {
            resultSet.goToRow(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }  
        try {
            resultSet.goTo(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }          
        @Expect(resultSet.goTo(1), true)
        @Expect(resultSet.getString(0), "300" )
        @Expect(resultSet.goTo(99), true)
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.goTo(0), true)
        @Expect(resultSet.getString(0), "399")
        try {
            resultSet.goTo(-1000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_0900
     * @tc.name      : test_resultset_09
     * @tc.desc      : test RelationStore test_resultset_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_09(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.rowIndex, -1)
        try {
            resultSet.goTo(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }        
        try {
            resultSet.goTo(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }  
        try {
            resultSet.goTo(1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
        try {
            resultSet.goTo(-1000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }                
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1000
     * @tc.name      : test_resultset_10
     * @tc.desc      : test RelationStore test_resultset_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_10(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.goToRow(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }          
        @Expect(resultSet.rowIndex, -1)
        @Expect(resultSet.goToRow(0), true)
        @Expect(resultSet.getString(0), "300" )
        @Expect(resultSet.goToRow(99), true)
        @Expect(resultSet.getString(0), "399")
        @Expect(resultSet.goToRow(1), true)
        @Expect(resultSet.getString(0), "301")
        try {
            resultSet.goTo(-1000)
            @Expect(false)      
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1100
     * @tc.name      : test_resultset_11
     * @tc.desc      : test RelationStore test_resultset_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_11(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.goToRow(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }  
        try {
            resultSet.goToRow(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
        try {
            resultSet.goToRow(1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }         
        try {
            resultSet.goTo(-1000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1200
     * @tc.name      : test_resultset_12
     * @tc.desc      : test RelationStore test_resultset_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_12(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.goToNextRow(),true)
        @Expect(resultSet.getString(0),"300")
        try {
            resultSet.goToPreviousRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }

        @Expect(resultSet.goToFirstRow(), true)
        @Expect(resultSet.getString(0),"300")
        try {
            resultSet.goToPreviousRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }

        @Expect(resultSet.goToNextRow(), true)
        @Expect(resultSet.getString(0),"301")
        @Expect(resultSet.goToNextRow(), true)
        @Expect(resultSet.getString(0),"302")
        @Expect(resultSet.goToLastRow(), true)
        @Expect(resultSet.getString(0),"399")
        @Expect(resultSet.goToPreviousRow(), true)
        @Expect(resultSet.getString(0),"398")
        @Expect(resultSet.goToNextRow(), true)
        @Expect(resultSet.getString(0),"399")
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
        @Expect(resultSet.isEnded, true)
        @Expect(resultSet.goToPreviousRow(), true)
        @Expect(resultSet.getString(0),"399")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1300
     * @tc.name      : test_resultset_13_0
     * @tc.desc      : test RelationStore test_resultset_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_13_0(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_13001
     * @tc.name      : test_resultset_13_1
     * @tc.desc      : test RelationStore test_resultset_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_13_1(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.goToFirstRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }

    
    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_13001
     * @tc.name      : test_resultset_13_2
     * @tc.desc      : test RelationStore test_resultset_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_13_2(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }
     
    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_13001
     * @tc.name      : test_resultset_13_3
     * @tc.desc      : test RelationStore test_resultset_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_13_3(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.goToPreviousRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }   
     /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_13001
     * @tc.name      : test_resultset_13_4
     * @tc.desc      : test RelationStore test_resultset_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_13_4(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.goToLastRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
        }
    }    
    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1400
     * @tc.name      : test_resultset_14
     * @tc.desc      : test RelationStore test_resultset_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_14(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.getBlob(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getBlob failed: Row out of bounds.")
        }
        try {
            resultSet.getBlob(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getBlob failed: Row out of bounds.")
        }
        @Expect(resultSet.goToFirstRow(),true)
        @Expect(resultSet.getString(0),"300")
        @Expect(resultSet.getBlob(0),[])
        @Expect(resultSet.getBlob(1),[76u8, 105, 115, 97])
        @Expect(resultSet.getBlob(2),[])
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1500
     * @tc.name      : test_resultset_15
     * @tc.desc      : test RelationStore test_resultset_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_15(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.getLong(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getLong failed: Row out of bounds.")
        }
        try {
            resultSet.getLong(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getLong failed: Row out of bounds.")
        }
        @Expect(resultSet.goToFirstRow(),true)
        @Expect(resultSet.getString(0),"300")
        @Expect(resultSet.getLong(0), 300)
        @Expect(resultSet.getLong(1), 0)
        @Expect(resultSet.getLong(2), 0)
        try {
            resultSet.getLong(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
            @Expect(e.message, "ResultSet getLong failed: Column out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1600
     * @tc.name      : test_resultset_16
     * @tc.desc      : test RelationStore test_resultset_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_16(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.getLong(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getLong failed: Row out of bounds.")
        }
        try {
            resultSet.getLong(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getLong failed: Row out of bounds.")
        }
        try {
            resultSet.getLong(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getLong failed: Row out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1700
     * @tc.name      : test_resultset_17
     * @tc.desc      : test RelationStore test_resultset_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_17(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.getDouble(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getDouble failed: Row out of bounds.")
        }
        try {
            resultSet.getDouble(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getDouble failed: Row out of bounds.")
        }
        @Expect(resultSet.goToFirstRow(),true)
        @Expect(resultSet.getString(0),"300")
        @Expect(resultSet.getDouble(0), 300.0)
        @Expect(resultSet.getDouble(1), 0.0)
        @Expect(resultSet.getDouble(2), 0.0)
        try {
            resultSet.getDouble(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
            @Expect(e.message, "ResultSet getDouble failed: Column out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1800
     * @tc.name      : test_resultset_18
     * @tc.desc      : test RelationStore test_resultset_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_18(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.getDouble(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getDouble failed: Row out of bounds.")
        }
        try {
            resultSet.getDouble(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getDouble failed: Row out of bounds.")
        }
        try {
            resultSet.getDouble(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet getDouble failed: Row out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_1900
     * @tc.name      : test_resultset_19
     * @tc.desc      : test RelationStore test_resultset_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_19(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.isColumnNull(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet isColumnNull failed: Row out of bounds.")
        }
        try {
            resultSet.isColumnNull(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet isColumnNull failed: Row out of bounds.")
        }
        @Expect(resultSet.goToFirstRow(),true)
        @Expect(resultSet.isColumnNull(0), false)
        @Expect(resultSet.isColumnNull(1), false)
        @Expect(resultSet.isColumnNull(2), true)
        try {
            resultSet.isColumnNull(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
            @Expect(e.message, "ResultSet isColumnNull failed: Column out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_2000
     * @tc.name      : test_resultset_20
     * @tc.desc      : test RelationStore test_resultset_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_20(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        try {
            resultSet.isColumnNull(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet isColumnNull failed: Row out of bounds.")
        }
        try {
            resultSet.isColumnNull(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet isColumnNull failed: Row out of bounds.")
        }
        try {
            resultSet.isColumnNull(3)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012)
            @Expect(e.message, "ResultSet isColumnNull failed: Row out of bounds.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_ResultSet_all_15_2100
     * @tc.name      : test_resultset_21
     * @tc.desc      : test RelationStore test_resultset_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultset_21(): Unit {
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet.isClosed, false)
        resultSet.close()
        @Expect(resultSet.isClosed, true)
        let predicates1 = RdbPredicates("EMPLOYEE")
        predicates1
            .equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
            .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        let resultSet1 = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE"])
        @Expect(resultSet1.isClosed, false)
        resultSet1.close()
        @Expect(resultSet1.isClosed, true)
    }
}

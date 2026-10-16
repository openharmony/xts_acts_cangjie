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
import std.collection.{HashMap}
import ohos.data.relational_store.RelationalStoreSecurityLevel
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import ohos.business_exception.BusinessException

@Test
class test_result_set_api {

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_columnCount_0100
     * @tc.name      : test_ResultSet_columnCount
     * @tc.desc      : test ResultSet columnCount property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_columnCount() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db_colcount")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db_colcount")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER, name TEXT, value INTEGER)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        let columnCount = resultSet.columnCount
        @Expect(columnCount, 3)
        
        resultSet.close()
        deleteRdbStore(context, "test_db_colcount")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_rowIndex_0100
     * @tc.name      : test_ResultSet_rowIndex
     * @tc.desc      : test ResultSet rowIndex property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_rowIndex() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        let initialIndex = resultSet.rowIndex
        @Expect(initialIndex, -1)
        
        resultSet.close()
        deleteRdbStore(context, "test_db")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_isAtFirstRow_0100
     * @tc.name      : test_ResultSet_isAtFirstRow
     * @tc.desc      : test ResultSet isAtFirstRow property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_isAtFirstRow() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("id", RelationalStoreValueType.Integer(1))
        rdbStore.insert("test_table", values)
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        resultSet.goToFirstRow()
        @Expect(resultSet.isAtFirstRow)
        
        resultSet.close()
        deleteRdbStore(context, "test_db")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_isAtLastRow_0100
     * @tc.name      : test_ResultSet_isAtLastRow
     * @tc.desc      : test ResultSet isAtLastRow property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_isAtLastRow() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("id", RelationalStoreValueType.Integer(1))
        rdbStore.insert("test_table", values)
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        resultSet.goToFirstRow()
        @Expect(resultSet.isAtLastRow)        
        resultSet.close()
        deleteRdbStore(context, "test_db")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_isEnded_0100
     * @tc.name      : test_ResultSet_isEnded
     * @tc.desc      : test ResultSet isEnded property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_isEnded() {
        let context = getAbilityContext()
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db1")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        @Expect(resultSet.isEnded, true)        
        resultSet.close()    
        deleteRdbStore(context, "test_db1")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_isStarted_0100
     * @tc.name      : test_ResultSet_isStarted
     * @tc.desc      : test ResultSet isStarted property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_isStarted() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        @Expect(resultSet.isStarted, false)
        
        resultSet.close()
        deleteRdbStore(context, "test_db")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_isClosed_0100
     * @tc.name      : test_ResultSet_isClosed
     * @tc.desc      : test ResultSet isClosed property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_isClosed() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        @Expect(resultSet.isClosed, false)
        
        resultSet.close()
        @Expect(resultSet.isClosed)
        
        deleteRdbStore(context, "test_db")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_getColumnIndex_0100
     * @tc.name      : test_ResultSet_getColumnIndex
     * @tc.desc      : test ResultSet getColumnIndex method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_getColumnIndex() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db_getcolidx")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db_getcolidx")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER, name TEXT, value REAL)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        let idIndex = resultSet.getColumnIndex("id")
        @Expect(idIndex, 0)
        
        let nameIndex = resultSet.getColumnIndex("name")
        @Expect(nameIndex, 1)
        
        let valueIndex = resultSet.getColumnIndex("value")
        @Expect(valueIndex, 2)
        
        resultSet.close()
        deleteRdbStore(context, "test_db_getcolidx")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_getColumnName_0100
     * @tc.name      : test_ResultSet_getColumnName
     * @tc.desc      : test ResultSet getColumnName method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_getColumnName() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db_getcolname")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db_getcolname")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER, name TEXT, value REAL)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        @Expect(resultSet.getColumnName(0), "id")
        @Expect(resultSet.getColumnName(1), "name")
        @Expect(resultSet.getColumnName(2), "value")
        
        resultSet.close()
        deleteRdbStore(context, "test_db_getcolname")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResultSet_Test_close_0100
     * @tc.name      : test_ResultSet_close
     * @tc.desc      : test ResultSet close method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ResultSet_close() {
        let context = getAbilityContext()
        deleteRdbStore(context, "test_db")
        let config = StoreConfig( RelationalStoreSecurityLevel.S1, name: "test_db")
        let rdbStore = getRdbStore(context, config)
        rdbStore.executeSql("CREATE TABLE IF NOT EXISTS test_table (id INTEGER)")
        
        let predicates = RdbPredicates("test_table")
        let resultSet = rdbStore.query(predicates)
        
        @Expect(resultSet.isClosed, false)
        
        resultSet.close()
        @Expect(resultSet.isClosed)
        
        deleteRdbStore(context, "test_db")
    }
}
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


internal import ohos.base.*
import std.unittest.testmacro.*
internal import ohos.data.relational_store.Progress as StoreProcess
internal import ohos.data.relational_store.SyncMode as RSyncMode
internal import ohos.data.relational_store.SubscribeType as RSubscribeType
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.HashMap
import ohos.callback_invoke.{CallbackObject, Callback0Argument}
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import ohos.data.relational_store.*
import ohos.callback_invoke.Callback1Argument
import std.collection.*

var store: Option<RdbStore> = None
var tag = 0

@Test
class test_KVStore_Value {
    let rdbPridecates = RdbPredicates("test")
    let asset = Asset("info1", "uri1", "path1", "0:00", "8:00", "100MB")
    let allValueTypes = [
        RelationalStoreValueType.Null,
        RelationalStoreValueType.Integer(1),
        RelationalStoreValueType.Double(1.1),
        RelationalStoreValueType.StringValue("1"),
        RelationalStoreValueType.Boolean(false),
        RelationalStoreValueType.Uint8Array([1, 2]),
        RelationalStoreValueType.AssetEnum(asset),
        RelationalStoreValueType.AssetsEnum([asset])
    ]
    override func beforeAll(): Unit {
        store = getRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "RdbTest1.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: true, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        let rdbStore = store.getOrThrow()
        sleepFor(1.second)
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID INT NOT NULL, NAME VARCHAR(255) NOT NULL, AGE INT, SALARY FLOAT NOT NULL, CODES TINYINT(1) NOT NULL, PRIMARY KEY (ID))")

        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        values.add("SALARY", RelationalStoreValueType.Double(100.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))

        rdbStore.insert("EMPLOYEE", values)

        values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(2))
        values.add("NAME", RelationalStoreValueType.StringValue("Peter"))
        values.add("AGE", RelationalStoreValueType.Integer(19))
        values.add("SALARY", RelationalStoreValueType.Double(1000.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))

        rdbStore.insert("EMPLOYEE", values)

        values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(3))
        values.add("NAME", RelationalStoreValueType.StringValue("Lily"))
        values.add("AGE", RelationalStoreValueType.Integer(20))
        values.add("SALARY", RelationalStoreValueType.Double(10000.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))

        rdbStore.insert("EMPLOYEE", values)
    }

    override func afterAll(): Unit {  
        let rdbStore = store.getOrThrow()
        deleteRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "RdbTest1.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: true, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        getRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "RdbTest1.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: true, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        deleteRdbStore(getAbilityContext(), "RdbTest1.db")
        GC()
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_0
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Functi   
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_0() { 
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.inValues("NAME", [
            RelationalStoreValueType.StringValue("Lisa"),
            RelationalStoreValueType.StringValue("Peter"),
            RelationalStoreValueType.StringValue("Lily")
        ])        
        let resultSet = rdbStore.query(predicates)
        let count = resultSet.rowCount
        @Expect(count,  3)          
        resultSet.close() 
    }


    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_1
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Functi   
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_1() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.inValues("AGE", [
            RelationalStoreValueType.Integer(18),
            RelationalStoreValueType.Integer(19),
            RelationalStoreValueType.Integer(20)
        ])
        
        let resultSet = rdbStore.query(predicates)
        let count = resultSet.rowCount
        @Expect(count,  3)
    }


    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_2
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Functi   
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_2() {
        // 查询NAME在["Lisa", "Rose"]中且IS_ACTIVE为true的记录
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.inValues("NAME", [
            RelationalStoreValueType.StringValue("Lisa"),
            RelationalStoreValueType.StringValue("Lily")
        ])
        .and()
        .equalTo("CODES", RelationalStoreValueType.Boolean(true))
        
        let resultSet = rdbStore.query(predicates)
        let count = resultSet.rowCount
        @Expect(count,  2)
        
        resultSet.close()    
    }
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_3
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Functi   
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_3() {
            rdbPridecates.inValues("/0", Array<RelationalStoreValueType>())
            @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_null_2
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_null_2() {        
            rdbPridecates.inValues("test", [])
            @Expect(true)
    }
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_null_3
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_null_3() {        
            rdbPridecates.inValues("test", [])
            @Expect(true)
    }    
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in_4
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_4() {  
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.inValues("AGE", [
            RelationalStoreValueType.Integer(2),
            RelationalStoreValueType.StringValue("30"),  // 字符串类型，但AGE是整型字段
            RelationalStoreValueType.Integer(3)
        ])        
        let resultSet = rdbStore.query(predicates) 
        let count = resultSet.rowCount 
        @Expect(count,  0)    
        resultSet.close()
}


    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_invalue_0
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_invalue_0() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.inValues("NAME", [RelationalStoreValueType.StringValue("Peter")])
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("P"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        values.add("SALARY", RelationalStoreValueType.Double(9999.513))

        rdbStore.update(values, predicates)
        let resultSet = rdbStore.query(
            RdbPredicates("EMPLOYEE").inValues("NAME", [RelationalStoreValueType.StringValue("P")]),
            columns: ["ID", "NAME", "AGE", "SALARY"])
        @Expect(resultSet.goToNextRow())
        @Expect(resultSet.getString(resultSet.getColumnIndex("NAME")), "P")
    }


    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_not_value_1
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_not_value_1() {  
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("NAME", [
            RelationalStoreValueType.StringValue("Lisa")
        ])        
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME"])
        let count = resultSet.rowCount
        @Expect(count, 2)        
        resultSet.close()  
    }        
          
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_not_value_2
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_not_value_2() {  
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("NAME", [
            RelationalStoreValueType.StringValue("Lisa")
        ])        
        let resultSet = rdbStore.query(predicates, columns: ["NAME"])
        let count = resultSet.rowCount
        @Expect(count, 2)        
        resultSet.close() 
    }          



    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2600
     * @tc.name      : test_notInValues_3
     * @tc.desc      : test relational_store notInValues
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notInValues_3() {
        rdbPridecates.notInValues("test", allValueTypes)
        rdbPridecates.notInValues("test", Array<RelationalStoreValueType>())
        rdbPridecates.notInValues("/0", Array<RelationalStoreValueType>())
        @Expect(true)
    }
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_not_value_4
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_not_value_4() { 
        let rdbStore = store.getOrThrow() 
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("AGE", [
            RelationalStoreValueType.Integer(18),
            RelationalStoreValueType.Integer(19)
        ])
        let resultSet = rdbStore.query(predicates, columns: ["NAME", "AGE"])
        let count = resultSet.rowCount
        @Expect(count, 2)        
        resultSet.close() 
    }           
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_not_value_5
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_not_value_5() {  
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("AGE", [
            RelationalStoreValueType.Integer(22)
        ])
        let resultSet = rdbStore.query(predicates, columns: ["NAME", "AGE"])
        let count = resultSet.rowCount
        @Expect(count, 3) 
        resultSet.close()   
 
}

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_not_value_6
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_not_value_6() { 
        let rdbStore = store.getOrThrow() 
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("AGE", [
            RelationalStoreValueType.Integer(22)
        ])
        let resultSet = rdbStore.query(predicates, columns: ["NAME", "AGE"])
        let count = resultSet.rowCount
        @Expect(count, 3) 
        resultSet.close()  
 
}  
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : testNotInValuesNonExistentField
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testNotInValuesNonExistentField() {
        Hilog.info(0, "RdbTest", "测试用例:测试不存在的字段")
        let rdbStore = store.getOrThrow() 
        
        // 尝试查询不存在的字段
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.notInValues("NON_EXISTENT_FIELD", [
            RelationalStoreValueType.StringValue("test")
        ])        
        let resultSet = rdbStore.query(predicates)
        let count = resultSet.rowCount
        @Expect(count, -1)
        resultSet.close()
    }

    }


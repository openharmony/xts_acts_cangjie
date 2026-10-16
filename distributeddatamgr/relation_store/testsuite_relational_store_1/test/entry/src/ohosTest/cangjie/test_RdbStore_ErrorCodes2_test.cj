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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.data.relational_store.*
import ohos.data.relational_store.RelationalStoreSecurityLevel
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import std.collection.{HashMap}
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog

@Test
class test_RdbStore_ErrorCodes2 {
    func createStore(storeId: String, readOnly: Bool): RdbStore {
        let ctx = getAbilityContext()
        return getRdbStore(ctx,
            StoreConfig(RelationalStoreSecurityLevel.S1, name: storeId, isReadOnly: readOnly))
    }

    func deleteStore(storeId: String): Unit {
        let ctx = getAbilityContext()
        deleteRdbStore(ctx, storeId)
    }



    /*
     * @tc.number    : Sub_Cangjie_relational_store_insert_14800000_emptyTable
     * @tc.name      : test_insert_emptyTable
     * @tc.desc      : insert传入空表名触发14800000 (E_EMPTY_TABLE_NAME)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_insert_emptyTable(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_insert_14800000_emptyTable begins.")
        let storeId = "test_14800000_emptyTable_insert.db"
        let store = createStore(storeId, false)
        store.executeSql("CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("name", RelationalStoreValueType.StringValue("test"))
        try {
            store.insert("", values)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_insert_14800000_emptyTable ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_insert_14800000_emptyBucket
     * @tc.name      : test_insert_14800000_emptyBucket
     * @tc.desc      : insert传入空ValuesBucket触发14800000 (E_EMPTY_VALUES_BUCKET)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_insert_14800000_emptyBucket(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_insert_14800000_emptyBucket begins.")
        let storeId = "test_14800000_emptyBucket_insert.db"
        let store = createStore(storeId, false)
        store.executeSql("CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
        var values = HashMap<String, RelationalStoreValueType>()
        try {
            store.insert("employee", values)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800000i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_insert_14800000_emptyBucket ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_update_14800000_emptyBucket
     * @tc.name      : test_update_14800000_emptyBucket
     * @tc.desc      : update传入空ValuesBucket触发14800000 (E_EMPTY_VALUES_BUCKET)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_14800000_emptyBucket(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_update_14800000_emptyBucket begins.")
        let storeId = "test_14800000_emptyBucket_update.db"
        let store = createStore(storeId, false)
        store.executeSql("CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
        var values = HashMap<String, RelationalStoreValueType>()
        let predicates = RdbPredicates("employee")
        try {
            store.update(values, predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800000i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_update_14800000_emptyBucket ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_relational_store_insert_14800021_readonly
     * @tc.name      : test_insert_14800021_noTable
     * @tc.desc      : 只读store insert不存在的表触发14800021 (no such table)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_insert_14800021_noTable(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_insert_14800021_noTable begins.")
        let storeId = "test_14800021_insert.db"
        let store = createStore(storeId, false)
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("name", RelationalStoreValueType.StringValue("test"))
        try {
            store.insert("employee", values)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_insert_14800021_noTable ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_update_14800021_noTable
     * @tc.name      : test_update_14800021_noTable
     * @tc.desc      : 读写store update不存在的表触发14800021 (no such table)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_14800021_noTable(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_update_14800021_noTable begins.")
        let storeId = "test_14800021_update.db"
        let store = createStore(storeId, false)
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("name", RelationalStoreValueType.StringValue("test"))
        let predicates = RdbPredicates("employee")
        try {
            store.update(values, predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_update_14800021_noTable ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_delete_14800021_noTable
     * @tc.name      : test_delete_14800021_noTable
     * @tc.desc      : 读写store delete不存在的表触发14800021 (no such table)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_14800021_noTable(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_delete_14800021_noTable begins.")
        let storeId = "test_14800021_delete.db"
        let store = createStore(storeId, false)
        let predicates = RdbPredicates("employee")
        try {
            store.delete(predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_delete_14800021_noTable ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_executeSql_14800021_noTable
     * @tc.name      : test_executeSql_14800021_noTable
     * @tc.desc      : 读写store executeSql操作不存在的表触发14800021 (no such table)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_executeSql_14800021_noTable(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_executeSql_14800021_noTable begins.")
        let storeId = "test_14800021_executeSql.db"
        let store = createStore(storeId, false)
        try {
            store.executeSql("INSERT INTO employee(name) VALUES('test')")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_executeSql_14800021_noTable ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_relational_store_restore_14800021_readonly
     * @tc.name      : test_restore_14800010_readonly
     * @tc.desc      : 只读store restore触发14800021 (no such table at native level)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_restore_14800010_readonly(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_restore_14800021_readonly begins.")
        let storeId = "test_14800010_restore.db"
        let store = createStore(storeId, true)
        try {
            store.restore("restore_test.db")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800010i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_restore_14800021_readonly ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_executeSql_14800031
     * @tc.name      : test_executeSql_14800031
     * @tc.desc      : executeSql插入超过1GB的zeroblob触发14800031 (E_SQLITE_TOOBIG)
     * @tc.size      : LargeTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_executeSql_14800031(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_executeSql_14800031 begins.")
        let storeId = "test_14800031_executeSql.db"
        let store = createStore(storeId, false)
        store.executeSql("CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, data BLOB)")
        try {
            store.executeSql("INSERT INTO employee(data) VALUES(zeroblob(1100000000))")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800031i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_executeSql_14800031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_insert_14800033
     * @tc.name      : test_insert_14800033
     * @tc.desc      : insert往INTEGER列插入字符串触发14800033 (E_SQLITE_MISMATCH)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_insert_14800033(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_insert_14800033 begins.")
        let storeId = "test_14800033_insert.db"
        let store = createStore(storeId, false)
        store.executeSql(
            "CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, age INTEGER, salary REAL)")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("id", RelationalStoreValueType.StringValue("abc"))
        values.add("name", RelationalStoreValueType.StringValue("Jim"))
        try {
            store.insert("employee", values)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800033i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_insert_14800033 ends.")
    }

    }
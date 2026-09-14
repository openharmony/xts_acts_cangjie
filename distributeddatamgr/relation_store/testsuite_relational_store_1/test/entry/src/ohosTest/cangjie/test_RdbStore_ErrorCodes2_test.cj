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
    func createStore(storeId: String): RdbStore {
        let ctx = getAbilityContext()
        return getRdbStore(ctx, StoreConfig(RelationalStoreSecurityLevel.S1, name: storeId))
    }

    func deleteStore(storeId: String): Unit {
        let ctx = getAbilityContext()
        deleteRdbStore(ctx, storeId)
    }

    let CREATE_TABLE = "CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, age INTEGER, salary REAL)"

    /*
     * @tc.number    : Sub_Cangjie_relational_store_insert_14800047
     * @tc.name      : test_insert_14800047
     * @tc.desc      : insert 事务内插入 16+ 条 30MB 记录导致 WAL 超限触发 14800047
     * @tc.size      : LargeTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_insert_14800047(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_insert_14800047 begins.")
        let storeId = "test_14800047_insert.db"
        let store = createStore(storeId)
        store.executeSql(CREATE_TABLE)
        let largeValue = "a" * (1024 * 1024 * 30)
        var hitError = false
        store.beginTransaction()
        for (i in 0..20) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("name", RelationalStoreValueType.StringValue(largeValue))
            try {
                store.insert("employee", values)
            } catch (e: BusinessException) {
                Hilog.info(0, "cangjietest", "insert fail at i=${i}, code=${e.code}")
                @Expect(e.code, 14800047i32)
                hitError = true
                break
            }
        }
        try {
            store.commit()
        } catch (e: Exception) {
            store.rollBack()
        }
        @Expect(hitError, true)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_insert_14800047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_update_14800047
     * @tc.name      : test_update_14800047
     * @tc.desc      : update 事务内更新大数据导致 WAL 超限触发 14800047
     * @tc.size      : LargeTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_14800047(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_update_14800047 begins.")
        let storeId = "test_14800047_update.db"
        let store = createStore(storeId)
        store.executeSql(CREATE_TABLE)
        let largeValue = "a" * (1024 * 1024 * 30)
        store.beginTransaction()
        for (i in 0..20) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("name", RelationalStoreValueType.StringValue(largeValue))
            try {
                store.insert("employee", values)
            } catch (e: Exception) {
                break
            }
        }
        var hitError = false
        try {
            var updateValues = HashMap<String, RelationalStoreValueType>()
            updateValues.add("name", RelationalStoreValueType.StringValue(largeValue))
            let predicates = RdbPredicates("employee")
            store.update(updateValues, predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "update fail, code=${e.code}")
            @Expect(e.code, 14800047i32)
            hitError = true
        } catch (e: Exception) {
            ()
        }
        try {
            store.rollBack()
        } catch (e: Exception) {
            ()
        }
        @Expect(hitError, true)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_update_14800047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_delete_14800047
     * @tc.name      : test_delete_14800047
     * @tc.desc      : delete 事务内删除导致 WAL 超限触发 14800047
     * @tc.size      : LargeTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_14800047(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_delete_14800047 begins.")
        let storeId = "test_14800047_delete.db"
        let store = createStore(storeId)
        store.executeSql(CREATE_TABLE)
        let largeValue = "a" * (1024 * 1024 * 30)
        store.beginTransaction()
        for (i in 0..20) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("name", RelationalStoreValueType.StringValue(largeValue))
            try {
                store.insert("employee", values)
            } catch (e: Exception) {
                break
            }
        }
        var hitError = false
        try {
            let predicates = RdbPredicates("employee")
            store.delete(predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "delete fail, code=${e.code}")
            @Expect(e.code, 14800047i32)
            hitError = true
        } catch (e: Exception) {
            ()
        }
        try {
            store.rollBack()
        } catch (e: Exception) {
            ()
        }
        @Expect(hitError, true)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_delete_14800047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_executeSql_14800047
     * @tc.name      : test_executeSql_14800047
     * @tc.desc      : executeSql 事务内执行大数据写入导致 WAL 超限触发 14800047
     * @tc.size      : LargeTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_executeSql_14800047(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_executeSql_14800047 begins.")
        let storeId = "test_14800047_executeSql.db"
        let store = createStore(storeId)
        store.executeSql(CREATE_TABLE)
        let largeValue = "a" * (1024 * 1024 * 30)
        store.beginTransaction()
        for (i in 0..20) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("name", RelationalStoreValueType.StringValue(largeValue))
            try {
                store.insert("employee", values)
            } catch (e: Exception) {
                break
            }
        }
        var hitError = false
        try {
            store.executeSql("INSERT INTO employee(name) VALUES('${largeValue}')")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "executeSql fail, code=${e.code}")
            @Expect(e.code, 14800047i32)
            hitError = true
        } catch (e: Exception) {
            ()
        }
        try {
            store.rollBack()
        } catch (e: Exception) {
            ()
        }
        @Expect(hitError, true)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_executeSql_14800047 ends.")
    }
}

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

/*
 * 例外说明（无法稳定触发的错误码）：
 * - 14800014: RdbStore 无 close() 方法，无法通过"close 后调用"触发，全部方法标注为例外
 * - 14800021: beginTransaction/commit/rollBack 不引用表名，无法通过"对不存在的表操作"触发
 * - 14800032: delete 不插入数据无法触发约束违反；beginTransaction/commit/rollBack/backup/restore 不执行带约束的 SQL，以上方法采用防御性用例
 * - 14800033: delete 不插入数据；beginTransaction/commit/rollBack/backup/restore 无类型参数，以上方法采用防御性用例
 * - 14800050: emit/on/off 订阅服务，模拟器可能支持导致不抛异常
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
import ohos.callback_invoke.{Callback0Argument}
import ohos.file.fs
import ohos.file.fs.FileIo
import kit.PerformanceAnalysisKit.Hilog

@Test
class test_RdbStore_ErrorCodes {
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
     * @tc.number    : Sub_Cangjie_relational_store_insert_14800033
     * @tc.name      : test_insert_14800033
     * @tc.desc      : insert 向 INTEGER PRIMARY KEY 列插入字符串触发 14800033
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
        store.executeSql("CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, age INTEGER, salary REAL)")
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

    /*
     * @tc.number    : Sub_Cangjie_relational_store_delete_14800021
     * @tc.name      : test_delete_14800021
     * @tc.desc      : delete 对不存在的表操作触发 14800021
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_14800021(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_delete_14800021 begins.")
        let storeId = "test_14800021_delete.db"
        let store = createStore(storeId, false)
        store.executeSql("CREATE TABLE IF NOT EXISTS employee (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, age INTEGER, salary REAL)")
        let predicates = RdbPredicates("NON_EXISTENT_TABLE")
        try {
            store.delete(predicates)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021i32)
        }
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_delete_14800021 ends.")
    }
}

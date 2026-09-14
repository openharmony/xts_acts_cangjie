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
class test_ResultSet_ErrorCodes {
    func createStore(storeId: String, readOnly: Bool): RdbStore {
        let ctx = getAbilityContext()
        return getRdbStore(ctx, StoreConfig(RelationalStoreSecurityLevel.S1, name: storeId, isReadOnly: readOnly))
    }

    func deleteStore(storeId: String): Unit {
        let ctx = getAbilityContext()
        deleteRdbStore(ctx, storeId)
    }

    func setupT1(store: RdbStore): Unit {
        store.executeSql("CREATE TABLE IF NOT EXISTS T1(id INTEGER, name TEXT)")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("id", RelationalStoreValueType.Integer(1))
        values.add("name", RelationalStoreValueType.StringValue("test"))
        store.insert("T1", values)
    }

    func queryAll(store: RdbStore): ResultSet {
        let predicates = RdbPredicates("T1")
        return store.query(predicates)
    }

    func queryEmpty(store: RdbStore): ResultSet {
        let predicates = RdbPredicates("T1")
        predicates.equalTo("id", RelationalStoreValueType.Integer(999999))
        return store.query(predicates)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getColumnName_14800014
     * @tc.name      : test_getColumnName_14800014
     * @tc.desc      : getColumnName 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getColumnName_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getColumnName_14800014 begins.")
        let storeId = "rs_getColumnName_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getColumnName(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getColumnName_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goTo_14800014
     * @tc.name      : test_goTo_14800014
     * @tc.desc      : goTo 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goTo_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goTo_14800014 begins.")
        let storeId = "rs_goTo_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.goTo(1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goTo_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goToRow_14800014
     * @tc.name      : test_goToRow_14800014
     * @tc.desc      : goToRow 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goToRow_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goToRow_14800014 begins.")
        let storeId = "rs_goToRow_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.goToRow(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goToRow_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goToFirstRow_14800014
     * @tc.name      : test_goToFirstRow_14800014
     * @tc.desc      : goToFirstRow 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goToFirstRow_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goToFirstRow_14800014 begins.")
        let storeId = "rs_goToFirstRow_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.goToFirstRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goToFirstRow_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goToFirstRow_14800021
     * @tc.name      : test_goToFirstRow_14800021
     * @tc.desc      : goToFirstRow 在非法状态(表已删除)下调用触发 14800021 通用错误
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goToFirstRow_14800021(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goToFirstRow_14800021 begins.")
        let storeId = "rs_goToFirstRow_14800021.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        store.executeSql("DROP TABLE T1")
        try {
            resultSet.goToFirstRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800021i32)
        }
        resultSet.close()
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goToFirstRow_14800021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goToLastRow_14800014
     * @tc.name      : test_goToLastRow_14800014
     * @tc.desc      : goToLastRow 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goToLastRow_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goToLastRow_14800014 begins.")
        let storeId = "rs_goToLastRow_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.goToLastRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goToLastRow_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goToNextRow_14800014
     * @tc.name      : test_goToNextRow_14800014
     * @tc.desc      : goToNextRow 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goToNextRow_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goToNextRow_14800014 begins.")
        let storeId = "rs_goToNextRow_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.goToNextRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goToNextRow_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_goToPreviousRow_14800014
     * @tc.name      : test_goToPreviousRow_14800014
     * @tc.desc      : goToPreviousRow 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goToPreviousRow_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_goToPreviousRow_14800014 begins.")
        let storeId = "rs_goToPreviousRow_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.goToPreviousRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_goToPreviousRow_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getBlob_14800014
     * @tc.name      : test_getBlob_14800014
     * @tc.desc      : getBlob 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getBlob_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getBlob_14800014 begins.")
        let storeId = "rs_getBlob_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getBlob(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getBlob_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getString_14800014
     * @tc.name      : test_getString_14800014
     * @tc.desc      : getString 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getString_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getString_14800014 begins.")
        let storeId = "rs_getString_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getString(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getString_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getLong_14800014
     * @tc.name      : test_getLong_14800014
     * @tc.desc      : getLong 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getLong_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getLong_14800014 begins.")
        let storeId = "rs_getLong_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getLong(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getLong_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getDouble_14800014
     * @tc.name      : test_getDouble_14800014
     * @tc.desc      : getDouble 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getDouble_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getDouble_14800014 begins.")
        let storeId = "rs_getDouble_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getDouble(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getDouble_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getAsset_14800012
     * @tc.name      : test_getAsset_14800012
     * @tc.desc      : getAsset 在空结果集上调用触发 14800012
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getAsset_14800012(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getAsset_14800012 begins.")
        let storeId = "rs_getAsset_14800012.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryEmpty(store)
        try {
            resultSet.getAsset(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012i32)
        }
        resultSet.close()
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getAsset_14800012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getAsset_14800014
     * @tc.name      : test_getAsset_14800014
     * @tc.desc      : getAsset 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getAsset_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getAsset_14800014 begins.")
        let storeId = "rs_getAsset_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getAsset(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getAsset_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getAssets_14800012
     * @tc.name      : test_getAssets_14800012
     * @tc.desc      : getAssets 在空结果集上调用触发 14800012
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getAssets_14800012(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getAssets_14800012 begins.")
        let storeId = "rs_getAssets_14800012.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryEmpty(store)
        try {
            resultSet.getAssets(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012i32)
        }
        resultSet.close()
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getAssets_14800012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getAssets_14800014
     * @tc.name      : test_getAssets_14800014
     * @tc.desc      : getAssets 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getAssets_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getAssets_14800014 begins.")
        let storeId = "rs_getAssets_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getAssets(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getAssets_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getRow_14800012
     * @tc.name      : test_getRow_14800012
     * @tc.desc      : getRow 在空结果集上调用触发 14800012
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getRow_14800012(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getRow_14800012 begins.")
        let storeId = "rs_getRow_14800012.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryEmpty(store)
        try {
            resultSet.getRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800012i32)
        }
        resultSet.close()
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getRow_14800012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_getRow_14800014
     * @tc.name      : test_getRow_14800014
     * @tc.desc      : getRow 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getRow_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getRow_14800014 begins.")
        let storeId = "rs_getRow_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.getRow()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_getRow_14800014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_ResultSet_isColumnNull_14800014
     * @tc.name      : test_isColumnNull_14800014
     * @tc.desc      : isColumnNull 在 resultSet close 后调用触发 14800014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isColumnNull_14800014(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_isColumnNull_14800014 begins.")
        let storeId = "rs_isColumnNull_14800014.db"
        let store = createStore(storeId, false)
        setupT1(store)
        let resultSet = queryAll(store)
        resultSet.close()
        try {
            resultSet.isColumnNull(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800014i32)
        }
        deleteRdbStore(getAbilityContext(), storeId)
        deleteStore(storeId)
        Hilog.info(0, "cangjietest", "testcase test_isColumnNull_14800014 ends.")
    }
}

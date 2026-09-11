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

import ohos_app_cangjie_entry_test.unittest_support.registerTestSuite

private let register = testsuite()

func testsuite() {
    registerTestSuite {Test_getRow_18()}
    registerTestSuite {Test_getRdbStore_01()}
    registerTestSuite {Test_on_off_emit_17()}
    registerTestSuite {Test_ResultSet_all_15()}
    registerTestSuite {Test_asset_13()}
    registerTestSuite {Test_limitAs_offsetAs_groupBy_in_notIn_09()}
    registerTestSuite {Test_update_delete_11()}
    registerTestSuite {Test_like_glob_between_notBetween_06()}
    registerTestSuite {Test_beginTransaction()}
    registerTestSuite {Test_orderByAsc_orderByDesc_distinct_08()}
    registerTestSuite {Test_executeSql_14()}
    registerTestSuite {Test_deleteRdbStore_16()}
    registerTestSuite {Test_or_and_beginWrap_endWrap_04()}
    registerTestSuite {Test_contains()}
    registerTestSuite {Test_equalTo_notEqualTo_03()}
    registerTestSuite {Test_insert_batchInsert_10()}
    registerTestSuite {Test_greaterThan_lessThan_orEqualTo_07()}
    registerTestSuite {Test_RdbPredicates_init_02()}
    registerTestSuite {test_RdbStore_ErrorCodes()}
    registerTestSuite {test_RdbStore_ErrorCodes2()}
    registerTestSuite {test_ResultSet_ErrorCodes()}
}

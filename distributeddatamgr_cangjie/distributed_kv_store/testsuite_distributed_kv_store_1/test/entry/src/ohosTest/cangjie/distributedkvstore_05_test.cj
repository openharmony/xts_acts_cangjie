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

internal import kit.PerformanceAnalysisKit.*
internal import ohos.base.*
internal import std.collection.*
import std.unittest.testmacro.*
import ohos.data.distributed_kv_store.{ Entry as KVEntry, DistributedKVStore, KVManagerConfig, Query}
//import kit.ArkData.*
import ohos.data.distributed_kv_store.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.{BusinessException}

@Test
class Test_distributed_kv_store_error {
    let bundleName = "com.example.myapplication"
    var _kvManager: ?KVManager = None
    prop kvManager: KVManager {
        get() {
            match (_kvManager) {
                case Some(kvManager) => kvManager
                case None =>
                    let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(getAbilityContext(), bundleName))
                    _kvManager = kvManager
                    kvManager
            }
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_error_0500
    * @tc.name      : test_closeKVStore_error
    * @tc.desc      : test distributed_kv_store closeKVStore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_closeKVStore_error() {
        let kvstoreName = "myStoreId"
        try {
            kvManager.closeKVStore("", "12345")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_error_0600
    * @tc.name      : test_deleteKVStore_error
    * @tc.desc      : test distributed_kv_store deleteKVStore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deleteKVStore_error() {
        let kvstoreName = "myStoreId"
        try {
            kvManager.deleteKVStore("error", kvstoreName)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_error_0700
    * @tc.name      : test_getAllKVStoreId_error
    * @tc.desc      : test distributed_kv_store getAllKVStoreId
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getAllKVStoreId_error() {
        let kvstoreName = "myStoreId"
        try {
            var list = kvManager.getAllKVStoreId("error")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 202)
        }
    }
}

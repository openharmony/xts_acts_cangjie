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
import std.collection.*
import ohos.base.*
import ohos.data.distributed_kv_store.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}

@Test
class test_KVStore_ErrorCodes {
    let bundleName = "com.example.myapplication"

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_putBatch_15100005
     * @tc.name      : test_putBatch_15100005
     * @tc.desc      : putBatch 在 closeKVStore 后再调用，触发 15100005（存储已关闭）
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putBatch_15100005(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_putBatch_15100005 begins.")
        var context = getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, bundleName))
        let storeId = "test_errorcode_15100005_putBatch"
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>(storeId, opt)
        store.put("key_001", KVValueType.StringValue("value_001"))
        kvManager.closeKVStore(bundleName, storeId)
        try {
            let entries: Array<Entry> = [
                Entry("closed_key_1", KVValueType.StringValue("v1")),
                Entry("closed_key_2", KVValueType.StringValue("v2"))
            ]
            store.putBatch(entries)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
        kvManager.deleteKVStore(bundleName, storeId)
        Hilog.info(0, "cangjietest", "testcase test_putBatch_15100005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_deleteBatch_15100005
     * @tc.name      : test_deleteBatch_15100005
     * @tc.desc      : deleteBatch 在 closeKVStore 后再调用，触发 15100005（存储已关闭）
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deleteBatch_15100005(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_deleteBatch_15100005 begins.")
        var context = getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, bundleName))
        let storeId = "test_errorcode_15100005_deleteBatch"
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>(storeId, opt)
        store.put("key_001", KVValueType.StringValue("value_001"))
        store.put("key_002", KVValueType.StringValue("value_002"))
        kvManager.closeKVStore(bundleName, storeId)
        try {
            let keys: Array<String> = ["key_001", "key_002"]
            store.deleteBatch(keys)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
        kvManager.deleteKVStore(bundleName, storeId)
        Hilog.info(0, "cangjietest", "testcase test_deleteBatch_15100005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_get_15100005
     * @tc.name      : test_get_15100005
     * @tc.desc      : get 在 closeKVStore 后再调用，触发 15100005（存储已关闭）
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_15100005(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_get_15100005 begins.")
        var context = getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, bundleName))
        let storeId = "test_errorcode_15100005_get"
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>(storeId, opt)
        store.put("key_001", KVValueType.StringValue("value_001"))
        kvManager.closeKVStore(bundleName, storeId)
        try {
            store.get("key_001")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
        kvManager.deleteKVStore(bundleName, storeId)
        Hilog.info(0, "cangjietest", "testcase test_get_15100005 ends.")
    }

}

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
import ohos_app_cangjie_entry.Global

@Test
class test_GetEntries_2 {
    func prepareTestData(store: DeviceKVStore): Unit {
        let existingEntries = store.getEntries("^")         
        for (entry in existingEntries) {
            store.delete(entry.key)
        }
        store.put("user_alice_profile", StringValue("Alice,25,Engineer"))
        store.put("user_bob_profile", StringValue("Bob,30,Doctor"))
        store.put("user_charlie_profile", StringValue("Charlie,22,Student"))
        store.put("user_david_profile", StringValue("David,35,Teacher"))
        store.put("user_eve_profile", StringValue("Eve,28,Designer"))
        store.put("product_laptop_price", Integer(999))
        store.put("product_phone_price", Integer(699))
        store.put("product_tablet_price", Integer(499))
        store.put("order_001_status", StringValue("shipped"))
        store.put("order_002_status", StringValue("pending"))
        store.put("order_003_status", StringValue("delivered"))
        store.put("metric_cpu_usage", Double(45.67))
        store.put("metric_memory_usage", Double(78.92))
        store.put("metric_disk_usage", Double(32.15))
        store.put("flag_enabled", Boolean(true))
        store.put("flag_active", Boolean(false))
    }
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_1
     * @tc.desc      : getEntries  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        prepareTestData(store)
        let query = Query()
        let entries = store.getEntries(query)
        let expectedCount = 16
        @Expect(entries.size, expectedCount)
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_2
     * @tc.desc      : getEntries  kv store successfully
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        prepareTestData(store)
        let prefixEntries = store.getEntries("user_")
        let query = Query()
        let queryEntries = store.getEntries(query)
        @Expect(queryEntries.size, 16)
        @Expect(prefixEntries.size, 5)
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_3
     * @tc.desc      : getEntries  kv store faild
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        prepareTestData(store)
        let query = Query()
        let entriesBefore = store.getEntries(query)
        Hilog.info(0x0000, "QueryTest", 
            "Before close: Found ${entriesBefore.size} entries")
        kvManager.closeKVStore("com.example.myapplication", "test_query_store")
        try {
            let entriesAfter = store.getEntries(query)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)  
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_stor
     * @tc.name      : TestCase_4
     * @tc.desc      : getEntries  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        let existingEntries = store.getEntries("")
        for (entry in existingEntries) {
            store.delete(entry.key)
        }
        let query = Query()
        let entries = store.getEntries(query)
        @Expect(entries.size, 0)
    }
}

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
import ohos.hilog.Hilog
import ohos.data.distributed_kv_store.*
import ohos.business_exception.{BusinessException}
import ohos_app_cangjie_entry.Global

@Test
class SingleKVStoreBatchTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_putBatch_001
     * @tc.name      : test_putBatch_basic
     * @tc.desc      : Test putBatch with basic entries
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putBatch_basic(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_basic begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_001", opt)
        let entries: Array<Entry> = [
            Entry("batch_key_1", StringValue("value1")),
            Entry("batch_key_2", Integer(42i32)),
            Entry("batch_key_3", Boolean(true))
        ]
        store.putBatch(entries)
        match (store.get("batch_key_1")) {
            case StringValue(s) => @Expect(s, "value1")
            case _ => @Expect(false)
        }
        match (store.get("batch_key_2")) {
            case Integer(i) => @Expect(i, 42i32)
            case _ => @Expect(false)
        }
        match (store.get("batch_key_3")) {
            case Boolean(b) => @Expect(b, true)
            case _ => @Expect(false)
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_001")
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_basic ends.")
    }

        /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_putBatch_001
     * @tc.name      : test_putBatch_basic1
     * @tc.desc      : Test putBatch with basic entries
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putBatch_basic1(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_basic begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_001", opt)
        let entries: Array<Entry> = [
            Entry("batch_key_1", StringValue("value1")),
            Entry("batch_key_2", Integer(42i32)),
            Entry("batch_key_3", Boolean(true))
        ]
        store.putBatch(entries)
        match (store.get("batch_key_1")) {
            case StringValue(s) => @Expect(s, "value1")
            case _ => @Expect(false)
        }
        match (store.get("batch_key_2")) {
            case Integer(i) => @Expect(i, 42i32)
            case _ => @Expect(false)
        }
        match (store.get("batch_key_3")) {
            case Boolean(b) => @Expect(b, true)
            case _ => @Expect(false)
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_001")
        try {
            store.putBatch(entries)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_basic ends.")
    }


        /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_putBatch_001
     * @tc.name      : test_putBatch_basic2
     * @tc.desc      : Test putBatch with basic entries
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putBatch_basic2(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_basic begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_001", opt)
        let entries: Array<Entry> = [
            Entry("batch_key_1", StringValue("value1")),
            Entry("batch_key_2", Integer(42i32)),
            Entry("batch_key_3", Boolean(true))
        ]
        store.putBatch(entries)
        match (store.get("batch_key_1")) {
            case StringValue(s) => @Expect(s, "value1")
            case _ => @Expect(false)
        }
        match (store.get("batch_key_2")) {
            case Integer(i) => @Expect(i, 42i32)
            case _ => @Expect(false)
        }
        match (store.get("batch_key_3")) {
            case Boolean(b) => @Expect(b, true)
            case _ => @Expect(false)
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_001")
        try {
            store.get("batch_key_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_basic ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_putBatch_002
     * @tc.name      : test_putBatch_large_batch
     * @tc.desc      : Test putBatch with large number of entries
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putBatch_large_batch(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_large_batch begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_002", opt)

        let entries = ArrayList<Entry>()
        for (i in 0..50) {
            entries.add(Entry("large_batch_key_${i}", Integer(Int32(i))))
        }
        store.putBatch(entries.toArray())
        for (i in 0..50) {
            match (store.get("large_batch_key_${i}")) {
                case Integer(val) => @Expect(val, Int32(i))
                case _ => @Expect(false)
            }
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_002")
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_large_batch ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_deleteBatch_001
     * @tc.name      : test_deleteBatch_basic
     * @tc.desc      : Test deleteBatch with basic keys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deleteBatch_basic(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_deleteBatch_basic begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_003", opt)

        let entries: Array<Entry> = [
            Entry("delete_key_1", StringValue("value1")),
            Entry("delete_key_2", StringValue("value2")),
            Entry("delete_key_3", StringValue("value3"))
        ]
        store.putBatch(entries)
        let keys: Array<String> = ["delete_key_1", "delete_key_2"]
        store.deleteBatch(keys)
        try {
            store.get("delete_key_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004i32)
        }

        try {
            store.get("delete_key_2")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004i32)
        }
        match (store.get("delete_key_3")) {
            case StringValue(s) => @Expect(s, "value3")
            case _ => @Expect(false)
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_003")
        Hilog.info(0u32, "cangjietest", "testcase test_deleteBatch_basic ends.")
    }

        /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_deleteBatch_001
     * @tc.name      : test_deleteBatch_basic1
     * @tc.desc      : Test deleteBatch with basic keys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deleteBatch_basic1(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_deleteBatch_basic begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_003", opt)

        let entries: Array<Entry> = [
            Entry("delete_key_1", StringValue("value1")),
            Entry("delete_key_2", StringValue("value2")),
            Entry("delete_key_3", StringValue("value3"))
        ]
        store.putBatch(entries)
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_003")
        try {
            let keys: Array<String> = ["delete_key_1", "delete_key_2"]
            store.deleteBatch(keys)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }

        Hilog.info(0u32, "cangjietest", "testcase test_deleteBatch_basic ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_deleteBatch_002
     * @tc.name      : test_deleteBatch_all_keys
     * @tc.desc      : Test deleteBatch with all keys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deleteBatch_all_keys(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_deleteBatch_all_keys begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_004", opt)
        let entries: Array<Entry> = [
            Entry("all_key_1", StringValue("value1")),
            Entry("all_key_2", StringValue("value2")),
            Entry("all_key_3", StringValue("value3"))
        ]
        store.putBatch(entries)
        let keys: Array<String> = ["all_key_1", "all_key_2", "all_key_3"]
        store.deleteBatch(keys)
        for (key in keys) {
            try {
                store.get(key)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 15100004i32)
            }
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_004")
        Hilog.info(0u32, "cangjietest", "testcase test_deleteBatch_all_keys ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_SingleKVStore_putBatch_deleteBatch_001
     * @tc.name      : test_putBatch_and_deleteBatch
     * @tc.desc      : Test putBatch followed by deleteBatch
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putBatch_and_deleteBatch(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_and_deleteBatch begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_005", opt)
        let entries1: Array<Entry> = [
            Entry("batch_key_a", StringValue("valueA")),
            Entry("batch_key_b", StringValue("valueB"))
        ]
        store.putBatch(entries1)
        let entries2: Array<Entry> = [
            Entry("batch_key_c", StringValue("valueC")),
            Entry("batch_key_d", StringValue("valueD"))
        ]
        store.putBatch(entries2)

        store.deleteBatch(["batch_key_a", "batch_key_c"])
        try {
            store.get("batch_key_a")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004i32)
        }
        match (store.get("batch_key_b")) {
            case StringValue(s) => @Expect(s, "valueB")
            case _ => @Expect(false)
        }
        try {
            store.get("batch_key_c")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004i32)
        }
        match (store.get("batch_key_d")) {
            case StringValue(s) => @Expect(s, "valueD")
            case _ => @Expect(false)
        }
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_005")
        Hilog.info(0u32, "cangjietest", "testcase test_putBatch_and_deleteBatch ends.")
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1000
    * @tc.name      : test_backup_restore1
    * @tc.desc      : test distributed_kv_store restore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_backup_restore1(): Unit {
        let fileName = "backfile"
        var strkey = "keyback"
        var strvalue = "keyback"
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_005", opt)
        store.put(strkey, KVValueType.StringValue(strvalue))
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_005")
        try {
            store.backup(fileName)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
    }
    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1000
    * @tc.name      : test_backup_restore2
    * @tc.desc      : test distributed_kv_store restore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_backup_restore2(): Unit {
        let fileName = "backfile"
        var strkey = "keyback"
        var strvalue = "keyback"
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<SingleKVStore>("test_batch_store_005", opt)
        store.put(strkey, KVValueType.StringValue(strvalue))
        store.backup(fileName)
        store.delete(strkey)
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_005")
        try {
            store.restore(fileName)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1100
    * @tc.name      : test_startTransaction1
    * @tc.desc      : test distributed_kv_store startTransaction
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_startTransaction1(): Unit {
        var strkey = "keyback"
        var strvalue = "keyback"
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S4)
        let kvStore = kvManager.getKVStore<SingleKVStore>("test_batch_store_005", opt)
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_005")
        try {
            kvStore.startTransaction()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
    }

   /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1100
    * @tc.name      : test_startTransaction2
    * @tc.desc      : test distributed_kv_store startTransaction
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_startTransaction2(): Unit {
        var strkey = "keyback"
        var strvalue = "keyback"
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S4)
        let kvStore = kvManager.getKVStore<SingleKVStore>("test_batch_store_005", opt)
        kvStore.startTransaction()
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_005")
        try {
            kvStore.rollback()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
    }

   /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1100
    * @tc.name      : test_startTransaction3
    * @tc.desc      : test distributed_kv_store startTransaction
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_startTransaction3(): Unit {
        var strkey = "keyback"
        var strvalue = "keyback"
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S4)
        let kvStore = kvManager.getKVStore<SingleKVStore>("test_batch_store_005", opt)
        kvStore.startTransaction()
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvStore.rollback()
        kvManager.closeKVStore("com.example.myapplication", "test_batch_store_005")
        try {
        kvStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100005i32)
        }
    }
}
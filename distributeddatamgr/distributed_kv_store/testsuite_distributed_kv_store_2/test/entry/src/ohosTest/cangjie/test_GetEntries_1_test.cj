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
class test_GetEntries_1 {
    let bundleName = "com.example.myapplication"
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_devicekvstore_put_get_07_id", opt)        
        store.put("test_user_001", StringValue("Alice"))
        store.put("test_user_002", StringValue("Bob"))
        store.put("test_user_003", StringValue("Charlie"))
        store.put("test_product_001", StringValue("Laptop"))        
        let entries = store.getEntries("test_user_")
        @Expect(entries.size, 3)
        kvManager.closeKVStore(bundleName, "test_devicekvstore_put_get_07_id")
        kvManager.deleteKVStore(bundleName, "test_devicekvstore_put_get_07_id")         
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_devicekvstore_put_get_07_id", opt)        
        store.put("test_user_001", StringValue("Alice"))
        store.put("test_user_002", StringValue("Bob"))
        store.put("test_user_003", StringValue("Charlie"))
        store.put("test_product_001", StringValue("Laptop"))        
        let entries = store.getEntries("test_dog_")
        @Expect(entries.size, 0)
        kvManager.closeKVStore(bundleName, "test_devicekvstore_put_get_07_id")
        kvManager.deleteKVStore(bundleName, "test_devicekvstore_put_get_07_id")           
    Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
}

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_3
     * @tc.desc      : getEntries  kv store successfully
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_devicekvstore_put_get_07_id", opt)        
        store.put("normal_key", StringValue("normal_value"))
        store.put("special^key", StringValue("special_value"))
        store.put("another_key", Double(3.14))     
        let entries = store.getEntries("special^")
        @Expect(entries.size, 3)
        kvManager.closeKVStore(bundleName, "test_devicekvstore_put_get_07_id")
        kvManager.deleteKVStore(bundleName, "test_devicekvstore_put_get_07_id")        
    Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
}

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_4
     * @tc.desc      : getEntries  kv store successfully
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_devicekvstore_put_get_07_id", opt)        
        store.put("data_string", StringValue("Hello World"))
        store.put("data_int", Integer(42))
        store.put("data_double", Double(3.14159))
        store.put("data_bool", Boolean(true))
        store.put("data_bytes", ByteArray([0x01, 0x02, 0x03]))
        store.put("data_float", Float(2.718))
        let entries = store.getEntries("data_")
        @Expect(entries.size, 6)
        kvManager.closeKVStore(bundleName, "test_devicekvstore_put_get_07_id")
        kvManager.deleteKVStore(bundleName, "test_devicekvstore_put_get_07_id")        
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_5
     * @tc.desc      : getEntries  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
     
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
          var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_devicekvstore_put_get_07_id", opt)        
        store.put("key1", StringValue("value1"))
        store.put("key2", StringValue("value2"))
        let entries = store.getEntries("")
        @Expect(entries.size, 2)
        kvManager.closeKVStore(bundleName, "test_devicekvstore_put_get_07_id")
        kvManager.deleteKVStore(bundleName, "test_devicekvstore_put_get_07_id")        
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_6
     * @tc.desc      : getEntries  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_store", opt)        
        store.put("test_user_001", StringValue("Alice"))
        store.put("test_user_002", StringValue("Bob"))
        store.put("test_user_003", StringValue("Charlie"))
        store.put("test_product_001", StringValue("Laptop"))        
        let entries = store.getEntries("test_user_")
        @Expect(entries.size, 3)
        kvManager.closeKVStore("com.example.myapplication", "test_store")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_7
     * @tc.desc      : getEntries  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to close kv store.")
        try {
            kvManager.closeKVStore("\0", "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager closeKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }
}

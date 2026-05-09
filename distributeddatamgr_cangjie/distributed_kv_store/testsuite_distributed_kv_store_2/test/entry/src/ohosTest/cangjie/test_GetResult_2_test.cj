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
class test_GetResult_2 {
    // 准备测试数据函数
    func prepareTestData(store: DeviceKVStore): Unit {
        // 清除现有数据
        let existingEntries = store.getEntries("^")         
        for (entry in existingEntries) {
            store.delete(entry.key)
        }
        // 插入用户数据
        store.put("user_001_name", StringValue("Alice"))
        store.put("user_001_age", Integer(25))
        store.put("user_001_score", Double(85.5))
        
        store.put("user_002_name", StringValue("Bob"))
        store.put("user_002_age", Integer(30))
        store.put("user_002_score", Double(92.0))
        
        store.put("user_003_name", StringValue("Charlie"))
        store.put("user_003_age", Integer(22))
        store.put("user_003_score", Double(78.5))
        
        // 插入产品数据（不同前缀）
        store.put("product_001_name", StringValue("Laptop"))
        store.put("product_001_price", Integer(999))
        store.put("product_002_name", StringValue("Phone"))
        store.put("product_002_price", Integer(699))
        
        // 插入其他数据
        store.put("config_enabled", Boolean(true))
        store.put("config_timeout", Integer(30))
        store.put("metric_001", Double(45.67))
        store.put("metric_002", Double(78.92))
    }
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_1
     * @tc.desc      : getresult  kv store successfully
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        // 准备测试数据
        prepareTestData(store)
        // 执行查询 - 查询以"user_"为前缀的结果集
        let resultSet = store.getResultSet("user_")
        // 获取结果集数量
        let count = resultSet.getCount()
        let expectedCount = 9i32 
        @Expect(count, expectedCount)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store") 
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_2
     * @tc.desc      : getresult  kv store successfully
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        // 准备测试数据
        prepareTestData(store)
        // 使用keyPrefix方法查询
        let resultSet = store.getResultSet("nonexistent_")  
        // 使用Query方法查询（目前Query没有添加谓词，应该返回所有数据）
        let count = resultSet.getCount()
        @Expect(count, 0i32)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store") 
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_3
     * @tc.desc      : getresult  kv store successfully
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store3", opt)
        // 准备测试数据
        prepareTestData(store)

        store.put("special^key", StringValue("special_value"))        
        // 使用keyPrefix方法查询     
        let resultSet = store.getResultSet("special^") 
        let count = resultSet.getCount()
        @Expect(count, 18) 
        kvManager.closeKVStore("com.example.myapplication", "test_query_store3") 
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_4
     * @tc.desc      : getresult  kv store successfully
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S2)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store4", opt)
        // 准备测试数据
        prepareTestData(store)
        // 执行查询 - 查询以"user_"为前缀的结果集
        // 获取结果集数量
        let resultSet = store.getResultSet("user_")
        let count = resultSet.getCount()
        @Expect(count, 9)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store4")              
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_5
     * @tc.desc      : close kv store successfully with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store5", opt)
        // 确保数据库是空的
        let existingEntries = store.getEntries("")
        for (entry in existingEntries) {
            store.delete(entry.key)
        }        
        // 获取结果集     
        let resultSet = store.getResultSet("any_prefix_")
        let count = resultSet.getCount()
        @Expect(count, 0)   
        kvManager.closeKVStore("com.example.myapplication", "test_query_store5")          
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }
}

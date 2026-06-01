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
class test_GetResult_1 {
    // 准备测试数据函数
    func prepareTestData(store: DeviceKVStore): Unit {
        // 清除现有数据
        let existingEntries = store.getEntries("^")         
        for (entry in existingEntries) {
            store.delete(entry.key)
        }
        // 插入员工数据
        store.put("emp_001_name", StringValue("Alice Johnson"))
        store.put("emp_001_dept", StringValue("Engineering"))
        store.put("emp_001_salary", Integer(85000))
        store.put("emp_001_level", Integer(3))
        
        store.put("emp_002_name", StringValue("Bob Smith"))
        store.put("emp_002_dept", StringValue("Sales"))
        store.put("emp_002_salary", Integer(72000))
        store.put("emp_002_level", Integer(2))
        
        store.put("emp_003_name", StringValue("Charlie Brown"))
        store.put("emp_003_dept", StringValue("Marketing"))
        store.put("emp_003_salary", Integer(68000))
        store.put("emp_003_level", Integer(2))
        
        store.put("emp_004_name", StringValue("Diana Prince"))
        store.put("emp_004_dept", StringValue("Engineering"))
        store.put("emp_004_salary", Integer(92000))
        store.put("emp_004_level", Integer(4))
        
        // 插入项目数据
        store.put("project_001_name", StringValue("Project Alpha"))
        store.put("project_001_status", StringValue("active"))
        store.put("project_001_budget", Double(150000.50))
        
        store.put("project_002_name", StringValue("Project Beta"))
        store.put("project_002_status", StringValue("completed"))
        store.put("project_002_budget", Double(98000.75))
        
        // 插入系统配置
        store.put("sys_config_debug", Boolean(true))
        store.put("sys_config_log_level", StringValue("INFO"))
        store.put("sys_config_timeout", Integer(30))
        
        // 插入性能指标
        store.put("metrics_cpu_usage", Double(45.67))
        store.put("metrics_memory_usage", Double(78.92))
        store.put("metrics_disk_space", Double(32.15))
    }
    
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_1
     * @tc.desc      : getEntries  kv store successfully
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
        // 准备测试数据
        prepareTestData(store)
        // 创建空的Query对象
        let query = Query()
        // 执行查询 - 获取结果集
        let resultSet = store.getResultSet(query)
        // 获取结果集数量
        let count = resultSet.getCount()
        let expectedCount = 28i32 // 我们插入了28条数据
        @Expect(count, expectedCount)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store") 
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_2
     * @tc.desc      : getEntries  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        let opt = KVOptions(KVSecurityLevel.S1)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        prepareTestData(store)
        let prefixResultSet = store.getResultSet("emp_")
        let query = Query()
        let queryResultSet = store.getResultSet(query)
        let prefixCount = prefixResultSet.getCount()
        let queryCount = queryResultSet.getCount()
        @Expect(prefixCount, 16i32)
        @Expect(queryCount, 28i32)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store") 
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        prepareTestData(store)
        let query = Query()
        let resultSet1 = store.getResultSet(query)
        let count1 = resultSet1.getCount()
        let expectedCount = 28i32
        @Expect(count1, expectedCount)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store")
        let resultSet2 = store.getResultSet(query)
        let count2 = resultSet1.getCount()
        @Expect(count2, expectedCount)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store") 
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
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", opt)
        // 确保数据库是空的
        let existingEntries = store.getEntries("")
        for (entry in existingEntries) {
            store.delete(entry.key)
        }        
        // 使用Query对象获取结果集
        let query = Query()
        let resultSet = store.getResultSet(query)
        // 获取结果集数量
        let count = resultSet.getCount()
        let expectedCount = 0i32
        @Expect(count, expectedCount)
        kvManager.closeKVStore("com.example.myapplication", "test_query_store") 
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }
}

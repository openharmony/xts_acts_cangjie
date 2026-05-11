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
class test_GetResultSize {
    let bundleName = "com.example.myapplication"
    var _kvManager: ?KVManager = None
    prop kvManager: KVManager {
        get(){
            match (_kvManager) {
                 case Some(kvManager) => kvManager
                 case None => 
                 let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(Global.getAbilityContext(), bundleName))
                 _kvManager = kvManager
                 kvManager
            }
        }
    }
         
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.size    : MediumTest
     * @tc.name      : TestCase_1
     * @tc.desc      : getresultsize  kv store successfully
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        // 2. 创建KVOptions配置
        let options = KVOptions(
            KVSecurityLevel.S1,)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_storesize1", options)                
    // 插入学生数据
        store.put("student_001_name", StringValue("Alice"))
        store.put("student_001_grade", StringValue("A"))
        store.put("student_001_score", Integer(95))
        
        store.put("student_002_name", StringValue("Bob"))
        store.put("student_002_grade", StringValue("B"))
        store.put("student_002_score", Integer(85))
        
        store.put("student_003_name", StringValue("Charlie"))
        store.put("student_003_grade", StringValue("A"))
        store.put("student_003_score", Integer(92))
        
        store.put("student_004_name", StringValue("Diana"))
        store.put("student_004_grade", StringValue("C"))
        store.put("student_004_score", Integer(78))
        
        // 插入课程数据
        store.put("course_math_name", StringValue("Mathematics"))
        store.put("course_math_credits", Integer(4))
        
        store.put("course_science_name", StringValue("Science"))
        store.put("course_science_credits", Integer(3))
        
        // 插入系统数据
        store.put("config_max_students", Integer(100))
        store.put("config_pass_score", Integer(60))
        store.put("config_enabled", Boolean(true))
        
        // 插入统计数据
        store.put("stats_avg_score", Double(87.5))
        store.put("stats_total_students", Integer(4))
        store.put("stats_pass_rate", Double(100.0))
        // 创建空的Query对象
        let query = Query()        
        // 执行查询 - 获取结果数量
        let resultSize = store.getResultSize(query)
        // 验证结果,我们插入了22条数据
        @Expect(resultSize, 22)
        kvManager.closeKVStore(bundleName, "test_query_storesize1")   
    Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
}

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_2
     * @tc.desc      : getresultsize  kv store successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        // 2. 创建KVOptions配置
        let options = KVOptions(
            KVSecurityLevel.S1,)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_storesize2", options)                
    // 插入学生数据
        store.put("student_001_name", StringValue("Alice"))
        store.put("student_001_grade", StringValue("A"))
        store.put("student_001_score", Integer(95))
        
        store.put("student_002_name", StringValue("Bob"))
        store.put("student_002_grade", StringValue("B"))
        store.put("student_002_score", Integer(85))
        
        store.put("student_003_name", StringValue("Charlie"))
        store.put("student_003_grade", StringValue("A"))
        store.put("student_003_score", Integer(92))
        
        store.put("student_004_name", StringValue("Diana"))
        store.put("student_004_grade", StringValue("C"))
        store.put("student_004_score", Integer(78))
        
        // 插入课程数据
        store.put("course_math_name", StringValue("Mathematics"))
        store.put("course_math_credits", Integer(4))
        
        store.put("course_science_name", StringValue("Science"))
        store.put("course_science_credits", Integer(3))
        
        // 插入系统数据
        store.put("config_max_students", Integer(100))
        store.put("config_pass_score", Integer(60))
        store.put("config_enabled", Boolean(true))
        
        // 插入统计数据
        store.put("stats_avg_score", Double(87.5))
        store.put("stats_total_students", Integer(4))
        store.put("stats_pass_rate", Double(100.0))
        // 创建空的Query对象
        let query = Query()        
        // 执行查询 - 获取结果数量
        let resultSize = store.getResultSize(query)                
        // 使用getEntries获取实际数据并计数
        let entries = store.getEntries(query)
        let entriesCount = entries.size
        // 验证结果,我们插入了22条数据
        @Expect(resultSize, 22)
        @Expect(entriesCount, 22)
        kvManager.closeKVStore(bundleName, "test_query_storesize2")   
    Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
}

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store
     * @tc.name      : TestCase_3
     * @tc.desc      : getresultsize  kv store successfully 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        // 2. 创建KVOptions配置
        let options = KVOptions(
            KVSecurityLevel.S1,)
        let store = kvManager.getKVStore<DeviceKVStore>("test_query_store", options)                
    // 插入学生数据
        store.put("student_001_name", StringValue("Alice"))
        store.put("student_001_grade", StringValue("A"))
        store.put("student_001_score", Integer(95))
        
        store.put("student_002_name", StringValue("Bob"))
        store.put("student_002_grade", StringValue("B"))
        store.put("student_002_score", Integer(85))
        
        store.put("student_003_name", StringValue("Charlie"))
        store.put("student_003_grade", StringValue("A"))
        store.put("student_003_score", Integer(92))
        
        store.put("student_004_name", StringValue("Diana"))
        store.put("student_004_grade", StringValue("C"))
        store.put("student_004_score", Integer(78))
        
        // 插入课程数据
        store.put("course_math_name", StringValue("Mathematics"))
        store.put("course_math_credits", Integer(4))
        
        store.put("course_science_name", StringValue("Science"))
        store.put("course_science_credits", Integer(3))
        
        // 插入系统数据
        store.put("config_max_students", Integer(100))
        store.put("config_pass_score", Integer(60))
        store.put("config_enabled", Boolean(true))
        
        // 插入统计数据
        store.put("stats_avg_score", Double(87.5))
        store.put("stats_total_students", Integer(4))
        store.put("stats_pass_rate", Double(100.0))
        // 确保数据库是空的
        let existingEntries = store.getEntries("")
        for (entry in existingEntries) {
            store.delete(entry.key)
        }        
        // 使用Query对象获取结果集
        let query = Query()
        try{
            let resultSize = store.getResultSize(query)
            @Expect(false)
        }catch (e: BusinessException) {
            @Expect(e.code, 15100004) 
        }
        }
}

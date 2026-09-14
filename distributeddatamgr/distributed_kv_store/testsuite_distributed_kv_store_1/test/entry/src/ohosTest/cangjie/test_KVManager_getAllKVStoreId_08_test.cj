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
class Test_KVManager_getAllKVStoreId_08 {


    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_KVManager_getAllKVStoreId_08_0200
    * @tc.name      : test_getallkvstoreid_02
    * @tc.desc      : test DistributedKVStore test_getallkvstoreid_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_getallkvstoreid_02(): Unit {
        let context = Global.getAbilityContext()
        let opt = KVOptions(KVSecurityLevel.S2)
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        try {
            kvManager.getAllKVStoreId("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        @Expect(kvManager.getAllKVStoreId("com.example.myapplication").size >= 0)
    }

    

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_KVManager_getAllKVStoreId_08_0400
    * @tc.name      : test_getallkvstoreid_04
    * @tc.desc      : test DistributedKVStore test_getallkvstoreid_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_getallkvstoreid_04() {
        let context = Global.getAbilityContext()
        let opt = KVOptions(KVSecurityLevel.S4)
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "com.example.myapplication"))
        @Expect(kvManager.getAllKVStoreId("com.example.myapplication"),Array<String>())
    }

    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_KVManager_getAllKVStoreId_08_0500
    * @tc.name      : test_getallkvstoreid_05
    * @tc.desc      : test DistributedKVStore test_getallkvstoreid_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_getallkvstoreid_05(): Unit {
        let context = Global.getAbilityContext()
        let opt = KVOptions(KVSecurityLevel.S4)
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "cangjietest_appid"))
        try {
            kvManager.getAllKVStoreId("cangjietest_appid")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }
}
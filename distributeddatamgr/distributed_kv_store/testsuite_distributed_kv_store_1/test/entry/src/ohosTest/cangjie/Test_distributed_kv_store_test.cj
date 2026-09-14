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
import ohos.business_exception.{BusinessException}
import ohos.data.distributed_kv_store.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.callback_invoke.*

public abstract class TestCallback <: Callback0Argument {
    public init() {}
    public open func invoke(): Unit {
        Hilog.info(0, "cangjietest", "Call invoke: syncComplete.")
    }
}
public abstract class CallbackOnSyncComplete <: Callback1Argument<ArrayList<(String, Int32)>> {
    public init() {}
    public func invoke(arr: ArrayList<(String, Int32)>): Unit {
        Hilog.info(0, "cangjietest", "Call invoke: syncComplete.")
    }
}

@Test
class Test_distributed_kv_store {
    override func afterAll(): Unit {
        gc()
        sleepFor(Duration.second)
    }

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
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_0100
    * @tc.name      : test_context
    * @tc.desc      : test distributed_kv_store KV_MAX_KEY_LENGTH
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_context(): Unit {
        @Expect(Constants.MAX_KEY_LENGTH, 1024)
        @Expect(Constants.MAX_VALUE_LENGTH, 4194303)
        @Expect(Constants.MAX_KEY_LENGTH_DEVICE, 896)
        @Expect(Constants.MAX_STORE_ID_LENGTH, 128)
        @Expect(Constants.MAX_QUERY_LENGTH, 512000)
        @Expect(Constants.MAX_BATCH_SIZE, 128)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_0300
    * @tc.name      : test_getSingleKVStore_deleteKVStore
    * @tc.desc      : test distributed_kv_store deleteKVStore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getSingleKVStore_deleteKVStore(): Unit {
        let kvstoreName = "myStoreId"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore("myStoreId", opt)
        kvManager.deleteKVStore(bundleName, kvstoreName)
        @Expect(true)
    }


    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_0600
    * @tc.name      : test_getAllKVStoreId
    * @tc.desc      : test distributed_kv_store getAllKVStoreId
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getAllKVStoreId(): Unit {
        var list = kvManager.getAllKVStoreId(bundleName)
        Hilog.info(0, "cangjietest", "list size is ${list.size}")
        let kvstoreName01 = "myStoreId01"
        let kvstoreName02 = "myStoreId02"
        let kvstoreName03 = "myStoreId03"
        let opt = KVOptions(KVSecurityLevel.S4,)
        var singleKVStore = kvManager.getKVStore(kvstoreName01, opt)
        var singleKVStore01 = kvManager.getKVStore(kvstoreName02, opt)
        var singleKVStore02 = kvManager.getKVStore(kvstoreName03, opt)
        list = kvManager.getAllKVStoreId(bundleName)
        @Expect(list.size == 3)
        @Expect(list.contains(kvstoreName01))
        @Expect(list.contains(kvstoreName02))
        @Expect(list.contains(kvstoreName03))
        kvManager.deleteKVStore(bundleName, kvstoreName01)
        kvManager.deleteKVStore(bundleName, kvstoreName02)
        kvManager.deleteKVStore(bundleName, kvstoreName03)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_0700
    * @tc.name      : test_put_get
    * @tc.desc      : test distributed_kv_store get&put
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_get(): Unit {
        let kvstoreName = "myStoreId"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore(kvstoreName, opt)
        var strkey = "keyback"
        var strvalue = "keyback"
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        var valuestr = kvStore.get(strkey)
        match (valuestr) {
            case StringValue(v) =>
                @Expect(v == strvalue)
            case _ => @Expect(false)
        }
        kvManager.deleteKVStore(bundleName, kvstoreName)
    }


    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_0900
    * @tc.name      : test_delete
    * @tc.desc      : test distributed_kv_store delete
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete(): Unit {
        let kvstoreName = "myStoreId"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore(kvstoreName, opt)
        var strkey = "keyback"
        var strvalue = "keyback"
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvStore.delete(strkey)
        try {
            var valuestr = kvStore.get(strkey)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004)
        }
        kvManager.deleteKVStore(bundleName, kvstoreName)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1000
    * @tc.name      : test_backup_restore
    * @tc.desc      : test distributed_kv_store restore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_backup_restore(): Unit {
        let kvstoreName = "myStoreId"
        let fileName = "backfile"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore(kvstoreName, opt)
        var strkey = "keyback"
        var strvalue = "keyback"
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvStore.backup(fileName)
        kvStore.delete(strkey)  
        try {
            var valuestr = kvStore.get(strkey)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004)
        }
        kvStore.restore(fileName)
        kvManager.deleteKVStore(bundleName, kvstoreName)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1100
    * @tc.name      : test_startTransaction
    * @tc.desc      : test distributed_kv_store startTransaction
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_startTransaction(): Unit {
        let kvstoreName = "myStoreId"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore(kvstoreName, opt)
        var strkey = "keyback"
        var strvalue = "keyback"
        kvStore.startTransaction()
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvStore.rollback()
        try {
            var valuestr = kvStore.get(strkey)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15100004)
        }
        kvStore.startTransaction()
        kvStore.put(strkey, KVValueType.StringValue(strvalue))
        kvStore.commit()
        kvManager.deleteKVStore(bundleName, kvstoreName)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1200
    * @tc.name      : test_common_S1S2S3
    * @tc.desc      : test distributed_kv_store getKVStore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_common_S1S2S3(): Unit {
        let kvstoreName = "myStoreId"
        let opt0 = KVOptions(KVSecurityLevel.S1,)
        let opt1 = KVOptions(KVSecurityLevel.S2,)
        let opt2 = KVOptions(KVSecurityLevel.S3,)
        let kvStore0 = kvManager.getKVStore(kvstoreName, opt0)
        let kvStore1 = kvManager.getKVStore(kvstoreName, opt1)
        let kvStore2 = kvManager.getKVStore(kvstoreName, opt2)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1400
    * @tc.name      : test_singleKVStore_enableSync
    * @tc.desc      : test distributed_kv_store getKVStore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singleKVStore_enableSync(): Unit {
        let kvstoreName = "myStoreId"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore(kvstoreName, opt)
        kvStore.enableSync(true)
        @Expect(true)
        kvManager.deleteKVStore(bundleName, kvstoreName)
    }

    /*
    * @tc.number    : Sub_Cangjie_distributed_kv_store_Test_distributed_kv_store_1500
    * @tc.name      : test_singleKVStore_setSyncParam
    * @tc.desc      : test distributed_kv_store getKVStore
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singleKVStore_setSyncParam(): Unit {
        let kvstoreName = "myStoreId"
        let opt = KVOptions(KVSecurityLevel.S4,)
        let kvStore = kvManager.getKVStore(kvstoreName, opt)
        kvStore.setSyncParam(1000)
        @Expect(true)
        kvManager.deleteKVStore(bundleName, kvstoreName)
    }
}

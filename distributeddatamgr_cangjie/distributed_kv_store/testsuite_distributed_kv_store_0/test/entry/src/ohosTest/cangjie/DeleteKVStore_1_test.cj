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
class DeleteKVStore_1 {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0, "cangjietest", "get user granted permission ohos.permission.DISTRIBUTED_DATASYNC")
        try {
            getRequiredPermissions(["ohos.permission.DISTRIBUTED_DATASYNC"])
            sleep(Duration.second * 1i64)
            click(at: Screen
                .getTheOnlyUiComponentWhoseTextEqualsTo("允许")
                .centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0, "cangjietest", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being ,appId being
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being ,appId being \0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("\0", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being ,appId being #$%^&
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("#$%^&", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being ,appId being zpsABC
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("zpsABC", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being ,appId being a
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("a" * 100000, "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being \0,appId being
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("", "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being \0,appId being \0
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
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("\0", "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being \0,appId being #$%^&
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("#$%^&", "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being \0,appId being zpsABC
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("zpsABC", "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being \0,appId being a
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("a" * 100000, "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being #$%^&,appId being
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("", "#$%^&")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being #$%^&,appId being \0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("\0", "#$%^&")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being #$%^&,appId being #$%^&
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("#$%^&", "#$%^&")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being #$%^&,appId being zpsABC
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("zpsABC", "#$%^&")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being #$%^&,appId being a
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("a" * 100000, "#$%^&")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being zpsABC,appId being
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("", "zpsABC")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being zpsABC,appId being \0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("\0", "zpsABC")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being zpsABC,appId being #$%^&
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("#$%^&", "zpsABC")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Not found.")
            @Expect(e.code, 15100004i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being zpsABC,appId being a
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("a" * 100000, "zpsABC")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being a,appId being
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("", "a" * 100000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being a,appId being \0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("\0", "a" * 100000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being a,appId being #$%^&
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("#$%^&", "a" * 100000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being a,appId being zpsABC
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("zpsABC", "a" * 100000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_deleteKVStore_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : delete kv store faild with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, storeId being a,appId being a
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest", "define local variable kvManager")
        let kvManager = DistributedKVStore.createKVManager(
            KVManagerConfig(Global.getAbilityContext(), "com.example.myapplication"))
        Hilog.info(0, "cangjietest", "fail to delete kv store.")
        try {
            kvManager.deleteKVStore("a" * 100000, "a" * 100000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager deleteKVStore failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }
}
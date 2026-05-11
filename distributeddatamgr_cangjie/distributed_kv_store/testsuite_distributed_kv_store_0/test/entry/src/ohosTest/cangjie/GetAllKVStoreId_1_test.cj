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
class GetAllKVStoreId_1 {
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
     * @tc.number    : Sub_Cangjie_distributed_kv_store_getAllKVStoreIdt_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : getAllKVStoreId successfully with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, appId being
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
        Hilog.info(0, "cangjietest", "fail to get  kv store.")
        try {
            kvManager.getAllKVStoreId("")
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager getAllKVStoreId failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_getAllKVStoreIdt_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : getAllKVStoreId successfully with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, appId being \0
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
        Hilog.info(0, "cangjietest", "fail to get  kv store.")
        try {
            kvManager.getAllKVStoreId("\0")
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager getAllKVStoreId failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_getAllKVStoreIdt_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : getAllKVStoreId successfully with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, appId being #$%^&
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
        Hilog.info(0, "cangjietest", "fail to get  kv store.")
        try {
            kvManager.getAllKVStoreId("#$%^&")
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager getAllKVStoreId failed: Permission verification failed. A non-system application calls a system API.")
            @Expect(e.code, 202i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_getAllKVStoreIdt_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : getAllKVStoreId successfully with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, appId being zpsABC
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
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_getAllKVStoreIdt_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : getAllKVStoreId successfully with securityLevel being KVSecurityLevel.S1, createIfMissing being true, encrypt being true, backup being true, autoSync being true, appId being a
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
        Hilog.info(0, "cangjietest", "fail to get  kv store.")
        try {
            kvManager.getAllKVStoreId("a" * 100000)
        } catch (e: BusinessException) {
            @Expect(e.message, "KVManager getAllKVStoreId failed: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }
}
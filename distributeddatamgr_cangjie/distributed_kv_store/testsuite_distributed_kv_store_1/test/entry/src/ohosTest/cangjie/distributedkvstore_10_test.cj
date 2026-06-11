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
import ohos_app_cangjie_entry.Global

@Test
class Test_creatKVManager_01 {
    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0100
    * @tc.name      : test_creatkvmanager_01
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_01(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, ""))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0200
    * @tc.name      : test_creatkvmanager_02
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_02(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "\0"))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0300
    * @tc.name      : test_creatkvmanager_03
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_03(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "123456"))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0400
    * @tc.name      : test_creatkvmanager_04
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_04(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "#$%^"))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0500
    * @tc.name      : test_creatkvmanager_05
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_05(): Unit {
        var context = Global.getAbilityContext()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, "abcedABC"))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0600
    * @tc.name      : test_creatkvmanager_06
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_06
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_06(): Unit {
        var context = Global.getAbilityContext()
        let text = StringBuilder(r'a', 100000).toString()
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, text))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0700
    * @tc.name      : test_creatkvmanager_07
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_07(): Unit {
        var context = Global.getAbilityContext()
        let text = "afbc.adf134.j89fa"
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, text))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0800
    * @tc.name      : test_creatkvmanager_08
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_08
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_08(): Unit {
        var context = Global.getAbilityContext()
        let text = "com.example.myapplication"
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, text))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_0900
    * @tc.name      : test_creatkvmanager_09
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_09
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_09(): Unit {
        var context = Global.getAbilityContext()
        let text = "\\w\\/\\n"
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, text))
        @Expect(true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_DistributedKVStore_Test_creatKVManager_01_1000
    * @tc.name      : test_creatkvmanager_10
    * @tc.desc      : test DistributedKVStore test_creatkvmanager_10
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creatkvmanager_10(): Unit {
        var context = Global.getAbilityContext()
        let text = "i.am.the.creature.of.the.night"
        let kvManager = DistributedKVStore.createKVManager(KVManagerConfig(context, text))
        @Expect(true)
    }
}

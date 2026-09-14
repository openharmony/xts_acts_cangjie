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
import ohos.hilog.Hilog
import ohos.data.distributed_kv_store.*

@Test
class ConstantsTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_constants_001
     * @tc.name      : test_MAX_KEY_LENGTH
     * @tc.desc      : Verify MAX_KEY_LENGTH constant value is 1024
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_MAX_KEY_LENGTH(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_KEY_LENGTH begins.")
        let maxValue = Constants.MAX_KEY_LENGTH
        @Expect(maxValue, 1024i32)
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_KEY_LENGTH ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_constants_002
     * @tc.name      : test_MAX_VALUE_LENGTH
     * @tc.desc      : Verify MAX_VALUE_LENGTH constant value is 4194303
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_MAX_VALUE_LENGTH(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_VALUE_LENGTH begins.")
        let maxValue = Constants.MAX_VALUE_LENGTH
        @Expect(maxValue, 4194303i32)
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_VALUE_LENGTH ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_constants_003
     * @tc.name      : test_MAX_KEY_LENGTH_DEVICE
     * @tc.desc      : Verify MAX_KEY_LENGTH_DEVICE constant value is 896
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_MAX_KEY_LENGTH_DEVICE(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_KEY_LENGTH_DEVICE begins.")
        let maxValue = Constants.MAX_KEY_LENGTH_DEVICE
        @Expect(maxValue, 896i32)
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_KEY_LENGTH_DEVICE ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_constants_004
     * @tc.name      : test_MAX_STORE_ID_LENGTH
     * @tc.desc      : Verify MAX_STORE_ID_LENGTH constant value is 128
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_MAX_STORE_ID_LENGTH(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_STORE_ID_LENGTH begins.")
        let maxValue = Constants.MAX_STORE_ID_LENGTH
        @Expect(maxValue, 128i32)
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_STORE_ID_LENGTH ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_constants_005
     * @tc.name      : test_MAX_QUERY_LENGTH
     * @tc.desc      : Verify MAX_QUERY_LENGTH constant value is 512000
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_MAX_QUERY_LENGTH(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_QUERY_LENGTH begins.")
        let maxValue = Constants.MAX_QUERY_LENGTH
        @Expect(maxValue, 512000i32)
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_QUERY_LENGTH ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_constants_006
     * @tc.name      : test_MAX_BATCH_SIZE
     * @tc.desc      : Verify MAX_BATCH_SIZE constant value is 128
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_MAX_BATCH_SIZE(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_BATCH_SIZE begins.")
        let maxValue = Constants.MAX_BATCH_SIZE
        @Expect(maxValue, 128i32)
        Hilog.info(0u32, "cangjietest", "testcase test_MAX_BATCH_SIZE ends.")
    }
}
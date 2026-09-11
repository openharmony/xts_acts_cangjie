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
class FieldNodeTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_FieldNode_001
     * @tc.name      : test_init_basic
     * @tc.desc      : Test FieldNode init with basic parameters
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_basic(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_basic begins.")
        let fieldNode = FieldNode("testField", false, "defaultValue", 1i32)
        @Expect(fieldNode.default, "defaultValue")
        @Expect(fieldNode.nullable, false)
        @Expect(fieldNode.nodeType, 1i32)
        Hilog.info(0u32, "cangjietest", "testcase test_init_basic ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_FieldNode_002
     * @tc.name      : test_nullable_true
     * @tc.desc      : Test FieldNode with nullable=true
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_nullable_true(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_nullable_true begins.")
        let fieldNode = FieldNode("nullableField", true, "", 0i32)
        @Expect(fieldNode.nullable, true)
        @Expect(fieldNode.default, "")
        @Expect(fieldNode.nodeType, 0i32)
        Hilog.info(0u32, "cangjietest", "testcase test_nullable_true ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_FieldNode_004
     * @tc.name      : test_nodeType_values
     * @tc.desc      : Test FieldNode with different nodeType values
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_nodeType_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_nodeType_values begins.")
        let nodeTypeValues: Array<Int32> = [0i32, 1i32, 2i32, 10i32, -1i32]        
        for (nt in nodeTypeValues) {
            let fieldNode = FieldNode("field", false, "", nt)
            @Expect(fieldNode.nodeType, nt)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_nodeType_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_FieldNode_005
     * @tc.name      : test_default_value_variations
     * @tc.desc      : Test FieldNode with different default values
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_default_value_variations(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_default_value_variations begins.")
        let emptyDefault = FieldNode("field1", false, "", 0i32)
        @Expect(emptyDefault.default, "")        
        let shortDefault = FieldNode("field2", false, "a", 0i32)
        @Expect(shortDefault.default, "a")        
        let longDefault = FieldNode("field3", false, "this_is_a_long_default_value_12345", 0i32)
        @Expect(longDefault.default, "this_is_a_long_default_value_12345")
        Hilog.info(0u32, "cangjietest", "testcase test_default_value_variations ends.")
    }
}
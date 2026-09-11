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
class SchemaTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Schema_001
     * @tc.name      : test_init_basic
     * @tc.desc      : Test Schema init with basic parameters
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_basic(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_basic begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let indexes: Array<String> = ["index1", "index2"]
        let schema = Schema(rootField, indexes, 1i32, 0i32)       
        @Expect(schema.root.default, "")
        @Expect(schema.indexes.size, 2)
        @Expect(schema.mode, 1i32)
        @Expect(schema.skip, 0i32)
        Hilog.info(0u32, "cangjietest", "testcase test_init_basic ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Schema_002
     * @tc.name      : test_empty_indexes
     * @tc.desc      : Test Schema with empty indexes array
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_empty_indexes(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_empty_indexes begins.")
        let rootField = FieldNode("root", true, "default", 1i32)
        let indexes: Array<String> = []
        let schema = Schema(rootField, indexes, 0i32, 0i32)
        
        @Expect(schema.indexes.size, 0)
        Hilog.info(0u32, "cangjietest", "testcase test_empty_indexes ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Schema_003
     * @tc.name      : test_field_properties
     * @tc.desc      : Test Schema field properties modification
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_field_properties(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_field_properties begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let indexes: Array<String> = ["idx1"]
        let schema = Schema(rootField, indexes, 0i32, 0i32)        
        let newRoot = FieldNode("newRoot", true, "newDefault", 2i32)
        schema.root = newRoot
        @Expect(schema.root.default, "newDefault")
        @Expect(schema.root.nullable, true)        
        let newIndexes: Array<String> = ["idx2", "idx3"]
        schema.indexes = newIndexes
        @Expect(schema.indexes.size, 2)        
        schema.mode = 2i32
        @Expect(schema.mode, 2i32)        
        schema.skip = 10i32
        @Expect(schema.skip, 10i32)
        Hilog.info(0u32, "cangjietest", "testcase test_field_properties ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Schema_004
     * @tc.name      : test_mode_values
     * @tc.desc      : Test Schema with different mode values
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_mode_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_mode_values begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let indexes: Array<String> = []        
        let schema0 = Schema(rootField, indexes, 0i32, 0i32)
        @Expect(schema0.mode, 0i32)        
        let schema1 = Schema(rootField, indexes, 1i32, 0i32)
        @Expect(schema1.mode, 1i32)        
        let schemaNeg = Schema(rootField, indexes, -1i32, 0i32)
        @Expect(schemaNeg.mode, -1i32)
        Hilog.info(0u32, "cangjietest", "testcase test_mode_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Schema_005
     * @tc.name      : test_skip_values
     * @tc.desc      : Test Schema with different skip values
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_skip_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_skip_values begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let indexes: Array<String> = []
        
        let schema0 = Schema(rootField, indexes, 0i32, 0i32)
        @Expect(schema0.skip, 0i32)
        
        let schema10 = Schema(rootField, indexes, 0i32, 10i32)
        @Expect(schema10.skip, 10i32)
        
        let schema100 = Schema(rootField, indexes, 0i32, 100i32)
        @Expect(schema100.skip, 100i32)
        Hilog.info(0u32, "cangjietest", "testcase test_skip_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Schema_006
     * @tc.name      : test_complex_indexes
     * @tc.desc      : Test Schema with complex indexes array
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_complex_indexes(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_complex_indexes begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let indexes: Array<String> = [
            "field1.field2",
            "field3.field4.field5",
            ".nested.path.index"
        ]
        let schema = Schema(rootField, indexes, 0i32, 0i32)
        
        @Expect(schema.indexes.size, 3)
        @Expect(schema.indexes[0], "field1.field2")
        @Expect(schema.indexes[2], ".nested.path.index")
        Hilog.info(0u32, "cangjietest", "testcase test_complex_indexes ends.")
    }
}
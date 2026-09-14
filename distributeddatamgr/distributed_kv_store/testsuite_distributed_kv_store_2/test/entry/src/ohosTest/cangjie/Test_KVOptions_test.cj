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
class KVOptionsTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVOptions_001
     * @tc.name      : test_init_with_security_level_only
     * @tc.desc      : Test KVOptions init with only securityLevel parameter
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_security_level_only(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_security_level_only begins.")
        let options = KVOptions(KVSecurityLevel.S1)
        match (options.securityLevel) {
            case KVSecurityLevel.S1 => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(options.createIfMissing, true)
        @Expect(options.encrypt, false)
        @Expect(options.backup, true)
        @Expect(options.autoSync, false)
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_security_level_only ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVOptions_002
     * @tc.name      : test_init_with_all_parameters
     * @tc.desc      : Test KVOptions init with all parameters
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_all_parameters(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_all_parameters begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let indexes: Array<String> = ["idx1"]
        let schema = Schema(rootField, indexes, 0i32, 0i32)
        
        let options = KVOptions(
            KVSecurityLevel.S2,
            createIfMissing: false,
            encrypt: true,
            backup: false,
            autoSync: true,
            schema: Some(schema)
        )
        
        match (options.securityLevel) {
            case KVSecurityLevel.S2 => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(options.createIfMissing, false)
        @Expect(options.encrypt, true)
        @Expect(options.backup, false)
        @Expect(options.autoSync, true)
        @Expect(options.schema.isSome())
        match (options.schema) {
            case Some(s) => @Expect(s.root.default, ""); @Expect(s.indexes.size, 1)
            case None => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_all_parameters ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVOptions_004
     * @tc.name      : test_schema_field
     * @tc.desc      : Test KVOptions schema field with Some and None
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_schema_field(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_schema_field begins.")
        let rootField = FieldNode("root", false, "", 0i32)
        let schema = Schema(rootField, [], 0i32, 0i32)
        let optionsNoSchema = KVOptions(KVSecurityLevel.S1)
        @Expect(optionsNoSchema.schema.isNone())
        let optionsWithSchema = KVOptions(KVSecurityLevel.S1, schema: Some(schema))
        @Expect(optionsWithSchema.schema.isSome())
        match (optionsWithSchema.schema) {
            case Some(s0) => @Expect(s0.root.default, "")
            case None => @Expect(false)
        }
        optionsNoSchema.schema = Some(schema)
        @Expect(optionsNoSchema.schema.isSome())
        match (optionsNoSchema.schema) {
            case Some(s1) => @Expect(s1.root.default, "")
            case None => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_schema_field ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVOptions_005
     * @tc.name      : test_different_security_levels
     * @tc.desc      : Test KVOptions with different security levels
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_different_security_levels(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_different_security_levels begins.")
        
        let options1 = KVOptions(KVSecurityLevel.S1)
        match (options1.securityLevel) {
            case KVSecurityLevel.S1 => @Expect(true)
            case _ => @Expect(false)
        }
        
        let options2 = KVOptions(KVSecurityLevel.S2)
        match (options2.securityLevel) {
            case KVSecurityLevel.S2 => @Expect(true)
            case _ => @Expect(false)
        }
        
        let options3 = KVOptions(KVSecurityLevel.S3)
        match (options3.securityLevel) {
            case KVSecurityLevel.S3 => @Expect(true)
            case _ => @Expect(false)
        }
        
        let options4 = KVOptions(KVSecurityLevel.S4)
        match (options4.securityLevel) {
            case KVSecurityLevel.S4 => @Expect(true)
            case _ => @Expect(false)
        }
        
        Hilog.info(0u32, "cangjietest", "testcase test_different_security_levels ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVOptions_006
     * @tc.name      : test_named_parameters
     * @tc.desc      : Test KVOptions with named parameters in different orders
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_named_parameters(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_named_parameters begins.")
        let options1 = KVOptions(KVSecurityLevel.S1, encrypt: true, backup: false)
        @Expect(options1.encrypt, true)
        @Expect(options1.backup, false)        
        let options2 = KVOptions(KVSecurityLevel.S2, autoSync: true, createIfMissing: false)
        @Expect(options2.autoSync, true)
        @Expect(options2.createIfMissing, false)
        Hilog.info(0u32, "cangjietest", "testcase test_named_parameters ends.")
    }
}
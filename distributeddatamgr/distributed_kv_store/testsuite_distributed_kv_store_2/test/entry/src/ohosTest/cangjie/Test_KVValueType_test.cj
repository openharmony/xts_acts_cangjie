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
class KVValueTypeTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_001
     * @tc.name      : test_StringValue
     * @tc.desc      : Test KVValueType.StringValue creation and value access
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_StringValue(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_StringValue begins.")
        let value = KVValueType.StringValue("test_string")
        match (value) {
            case StringValue(s) => @Expect(s, "test_string")
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_StringValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_002
     * @tc.name      : test_Integer
     * @tc.desc      : Test KVValueType.Integer creation and value access
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Integer(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Integer begins.")
        let value = Integer(42i32)
        match (value) {
            case Integer(i) => @Expect(i, 42i32)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_Integer ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_003
     * @tc.name      : test_Float
     * @tc.desc      : Test KVValueType.Float creation and value access
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Float(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Float begins.")
        let value = Float(3.14f32)
        match (value) {
            case Float(f) => @Expect(f, 3.14f32)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_Float ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_004
     * @tc.name      : test_ByteArray
     * @tc.desc      : Test KVValueType.ByteArray creation and value access
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ByteArray(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_ByteArray begins.")
        let arr: Array<Byte> = [1u8, 2u8, 3u8, 4u8, 5u8]
        let value = ByteArray(arr)
        match (value) {
            case ByteArray(bytes) => @Expect(bytes.size, 5); @Expect(bytes[0], 1u8); @Expect(bytes[4], 5u8)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_ByteArray ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_005
     * @tc.name      : test_Boolean
     * @tc.desc      : Test KVValueType.Boolean creation and value access
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Boolean(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Boolean begins.")
        let valueTrue = Boolean(true)
        match (valueTrue) {
            case Boolean(b) => @Expect(b, true)
            case _ => @Expect(false)
        }
        
        let valueFalse = Boolean(false)
        match (valueFalse) {
            case Boolean(b) => @Expect(b, false)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_Boolean ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_006
     * @tc.name      : test_Double
     * @tc.desc      : Test KVValueType.Double creation and value access
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Double(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Double begins.")
        let value = Double(123.456f64)
        match (value) {
            case Double(d) => @Expect(d, 123.456f64)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_Double ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_007
     * @tc.name      : test_negative_values
     * @tc.desc      : Test KVValueType with negative values
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_negative_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_negative_values begins.")
        let negInt = Integer(-100i32)
        match (negInt) {
            case Integer(i) => @Expect(i, -100i32)
            case _ => @Expect(false)
        }
        
        let negFloat = Float(-3.14f32)
        match (negFloat) {
            case Float(f) => @Expect(f, -3.14f32)
            case _ => @Expect(false)
        }
        
        let negDouble = Double(-123.456f64)
        match (negDouble) {
            case Double(d) => @Expect(d, -123.456f64)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_negative_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_KVValueType_008
     * @tc.name      : test_boundary_values
     * @tc.desc      : Test KVValueType with boundary values
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_boundary_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_boundary_values begins.")
        let maxInt = Integer(Int32.Max)
        match (maxInt) {
            case Integer(i) => @Expect(i, Int32.Max)
            case _ => @Expect(false)
        }
        
        let minInt = Integer(Int32.Min)
        match (minInt) {
            case Integer(i) => @Expect(i, Int32.Min)
            case _ => @Expect(false)
        }
        
        let emptyString = KVValueType.StringValue("")
        match (emptyString) {
            case StringValue(s) => @Expect(s, "")
            case _ => @Expect(false)
        }
        
        let emptyArr: Array<Byte> = []
        let emptyByteArray = ByteArray(emptyArr)
        match (emptyByteArray) {
            case ByteArray(bytes) => @Expect(bytes.size, 0)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_boundary_values ends.")
    }
}
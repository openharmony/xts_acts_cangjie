package ohos_app_cangjie_entry_test

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog
import ohos.data.distributed_kv_store.*

@Test
class EntryTestClass {
    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_001
     * @tc.name      : test_init_with_string_value
     * @tc.desc      : Test Entry init with StringValue
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_string_value(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_string_value begins.")
        let entry = Entry("testKey", StringValue("testValue"))
        @Expect(entry.key, "testKey")
        match (entry.value) {
            case StringValue(s) => @Expect(s, "testValue")
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_string_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_002
     * @tc.name      : test_init_with_integer_value
     * @tc.desc      : Test Entry init with Integer
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_integer_value(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_integer_value begins.")
        let entry = Entry("intKey", Integer(42i32))
        @Expect(entry.key, "intKey")
        match (entry.value) {
            case Integer(i) => @Expect(i, 42i32)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_integer_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_003
     * @tc.name      : test_init_with_float_value
     * @tc.desc      : Test Entry init with Float
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_float_value(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_float_value begins.")
        let entry = Entry("floatKey", Float(3.14f32))
        @Expect(entry.key, "floatKey")
        match (entry.value) {
            case Float(f) => @Expect(f, 3.14f32)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_float_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_004
     * @tc.name      : test_init_with_boolean_value
     * @tc.desc      : Test Entry init with Boolean
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_boolean_value(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_boolean_value begins.")
        let entryTrue = Entry("boolKeyTrue", Boolean(true))
        @Expect(entryTrue.key, "boolKeyTrue")
        match (entryTrue.value) {
            case Boolean(b) => @Expect(b, true)
            case _ => @Expect(false)
        }
        let entryFalse = Entry("boolKeyFalse", Boolean(false))
        @Expect(entryFalse.key, "boolKeyFalse")
        match (entryFalse.value) {
            case Boolean(b) => @Expect(b, false)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_boolean_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_005
     * @tc.name      : test_init_with_double_value
     * @tc.desc      : Test Entry init with Double
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_double_value(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_double_value begins.")
        let entry = Entry("doubleKey", Double(123.456f64))
        @Expect(entry.key, "doubleKey")
        match (entry.value) {
            case Double(d) => @Expect(d, 123.456f64)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_double_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_006
     * @tc.name      : test_init_with_bytearray_value
     * @tc.desc      : Test Entry init with ByteArray
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_with_bytearray_value(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_bytearray_value begins.")
        let arr: Array<Byte> = [1u8, 2u8, 3u8]
        let entry = Entry("byteArrayKey", ByteArray(arr))
        @Expect(entry.key, "byteArrayKey")
        match (entry.value) {
            case ByteArray(bytes) => @Expect(bytes.size, 3); @Expect(bytes[0], 1u8); @Expect(bytes[2], 3u8)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_init_with_bytearray_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_007
     * @tc.name      : test_field_modification
     * @tc.desc      : Test Entry field modification
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_field_modification(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_field_modification begins.")
        let entry = Entry("originalKey", StringValue("originalValue"))        
        entry.key = "modifiedKey"
        @Expect(entry.key, "modifiedKey")       
        Hilog.info(0u32, "cangjietest", "testcase test_field_modification ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_distributed_kv_store_Entry_008
     * @tc.name      : test_various_key_formats
     * @tc.desc      : Test Entry with various key formats
     * @tc.size      : SmallTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_various_key_formats(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_various_key_formats begins.")
        let entry1 = Entry("key_with_underscore", StringValue("value1"))
        @Expect(entry1.key, "key_with_underscore")        
        let entry2 = Entry("key.with.dots", StringValue("value2"))
        @Expect(entry2.key, "key.with.dots")        
        let entry3 = Entry("CamelCaseKey", StringValue("value3"))
        @Expect(entry3.key, "CamelCaseKey")        
        let entry4 = Entry("123NumericStart", StringValue("value4"))
        @Expect(entry4.key, "123NumericStart")
        Hilog.info(0u32, "cangjietest", "testcase test_various_key_formats ends.")
    }
}
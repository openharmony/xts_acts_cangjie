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

import std.unittest.testmacro.*
import ohos.base.*
import std.unittest.*
import std.unittest.common.*
import kit.IPCKit.*
import ohos.file.fs.*
import ohos.file.fs.OpenMode
import std.collection.ArrayList

@Test
class Test_rpc_01 {
    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0100
     * @tc.name      : test_Byte
     * @tc.desc      : Check whether the Byte interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Byte(): Unit {
        let data = MessageSequence.create()
        data.writeByte(2)
        data.writeByte(3)
        let ret = data.readByte()
        @Expect(ret, 2)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0200
     * @tc.name      : test_Short
     * @tc.desc      : Check whether the Short interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Short(): Unit {
        let data = MessageSequence.create()
        data.writeShort(8)
        let ret = data.readShort()
        @Expect(ret, 8)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0300
     * @tc.name      : test_Int
     * @tc.desc      : tCheck whether the readInt interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Int(): Unit {
        let data = MessageSequence.create()
        data.writeShort(10)
        let ret = data.readInt()
        @Expect(ret, 10)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0400
     * @tc.name      : test_Long
     * @tc.desc      : Check whether the Long interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Long(): Unit {
        let data = MessageSequence.create()
        data.writeLong(10000)
        let ret = data.readLong()
        @Expect(ret, 10000)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0500
     * @tc.name      : test_Float
     * @tc.desc      : Check whether the Float interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Float(): Unit {
        let data = MessageSequence.create()
        data.writeFloat(1.2)
        let ret = data.readFloat()
        @Expect(ret, 1.2)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0600
     * @tc.name      : test_Double
     * @tc.desc      : Check whether the Double interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Double(): Unit {
        let data = MessageSequence.create()
        data.writeDouble(10.2)
        let ret = data.readDouble()
        @Expect(ret, 10.2)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0700
     * @tc.name      : test_Boolean
     * @tc.desc      : Check whether the Boolean interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Boolean(): Unit {
        let data = MessageSequence.create()
        data.writeBoolean(false)
        let ret = data.readBoolean()
        @Expect(ret, false)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0800
     * @tc.name      : test_Char
     * @tc.desc      : Check whether the Char interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Char(): Unit {
        let data = MessageSequence.create()
        data.writeChar(97)
        let ret = data.readChar()
        @Expect(ret, 97)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_0900
     * @tc.name      : test_String
     * @tc.desc      : Check whether the String interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_String(): Unit {
        let data = MessageSequence.create()
        data.writeString("abc")
        let ret = data.readString()
        @Expect(ret, "abc")
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1000
     * @tc.name      : test_ByteArray
     * @tc.desc      : Check whether the ByteArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ByteArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Int8> = [1, 2, 3, 4, 5]
        data.writeByteArray(arr)
        let ret = data.readByteArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1100
     * @tc.name      : test_ShortArray
     * @tc.desc      : Check whether the ShortArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ShortArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Int16> = [11, 12, 13]
        data.writeShortArray(arr)
        let ret = data.readShortArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1200
     * @tc.name      : test_IntArray
     * @tc.desc      : Check whether the IntArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_IntArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Int32> = [100, 111, 112]
        data.writeIntArray(arr)
        let ret = data.readIntArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1300
     * @tc.name      : test_LongArray
     * @tc.desc      : Check whether the LongArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_LongArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Int64> = [1111, 1112, 1113]
        data.writeLongArray(arr)
        let ret = data.readLongArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1400
     * @tc.name      : test_FloatArray
     * @tc.desc      : Check whether the FloatArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_FloatArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Float32> = [1.2, 1.3, 1.4]
        data.writeFloatArray(arr)
        let ret = data.readFloatArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1500
     * @tc.name      : test_DoubleArray
     * @tc.desc      : Check whether the DoubleArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_DoubleArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Float64> = [1.2, 1.3, 1.4]
        data.writeDoubleArray(arr)
        let ret = data.readDoubleArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1600
     * @tc.name      : test_BooleanArray
     * @tc.desc      : Check whether the BooleanArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_BooleanArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Bool> = [false, true, false]
        data.writeBooleanArray(arr)
        let ret = data.readBooleanArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1700
     * @tc.name      : test_CharArray
     * @tc.desc      : Check whether the CharArray interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CharArray(): Unit {
        let data = MessageSequence.create()
        let arr: Array<UInt8> = [97, 98, 88]
        data.writeCharArray(arr)
        let ret = data.readCharArray()
        @Expect(ret, arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_01_1800
     * @tc.name      : test_StringArray
     * @tc.desc      : test rpc StringArray
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_StringArray(): Unit {
        let data = MessageSequence.create()
        let arr1: Array<String> = ["仓颉", "test"]
        let arr2: Array<String> = ["仓颉", "cangjie", "ce试"]
        data.writeStringArray(arr1)
        data.writeStringArray(arr2)
        let ret1 = data.readStringArray()
        @Expect(ret1, arr1)
        let ret2 = data.readStringArray()
        @Expect(ret2, arr2)
        data.reclaim()
    }
}

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
internal import ohos.business_exception.*

class MyParcelable <: Parcelable {
    var num: Int32 = 0
    var str: String = ''
    init(num: Int32, str: String) {
        this.num = num
        this.str = str
    }
    public func marshalling(messageSequence: MessageSequence): Bool {
        messageSequence.writeInt(this.num)
        messageSequence.writeString(this.str)
        return true
    }
    public func unmarshalling(messageSequence: MessageSequence): Bool {
        this.num = messageSequence.readInt()
        this.str = messageSequence.readString()
        return true
    }
}

@Test
class Test_rpc_03 {
    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0100
     * @tc.name      : test_ashmem_create
     * @tc.desc      : Check whether the ashmem and create interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ashmem_create(): Unit {
        @Expect(Ashmem.PROT_EXEC, 4)
        @Expect(Ashmem.PROT_NONE, 0)
        @Expect(Ashmem.PROT_READ, 1)
        @Expect(Ashmem.PROT_WRITE, 2)
        let ashmemSize: Int32 = 1024 * 1024
        let ashmem1 = Ashmem.create("ashmem1", ashmemSize)
        let ashmem2 = Ashmem.create(ashmem1)
        @Expect(ashmem2.getAshmemSize(), ashmemSize)
        ashmem1.closeAshmem()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0300
     * @tc.name      : test_writeInterfaceToken_Exception
     * @tc.desc      : Check whether the writeInterfaceToken interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_writeInterfaceToken_Exception(): Unit {
        let data = MessageSequence.create()
        let token = "a" * 40960
        try {
            data.writeInterfaceToken(token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message.contains("Parameter error"))
        } finally {
            data.reclaim()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0500
     * @tc.name      : test_parcelable
     * @tc.desc      : Check whether the parcelable interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_parcelable(): Unit {
        let parcelable = MyParcelable(1, "aaa")
        let data = MessageSequence.create()
        data.writeParcelable(parcelable)
        let ret = MyParcelable(1, "bbb")
        data.readParcelable(ret)
        @Expect(ret.num, 1)
        @Expect(ret.str, "aaa")
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0600
     * @tc.name      : test_parcelable_array
     * @tc.desc      : Check whether the parcelable interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_parcelable_array(): Unit {
        let parcelable = MyParcelable(1, "aaa")
        let parcelable2 = MyParcelable(2, "bbb")
        let parcelable3 = MyParcelable(3, "ccc")
        let data = MessageSequence.create()
        data.writeParcelableArray(parcelable, parcelable2, parcelable3)
        let ret: Array<Parcelable> = [MyParcelable(0, ""), MyParcelable(0, ""), MyParcelable(0, "")]
        data.readParcelableArray(ret)
        @Expect((ret[0] as MyParcelable).getOrThrow().num, 1)
        @Expect((ret[0] as MyParcelable).getOrThrow().str, "aaa")
        @Expect((ret[1] as MyParcelable).getOrThrow().num, 2)
        @Expect((ret[1] as MyParcelable).getOrThrow().str, "bbb")
        @Expect((ret[2] as MyParcelable).getOrThrow().num, 3)
        @Expect((ret[2] as MyParcelable).getOrThrow().str, "ccc")
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0700
     * @tc.name      : test_ByteArray_dataIn
     * @tc.desc      : Check whether the ByteArray and dataIn interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ByteArray_dataIn(): Unit {
        let data = MessageSequence.create()
        let arr: Array<Int8> = []
        data.writeByteArray(arr)
        let list = ArrayList<Int8>()
        data.readByteArray()
        @Expect(list.toArray(), arr)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0800
     * @tc.name      : test_write_read_RawDataBuffer
     * @tc.desc      : Check whether the RawDataBuffer interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_read_RawDataBuffer(): Unit {
        let size = 64 * 1024
        let buffer = Array<Byte>(size, repeat: 1)
        let sequence = MessageSequence.create()
        sequence.writeRawDataBuffer(buffer, size)
        let result = sequence.readRawDataBuffer(size)
        @Expect(buffer, result)
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_03_0900
     * @tc.name      : test_write_read_DataFromAshmem
     * @tc.desc      : Check whether the writeDataToAshmem interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_read_DataFromAshmem(): Unit {
        let buffer = Array<Byte>(50, {i => UInt8(i * 2 + 1)})
        let ashmem = Ashmem.create("ashmem", 1024 * 1024)
        ashmem.mapReadWriteAshmem()
        ashmem.writeDataToAshmem(buffer, 50, 0)
        let readResult = ashmem.readDataFromAshmem(50, 0)
        @Expect(buffer, readResult)
    }
}

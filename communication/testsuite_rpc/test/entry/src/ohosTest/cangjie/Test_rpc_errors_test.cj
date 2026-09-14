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

import ohos.base.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.IPCKit.*
import ohos.hilog.Hilog
import ohos.business_exception.BusinessException

class TestErrParcelable <: Parcelable {
    var num: Int32 = 0
    init(num: Int32) {
        this.num = num
    }
    public func marshalling(dataOut: MessageSequence): Bool {
        dataOut.writeInt(this.num)
        return true
    }
    public func unmarshalling(dataIn: MessageSequence): Bool {
        this.num = dataIn.readInt()
        return true
    }
}

func errReclaim(seq: MessageSequence, tag: String): Unit {
    try {
        seq.reclaim()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", tag + " reclaim error code", e.code.toString())
    }
}

func errCloseAshmem(ash: Ashmem, tag: String): Unit {
    try {
        ash.closeAshmem()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", tag + " closeAshmem error code", e.code.toString())
    }
}

@Test
class Test_rpc_errors {
    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0100
     * @tc.name      : Test_Err_WriteScalar_UseAfterRelease
     * @tc.desc      : Cover writeByte/writeShort/writeInt/writeLong/writeFloat/writeDouble/
     *                 writeBoolean/writeChar/writeString/writeNoException error 1900009 by
     *                 calling them on a reclaimed MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteScalar_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteScalar_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "writeScalar")
        try {
            seq.writeByte(1i8)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeShort(2i16)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeInt(3i32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeLong(4i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeFloat(1.5f32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeDouble(2.5f64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeBoolean(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeChar(5u8)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeString("err")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeNoException()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteScalar_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0200
     * @tc.name      : Test_Err_WriteArray_UseAfterRelease
     * @tc.desc      : Cover writeByteArray/writeShortArray/writeIntArray/writeLongArray/
     *                 writeFloatArray/writeDoubleArray/writeBooleanArray/writeCharArray/
     *                 writeStringArray/writeUInt8Array/writeUInt16Array/writeUInt32Array/
     *                 writeUInt64Array error 1900009 by calling them on a reclaimed
     *                 MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteArray_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteArray_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "writeArray")
        try {
            seq.writeByteArray([1i8, 2i8])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeShortArray([1i16])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeIntArray([1i32])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeLongArray([1i64])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeFloatArray([1.0f32])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeDoubleArray([1.0f64])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeBooleanArray([true])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeCharArray([1u8])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeStringArray(["a"])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeUInt8Array([1u8])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeUInt16Array([1u16])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeUInt32Array([1u32])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeUInt64Array([1u64])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteArray_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0300
     * @tc.name      : Test_Err_WriteComplex_UseAfterRelease
     * @tc.desc      : Cover writeInterfaceToken/writeFileDescriptor/writeRawDataBuffer/
     *                 setSize/rewindWrite error 1900009 by calling them on a reclaimed
     *                 MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteComplex_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteComplex_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "writeComplex")
        try {
            seq.writeInterfaceToken("test.token")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeFileDescriptor(-1i32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.writeRawDataBuffer([1u8], 1i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.setSize(999999999u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        try {
            seq.rewindWrite(999999999u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteComplex_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0400
     * @tc.name      : Test_Err_SetCapacity_UseAfterRelease
     * @tc.desc      : Cover setCapacity error 1900009 by calling it on a reclaimed
     *                 MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_SetCapacity_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_SetCapacity_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "setCapacity")
        try {
            seq.setCapacity(100u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_SetCapacity_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0500
     * @tc.name      : Test_Err_ReadScalar_UseAfterRelease
     * @tc.desc      : Cover readByte/readShort/readInt/readLong/readFloat/readDouble/
     *                 readBoolean/readChar/readString error 1900010 by calling them on a
     *                 reclaimed MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadScalar_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadScalar_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "readScalar")
        try {
            let _ = seq.readByte()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readShort()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readInt()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readLong()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readFloat()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readDouble()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readBoolean()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readChar()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readString()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadScalar_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0600
     * @tc.name      : Test_Err_ReadArray_UseAfterRelease
     * @tc.desc      : Cover readByteArray/readShortArray/readIntArray/readLongArray/
     *                 readFloatArray/readDoubleArray/readBooleanArray/readCharArray/
     *                 readStringArray/readUInt8Array/readUInt16Array/readUInt32Array/
     *                 readUInt64Array error 1900010 by calling them on a reclaimed
     *                 MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadArray_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadArray_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "readArray")
        try {
            let _ = seq.readByteArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readShortArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readIntArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readLongArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readFloatArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readDoubleArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readBooleanArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readCharArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readStringArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readUInt8Array()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readUInt16Array()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readUInt32Array()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readUInt64Array()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadArray_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0700
     * @tc.name      : Test_Err_ReadComplex_UseAfterRelease
     * @tc.desc      : Cover readInterfaceToken/readParcelable/readParcelableArray/
     *                 readFileDescriptor/readRawDataBuffer/readException/rewindRead error
     *                 1900010 by calling them on a reclaimed MessageSequence
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadComplex_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadComplex_UseAfterRelease begins.")
        let seq = MessageSequence.create()
        errReclaim(seq, "readComplex")
        try {
            let _ = seq.readInterfaceToken()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            seq.readParcelable(TestErrParcelable(0i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            seq.readParcelableArray([TestErrParcelable(0i32)])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readFileDescriptor()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            let _ = seq.readRawDataBuffer(100i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            seq.readException()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        try {
            seq.rewindRead(999999999u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadComplex_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_0800
     * @tc.name      : Test_Err_DupFileDescriptor_InvalidFd
     * @tc.desc      : Cover MessageSequence.dupFileDescriptor error 1900013 (dup failed) with
     *                 an invalid fd -1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_DupFileDescriptor_InvalidFd(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_DupFileDescriptor_InvalidFd begins.")
        try {
            let _ = MessageSequence.dupFileDescriptor(-1i32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900013i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_DupFileDescriptor_InvalidFd ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_1000
     * @tc.name      : Test_Err_Ashmem_WriteData_Overflow
     * @tc.desc      : Cover Ashmem.writeDataToAshmem error 1900003 (write shared memory
     *                 failed) by writing 2048 bytes into a 1024-byte Ashmem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Ashmem_WriteData_Overflow(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Ashmem_WriteData_Overflow begins.")
        let ash = Ashmem.create("err_write_data", 1024i32)
        try {
            ash.mapReadWriteAshmem()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "mapReadWriteAshmem error code", e.code.toString())
        }
        let buf = Array<Byte>(2048, repeat: 1u8)
        try {
            ash.writeDataToAshmem(buf, 2048i64, 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900003i32)
        }
        errCloseAshmem(ash, "writeData")
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Ashmem_WriteData_Overflow ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_1100
     * @tc.name      : Test_Err_Ashmem_ReadData_Overflow
     * @tc.desc      : Cover Ashmem.readDataFromAshmem error 1900004 (read shared memory
     *                 failed) by reading 2048 bytes out of a 1024-byte Ashmem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Ashmem_ReadData_Overflow(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Ashmem_ReadData_Overflow begins.")
        let ash = Ashmem.create("err_read_data", 1024i32)
        try {
            ash.mapReadWriteAshmem()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "mapReadWriteAshmem error code", e.code.toString())
        }
        try {
            let _ = ash.readDataFromAshmem(2048i64, 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900004i32)
        }
        errCloseAshmem(ash, "readData")
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Ashmem_ReadData_Overflow ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_1200
     * @tc.name      : Test_Err_WriteDataToAshmem_Size0
     * @tc.desc      : Cover Ashmem.writeDataToAshmem error 1900003 (write shared memory
     *                 failed) by writing with size 0, probing measured value. ArkTS
     *                 counterpart: SUB_DSoftbus_IPC_API_Stage_Ashmem_0250
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteDataToAshmem_Size0(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteDataToAshmem_Size0 begins.")
        let ash = Ashmem.create("err_write_data_size0", 65536i32)
        try {
            ash.mapReadWriteAshmem()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "mapReadWriteAshmem error code", e.code.toString())
        }
        let buf = Array<Byte>(16, repeat: 1u8)
        try {
            ash.writeDataToAshmem(buf, 0i64, 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900003i32)
        }
        errCloseAshmem(ash, "writeDataSize0")
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_WriteDataToAshmem_Size0 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors_1300
     * @tc.name      : Test_Err_ReadDataFromAshmem_InvalidSize
     * @tc.desc      : Cover Ashmem.readDataFromAshmem error 1900004 (read shared memory
     *                 failed) by reading with size 0 and size -1, probing measured
     *                 value. ArkTS counterparts: SUB_DSoftbus_IPC_API_Stage_Ashmem_0330/0340
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadDataFromAshmem_InvalidSize(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadDataFromAshmem_InvalidSize begins.")
        let ash = Ashmem.create("err_read_data_invalid_size", 65536i32)
        try {
            ash.mapReadWriteAshmem()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "mapReadWriteAshmem error code", e.code.toString())
        }
        let buf = Array<Byte>(16, repeat: 1u8)
        try {
            ash.writeDataToAshmem(buf, 16i64, 0i64)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "writeDataToAshmem error code", e.code.toString())
        }
        try {
            let _ = ash.readDataFromAshmem(0i64, 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900004i32)
        }
        try {
            let _ = ash.readDataFromAshmem(-1i64, 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900004i32)
        }
        errCloseAshmem(ash, "readDataInvalidSize")
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ReadDataFromAshmem_InvalidSize ends.")
    }
}

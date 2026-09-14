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
import ohos.file.fs.File
import std.collection.ArrayList

@Test
class Test_rpc_02 {
    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_02_0100
     * @tc.name      : test_ArrayBuffer
     * @tc.desc      : Check whether the ArrayBuffer interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ArrayBuffer(): Unit {
        let data = MessageSequence.create()
        let arr2: Array<UInt8> = [0, 255]
        data.writeUInt8Array(arr2)
        let arr4: Array<UInt16> = [0, 65535]
        data.writeUInt16Array(arr4)
        let arr6: Array<UInt32> = [0, 4294967295]
        data.writeUInt32Array(arr6)
        let arr8: Array<UInt64> = [0, 18446744073709551615]
        data.writeUInt64Array(arr8)
        let arr9: Array<Float32> = [-3.4, 3.4]
        data.writeFloatArray(arr9)
        let uint8Arr = data.readUInt8Array()
        @Expect(uint8Arr, arr2)
        let uint16Arr = data.readUInt16Array()
        @Expect(uint16Arr, arr4)
        let uint32Arr = data.readUInt32Array()
        @Expect(uint32Arr, arr6)
        let uint64Arr = data.readUInt64Array()
        @Expect(uint64Arr, arr8)
        let floatArr = data.readFloatArray()
        @Expect(floatArr, arr9)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_02_0200
     * @tc.name      : test_Exception
     * @tc.desc      : Check whether the Exception interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception(): Unit {
        let data = MessageSequence.create()
        try {
            data.writeNoException()
            data.readException()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        } finally {
            data.reclaim()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_02_0300
     * @tc.name      : test_File
     * @tc.desc      : Check whether the File interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_File(): Unit {
        let filePath = "/data/storage/el2/base/test_rpc.txt"
        let file = FileIo.open(
            filePath,
            mode: (OpenMode.CREATE | OpenMode.READ_WRITE)
        )
        FileIo.write(file.fd, "hello world")
        let data = MessageSequence.create()
        let result1 = data.containFileDescriptors()
        @Expect(result1, false)
        data.writeFileDescriptor(file.fd)
        let result2 = data.containFileDescriptors()
        @Expect(result2, true)
        let fd = data.readFileDescriptor()
        let readlen=FileIo.read(fd,Array<Byte>(4096,repeat:0),options:ReadOptions(offset:0))
        @Expect(readlen, 11)
        MessageSequence.dupFileDescriptor(fd)
        MessageSequence.closeFileDescriptor(fd)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_02_0400
     * @tc.name      : test_getRawDataCapacity
     * @tc.desc      : Check whether the getRawDataCapacity interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getRawDataCapacity(): Unit {
        let data = MessageSequence.create()
        let result = data.getRawDataCapacity()
        let expectNum: UInt32 = 134217728
        @Expect(result, expectNum)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_02_0500
     * @tc.name      : test_ashmem
     * @tc.desc      : Check whether the ashmem interface in the rpc meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ashmem(): Unit {
        let ashmemSize: Int32 = 1024 * 1024
        let ashmem = Ashmem.create("ashmem", ashmemSize)
        let size1 = ashmem.getAshmemSize()
        @Expect(size1, ashmemSize)
        ashmem.unmapAshmem()
        ashmem.mapTypedAshmem(Ashmem.PROT_READ | Ashmem.PROT_WRITE)
        ashmem.mapReadWriteAshmem()
        ashmem.mapReadonlyAshmem()
        ashmem.setProtectionType(Ashmem.PROT_READ)
        let size2 = ashmem.getAshmemSize()
        @Expect(size2, ashmemSize)
        ashmem.closeAshmem()
    }
}

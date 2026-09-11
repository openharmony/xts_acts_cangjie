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
import ohos.hilog.Hilog
import std.collection.ArrayList
internal import ohos.business_exception.*

class TestAshmemParcelable <: Parcelable {
    var num: Int32 = 0
    var str: String = ""
    init(num: Int32, str: String) {
        this.num = num
        this.str = str
    }
    public func marshalling(dataOut: MessageSequence): Bool {
        dataOut.writeInt(this.num)
        dataOut.writeString(this.str)
        return true
    }
    public func unmarshalling(dataIn: MessageSequence): Bool {
        this.num = dataIn.readInt()
        this.str = dataIn.readString()
        return true
    }
}

@Test
class Test_rpc_ashmem {
    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_ashmem_0100
     * @tc.name      : test_writeAshmem_readAshmem
     * @tc.desc      : Check whether MessageSequence.writeAshmem and readAshmem round-trip an Ashmem object.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_writeAshmem_readAshmem(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_writeAshmem_readAshmem begins.")
        let ashmemSize: Int32 = 1024i32
        let ashmem = Ashmem.create("rpc_ashmem_test", ashmemSize)
        let data = MessageSequence.create()
        data.writeAshmem(ashmem)
        let readAsh = data.readAshmem()
        @Expect(readAsh.getAshmemSize(), ashmemSize)
        ashmem.closeAshmem()
        readAsh.closeAshmem()
        data.reclaim()
        Hilog.info(0u32, "cangjietest", "testcase test_writeAshmem_readAshmem ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_ashmem_0200
     * @tc.name      : test_writeAshmem_exception
     * @tc.desc      : Check that MessageSequence.writeAshmem throws BusinessException 1900003 when the Ashmem is closed.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_writeAshmem_exception(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_writeAshmem_exception begins.")
        let ashmem = Ashmem.create("rpc_ashmem_closed", 1024i32)
        ashmem.closeAshmem()
        let data = MessageSequence.create()
        try {
            data.writeAshmem(ashmem)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        } finally {
            data.reclaim()
        }
        Hilog.info(0u32, "cangjietest", "testcase test_writeAshmem_exception ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_ashmem_0300
     * @tc.name      : test_readAshmem_exception
     * @tc.desc      : Check that MessageSequence.readAshmem throws BusinessException 1900004 when no Ashmem was written.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readAshmem_exception(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_readAshmem_exception begins.")
        let data = MessageSequence.create()
        try {
            let _ = data.readAshmem()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        } finally {
            data.reclaim()
        }
        Hilog.info(0u32, "cangjietest", "testcase test_readAshmem_exception ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_ashmem_0400
     * @tc.name      : test_parcelable_marshalling_unmarshalling
     * @tc.desc      : Check that Parcelable.marshalling and Parcelable.unmarshalling round-trip data via MessageSequence.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_parcelable_marshalling_unmarshalling(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_parcelable_marshalling_unmarshalling begins.")
        let data = MessageSequence.create()
        let p = TestAshmemParcelable(42i32, "cangjie")
        let marshallOk = p.marshalling(data)
        @Expect(marshallOk, true)
        data.rewindRead(0u32)
        let p2 = TestAshmemParcelable(0i32, "")
        let unmarshallOk = p2.unmarshalling(data)
        @Expect(unmarshallOk, true)
        @Expect(p2.num, 42i32)
        @Expect(p2.str, "cangjie")
        data.reclaim()
        Hilog.info(0u32, "cangjietest", "testcase test_parcelable_marshalling_unmarshalling ends.")
    }
}

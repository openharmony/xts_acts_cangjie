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
class Test_rpc {
    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0100
     * @tc.name      : test_InterfaceToken
     * @tc.desc      : Check whether the writeInterfaceToken interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_InterfaceToken(): Unit {
        let data = MessageSequence.create()
        let str = "aaa"
        data.writeInterfaceToken(str)
        let interfaceToken = data.readInterfaceToken()
        @Expect(interfaceToken, str)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0200
     * @tc.name      : test_Size
     * @tc.desc      : Check whether the getSize interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Size(): Unit {
        let data = MessageSequence.create()
        var result = data.getSize()
        @Expect(result, 0)
        let expectNum: UInt32 = 16
        data.writeString('Hello World')
        data.setSize(expectNum)
        result = data.getSize()
        @Expect(result, expectNum)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0300
     * @tc.name      : test_Capacity
     * @tc.desc      : Check whether the setCapacity interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Capacity(): Unit {
        let data = MessageSequence.create()
        var result = data.getCapacity()
        @Expect(result, 0)
        let expectNum: UInt32 = 100
        data.setCapacity(expectNum)
        result = data.getCapacity()
        @Expect(result, expectNum)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0400
     * @tc.name      : test_getWritableBytes
     * @tc.desc      : Check whether the getWritableBytes interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getWritableBytes(): Unit {
        let data = MessageSequence.create()
        var result = data.getWritableBytes()
        @Expect(result, 0)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0500
     * @tc.name      : test_getReadableBytes
     * @tc.desc      : Check whether the getReadableBytes interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getReadableBytes(): Unit {
        let data = MessageSequence.create()
        var result = data.getReadableBytes()
        @Expect(result, 0)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0600
     * @tc.name      : test_getReadPosition
     * @tc.desc      : Check whether the getReadPosition interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getReadPosition(): Unit {
        let data = MessageSequence.create()
        var result = data.getReadPosition()
        @Expect(result, 0)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0700
     * @tc.name      : test_getWritePosition
     * @tc.desc      : Check whether the getWritePosition interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getWritePosition(): Unit {
        let data = MessageSequence.create()
        data.writeInt(10)
        var result = data.getWritePosition()
        @Expect(result, 4)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0800
     * @tc.name      : test_rewindRead
     * @tc.desc      : Check whether the rewindRead interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rewindRead(): Unit {
        let data = MessageSequence.create()
        data.writeInt(12)
        data.writeString("sequence")
        let number1 = data.readInt()
        @Expect(number1, 12)
        data.rewindRead(0)
        let number2 = data.readInt()
        @Expect(number2, 12)
        data.reclaim()
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_Test_rpc_0900
     * @tc.name      : test_rewindWrite
     * @tc.desc      : Check whether the rewindWrite interface in the RPC meets the expectation.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rewindWrite(): Unit {
        let data = MessageSequence.create()
        data.writeInt(4)
        data.rewindWrite(0)
        data.writeInt(5)
        let number = data.readInt()
        @Expect(number, 5)
        data.reclaim()
    }
}

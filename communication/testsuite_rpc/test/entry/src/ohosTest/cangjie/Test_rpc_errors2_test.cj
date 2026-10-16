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
import kit.IPCKit.*
import ohos.base.*
import ohos.hilog.Hilog
import std.collection.ArrayList
import ohos.business_exception.*

@Test
class Test_rpc_errors2 {
    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0100
     * @tc.name      : Test_MapReadonly_SuccessPath
     * @tc.desc      : Cover Ashmem.mapReadonlyAshmem success path, aligned with ACTS SUB_DSoftbus_IPC_API_Ashmem_0350
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MapReadonly_SuccessPath(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_MapReadonly_SuccessPath begins.")
        let ash = Ashmem.create("rpc_err2_mapro", 1024i32)
        ash.mapReadonlyAshmem()
        @Expect(true)
        ash.unmapAshmem()
        ash.closeAshmem()
        Hilog.info(0u32, "cangjietest", "testcase Test_MapReadonly_SuccessPath ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0200
     * @tc.name      : Test_MapReadWrite_DataRoundTrip
     * @tc.desc      : Cover Ashmem.mapReadWriteAshmem with a data write/read round trip, aligned with ACTS SUB_DSoftbus_IPC_API_Ashmem data cases. The declared 1900001 is not reachable on real device.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MapReadWrite_DataRoundTrip(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_MapReadWrite_DataRoundTrip begins.")
        let ash = Ashmem.create("rpc_err2_maprw", 1024i32)
        ash.mapReadWriteAshmem()
        let wbuf: Array<Byte> = [1u8, 2u8, 3u8, 4u8, 5u8]
        ash.writeDataToAshmem(wbuf, 5i64, 0i64)
        let rbuf = ash.readDataFromAshmem(5i64, 0i64)
        @Expect(rbuf.size, 5)
        @Expect(rbuf[0], 1u8)
        @Expect(rbuf[4], 5u8)
        ash.unmapAshmem()
        ash.closeAshmem()
        Hilog.info(0u32, "cangjietest", "testcase Test_MapReadWrite_DataRoundTrip ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0300
     * @tc.name      : Test_MapTyped_UnmapRemapChain
     * @tc.desc      : Cover Ashmem.mapTypedAshmem with a map/unmap/remap chain, aligned with ACTS SUB_DSoftbus_IPC_API_Ashmem_0340. The declared 1900001 is not reachable on real device.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MapTyped_UnmapRemapChain(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_MapTyped_UnmapRemapChain begins.")
        let ash = Ashmem.create("rpc_err2_mapt", 1024i32)
        ash.mapTypedAshmem(Ashmem.PROT_READ)
        @Expect(true)
        ash.unmapAshmem()
        ash.mapReadWriteAshmem()
        @Expect(true)
        ash.unmapAshmem()
        ash.closeAshmem()
        Hilog.info(0u32, "cangjietest", "testcase Test_MapTyped_UnmapRemapChain ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0400
     * @tc.name      : Test_SetProtection_SuccessSwitch
     * @tc.desc      : Cover Ashmem.setProtectionType with successive protection switches, aligned with ACTS SUB_DSoftbus_IPC_API_Ashmem_0360. The declared 1900002 is not reachable on real device.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_SetProtection_SuccessSwitch(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_SetProtection_SuccessSwitch begins.")
        let ash = Ashmem.create("rpc_err2_prot", 1024i32)
        ash.setProtectionType(Ashmem.PROT_WRITE)
        ash.setProtectionType(Ashmem.PROT_READ)
        ash.setProtectionType(Ashmem.PROT_NONE)
        ash.setProtectionType(Ashmem.PROT_READ)
        @Expect(true)
        ash.closeAshmem()
        Hilog.info(0u32, "cangjietest", "testcase Test_SetProtection_SuccessSwitch ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0500
     * @tc.name      : Test_Err_SetCapacity_UseAfterRelease
     * @tc.desc      : Reclaim the sequence first, then call setCapacity(100) as the only call inside try; measured 1900009 (declared 1900009/1900011).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_SetCapacity_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_SetCapacity_UseAfterRelease begins.")
        let data = MessageSequence.create()
        data.writeInt(42i32)
        data.reclaim()
        try {
            data.setCapacity(100u32)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "setCapacity after reclaim code=" + e.code.toString())
            @Expect(e.code, 1900009i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_SetCapacity_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0600
     * @tc.name      : Test_Err_WriteParcelable_UseAfterRelease
     * @tc.desc      : Reclaim the sequence first, then call writeParcelable as the only call inside try; measured 1900010 (declared 1900009).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteParcelable_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_WriteParcelable_UseAfterRelease begins.")
        let data = MessageSequence.create()
        data.reclaim()
        let p = TestAshmemParcelable(7i32, "err2")
        try {
            data.writeParcelable<TestAshmemParcelable>(p)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "writeParcelable after reclaim code=" + e.code.toString())
            @Expect(e.code, 1900010i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_WriteParcelable_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0700
     * @tc.name      : Test_Err_WriteParcelableArray_UseAfterRelease
     * @tc.desc      : Reclaim the sequence first, then call writeParcelableArray as the only call inside try; measured 1900010 (declared 1900009).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteParcelableArray_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_WriteParcelableArray_UseAfterRelease begins.")
        let data = MessageSequence.create()
        data.reclaim()
        let arr = [TestAshmemParcelable(1i32, "a"), TestAshmemParcelable(2i32, "b")]
        try {
            data.writeParcelableArray<TestAshmemParcelable>(arr)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "writeParcelableArray after reclaim code=" + e.code.toString())
            @Expect(e.code, 1900010i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_WriteParcelableArray_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0800
     * @tc.name      : Test_Err_ReadParcelable_Empty
     * @tc.desc      : Call readParcelable on an empty sequence as the only call inside try; measured 1900010 (declared 1900010/1900012).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadParcelable_Empty(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ReadParcelable_Empty begins.")
        let data = MessageSequence.create()
        let p = TestAshmemParcelable(0i32, "")
        try {
            data.readParcelable<TestAshmemParcelable>(p)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "readParcelable on empty code=" + e.code.toString())
            @Expect(e.code, 1900010i32)
        }
        data.reclaim()
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ReadParcelable_Empty ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_0900
     * @tc.name      : Test_Err_ReadParcelableArray_Empty
     * @tc.desc      : Call readParcelableArray on an empty sequence as the only call inside try; measured 401 (declared 1900010/1900012).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadParcelableArray_Empty(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ReadParcelableArray_Empty begins.")
        let data = MessageSequence.create()
        let arr = [TestAshmemParcelable(0i32, ""), TestAshmemParcelable(0i32, "")]
        try {
            data.readParcelableArray<TestAshmemParcelable>(arr)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "readParcelableArray on empty code=" + e.code.toString())
            @Expect(e.code, 401i32)
        }
        data.reclaim()
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ReadParcelableArray_Empty ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_1000
     * @tc.name      : Test_Err_WriteAshmem_UseAfterRelease
     * @tc.desc      : Reclaim the sequence first, then call writeAshmem as the only call
     *                 inside try; measured 1900009 (declared 1900003, not reachable).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WriteAshmem_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_WriteAshmem_UseAfterRelease begins.")
        let ash = Ashmem.create("rpc_err2_wash", 1024i32)
        let data = MessageSequence.create()
        data.reclaim()
        try {
            data.writeAshmem(ash)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900009i32)
        }
        ash.closeAshmem()
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_WriteAshmem_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_rpc_errors2_1100
     * @tc.name      : Test_Err_ReadAshmem_UseAfterRelease
     * @tc.desc      : Reclaim the sequence first, then call readAshmem as the only call
     *                 inside try; measured 1900010 (declared 1900004, not reachable).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ReadAshmem_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ReadAshmem_UseAfterRelease begins.")
        let data = MessageSequence.create()
        data.reclaim()
        try {
            let got = data.readAshmem()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1900010i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ReadAshmem_UseAfterRelease ends.")
    }
}

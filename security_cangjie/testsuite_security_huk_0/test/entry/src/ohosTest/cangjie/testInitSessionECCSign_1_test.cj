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
import std.collection.*
import ohos.base.*
import ohos.security.huks.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class testInitSessionECCSign_1 {

    /*
     * @tc.number    : Sub_Cangjie_security_huks_91500
     * @tc.name      : TestCase_3
     * @tc.desc      : test GenerateKeyItem ECC with key name:  #5%23.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem(" #5%23",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem(" #5%23", HuksOptions()), true)
            let signHandle = initSession(" #5%23",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession(" #5%23",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem(" #5%23", HuksOptions())
            @Expect("assertion#647: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_91600
     * @tc.name      : TestCase_4
     * @tc.desc      : test GenerateKeyItem ECC with key name: 1234567890.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("1234567890",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("1234567890", HuksOptions()), true)
            let signHandle = initSession("1234567890",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("1234567890",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("1234567890", HuksOptions())
            @Expect("assertion#648: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_91700
     * @tc.name      : TestCase_5
     * @tc.desc      : test GenerateKeyItem ECC with key name: KBCWEUYFI.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("KBCWEUYFI",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("KBCWEUYFI", HuksOptions()), true)
            let signHandle = initSession("KBCWEUYFI",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("KBCWEUYFI",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("KBCWEUYFI", HuksOptions())
            @Expect("assertion#649: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_91800
     * @tc.name      : TestCase_6
     * @tc.desc      : test GenerateKeyItem ECC with key name: 8927(@*$#&).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("8927(@*$#&)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("8927(@*$#&)", HuksOptions()), true)
            let signHandle = initSession("8927(@*$#&)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("8927(@*$#&)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("8927(@*$#&)", HuksOptions())
            @Expect("assertion#650: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_91900
     * @tc.name      : TestCase_7
     * @tc.desc      : test GenerateKeyItem ECC with key name: NS9jhi)#&($758).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("NS9jhi)#&($758)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("NS9jhi)#&($758)", HuksOptions()), true)
            let signHandle = initSession("NS9jhi)#&($758)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("NS9jhi)#&($758)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("NS9jhi)#&($758)", HuksOptions())
            @Expect("assertion#651: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92000
     * @tc.name      : TestCase_8
     * @tc.desc      : test GenerateKeyItem ECC with key name: q3.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("q3",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("q3", HuksOptions()), true)
            let signHandle = initSession("q3",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("q3",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("q3", HuksOptions())
            @Expect("assertion#652: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92100
     * @tc.name      : TestCase_9
     * @tc.desc      : test GenerateKeyItem ECC with key name: 123.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("123",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes()))
            @Assert(hasKeyItem("123", HuksOptions()), true)
            let signHandle = initSession("123",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("123",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("123", HuksOptions())
            @Expect("assertion#653: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92200
     * @tc.name      : TestCase_10
     * @tc.desc      : test GenerateKeyItem ECC with key name: 456.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("456",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes()))
            @Assert(hasKeyItem("456", HuksOptions()), true)
            let signHandle = initSession("456",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("456",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("456", HuksOptions())
            @Expect("assertion#654: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92300
     * @tc.name      : TestCase_11
     * @tc.desc      : test GenerateKeyItem ECC with key name: 789.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("789",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes()))
            @Assert(hasKeyItem("789", HuksOptions()), true)
            let signHandle = initSession("789",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("789",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("789", HuksOptions())
            @Expect("assertion#655: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92400
     * @tc.name      : TestCase_12
     * @tc.desc      : test GenerateKeyItem ECC with key name: !@#$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("!@#$",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: Bytes()))
            @Assert(hasKeyItem("!@#$", HuksOptions()), true)
            let signHandle = initSession("!@#$",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("!@#$",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))], inData: sign
                )).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("!@#$", HuksOptions())
            @Expect("assertion#656: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92500
     * @tc.name      : TestCase_13
     * @tc.desc      : test GenerateKeyItem ECC with key name: %^&*.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("%^&*",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes()))
            @Assert(hasKeyItem("%^&*", HuksOptions()), true)
            let signHandle = initSession("%^&*",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("%^&*",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("%^&*", HuksOptions())
            @Expect("assertion#657: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92600
     * @tc.name      : TestCase_14
     * @tc.desc      : test GenerateKeyItem ECC with key name: 01294hrew.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("01294hrew",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes()))
            @Assert(hasKeyItem("01294hrew", HuksOptions()), true)
            let signHandle = initSession("01294hrew",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("01294hrew",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("01294hrew", HuksOptions())
            @Expect("assertion#658: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92800
     * @tc.name      : TestCase_16
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#660: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_92900
     * @tc.name      : TestCase_17
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#661: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93100
     * @tc.name      : TestCase_19
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#663: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93200
     * @tc.name      : TestCase_20
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#664: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93300
     * @tc.name      : TestCase_21
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#665: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93400
     * @tc.name      : TestCase_22
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#666: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93500
     * @tc.name      : TestCase_23
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#667: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93600
     * @tc.name      : TestCase_24
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#668: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93700
     * @tc.name      : TestCase_25
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#669: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93800
     * @tc.name      : TestCase_26
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#670: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_93900
     * @tc.name      : TestCase_27
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#671: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_94000
     * @tc.name      : TestCase_28
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#672: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_94100
     * @tc.name      : TestCase_29
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#673: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_94200
     * @tc.name      : TestCase_30
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#674: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_94800
     * @tc.name      : TestCase_36
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#680: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_94900
     * @tc.name      : TestCase_37
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#681: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95000
     * @tc.name      : TestCase_38
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#682: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95100
     * @tc.name      : TestCase_39
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#683: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95200
     * @tc.name      : TestCase_40
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#684: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95300
     * @tc.name      : TestCase_41
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#685: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95400
     * @tc.name      : TestCase_42
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#686: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95500
     * @tc.name      : TestCase_43
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#687: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95600
     * @tc.name      : TestCase_44
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#688: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95700
     * @tc.name      : TestCase_45
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#689: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_95800
     * @tc.name      : TestCase_46
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#690: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_97600
     * @tc.name      : TestCase_64
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#708: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_97700
     * @tc.name      : TestCase_65
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#709: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_97800
     * @tc.name      : TestCase_66
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#710: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000014i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_97900
     * @tc.name      : TestCase_67
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#711: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_98000
     * @tc.name      : TestCase_68
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#712: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_98200
     * @tc.name      : TestCase_70
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#714: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_99200
     * @tc.name      : TestCase_80
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#724: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_99500
     * @tc.name      : TestCase_83
     * @tc.desc      : test GenerateKeyItem ECC with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1", HuksOptions()), true)
            let signHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let sign = finishSession(signHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes())).handle
            updateSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: "".toArray()), token: Bytes())
            let verify = finishSession(verifyHandle,
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Assert(verify.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect("assertion#727: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 ends.")
    }
}

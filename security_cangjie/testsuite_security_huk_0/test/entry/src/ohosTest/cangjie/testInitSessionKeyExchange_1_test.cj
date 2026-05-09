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
class testInitSessionKeyExchange_1 {

    /*
     * @tc.number    : Sub_Cangjie_security_huks_82400
     * @tc.name      : TestCase_1
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "cangjietest", "", "would throw exception")
        try {
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#556: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_82600
     * @tc.name      : TestCase_3
     * @tc.desc      : test Key Exchange with key name:  #5%23.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))]
            generateKeyItem(" #5%23", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem(" #5%23.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem(" #5%23", HuksOptions())
            let publicKeyB = exportKeyItem(" #5%23.2nd", HuksOptions())
            let handle1 = initSession(" #5%23.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession(" #5%23.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem(" #5%23", HuksOptions())
            deleteKeyItem(" #5%23.2nd", HuksOptions())
            deleteKeyItem(" #5%23.finish01", HuksOptions())
            deleteKeyItem(" #5%23.finish02", HuksOptions())
            @Expect("assertion#558: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_82700
     * @tc.name      : TestCase_4
     * @tc.desc      : test Key Exchange with key name: 1234567890.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))]
            generateKeyItem("1234567890", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("1234567890.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("1234567890", HuksOptions())
            let publicKeyB = exportKeyItem("1234567890.2nd", HuksOptions())
            let handle1 = initSession("1234567890.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB)
            ).handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("1234567890.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA)
            ).handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("1234567890", HuksOptions())
            deleteKeyItem("1234567890.2nd", HuksOptions())
            deleteKeyItem("1234567890.finish01", HuksOptions())
            deleteKeyItem("1234567890.finish02", HuksOptions())
            @Expect("assertion#559: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_82800
     * @tc.name      : TestCase_5
     * @tc.desc      : test Key Exchange with key name: KBCWEUYFI.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))]
            generateKeyItem("KBCWEUYFI", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("KBCWEUYFI.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("KBCWEUYFI", HuksOptions())
            let publicKeyB = exportKeyItem("KBCWEUYFI.2nd", HuksOptions())
            let handle1 = initSession("KBCWEUYFI.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("KBCWEUYFI.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("KBCWEUYFI", HuksOptions())
            deleteKeyItem("KBCWEUYFI.2nd", HuksOptions())
            deleteKeyItem("KBCWEUYFI.finish01", HuksOptions())
            deleteKeyItem("KBCWEUYFI.finish02", HuksOptions())
            @Expect("assertion#560: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_82900
     * @tc.name      : TestCase_6
     * @tc.desc      : test Key Exchange with key name: 8927(@*$#&).
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))]
            generateKeyItem("8927(@*$#&)", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("8927(@*$#&).2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("8927(@*$#&)", HuksOptions())
            let publicKeyB = exportKeyItem("8927(@*$#&).2nd", HuksOptions())
            let handle1 = initSession("8927(@*$#&).finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB
            )).handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("8927(@*$#&).finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA
            )).handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("8927(@*$#&)", HuksOptions())
            deleteKeyItem("8927(@*$#&).2nd", HuksOptions())
            deleteKeyItem("8927(@*$#&).finish01", HuksOptions())
            deleteKeyItem("8927(@*$#&).finish02", HuksOptions())
            @Expect("assertion#561: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83000
     * @tc.name      : TestCase_7
     * @tc.desc      : test Key Exchange with key name: NS9jhi)#&($758).
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))]
            generateKeyItem("NS9jhi)#&($758)", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("NS9jhi)#&($758).2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("NS9jhi)#&($758)", HuksOptions())
            let publicKeyB = exportKeyItem("NS9jhi)#&($758).2nd", HuksOptions())
            let handle1 = initSession("NS9jhi)#&($758).finish01",
                HuksOptions(properties: genAgreeParams, inData: publicKeyB)).handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("NS9jhi)#&($758).finish02",
                HuksOptions(properties: genAgreeParams, inData: publicKeyA)).handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("NS9jhi)#&($758)", HuksOptions())
            deleteKeyItem("NS9jhi)#&($758).2nd", HuksOptions())
            deleteKeyItem("NS9jhi)#&($758).finish01", HuksOptions())
            deleteKeyItem("NS9jhi)#&($758).finish02", HuksOptions())
            @Expect("assertion#562: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83100
     * @tc.name      : TestCase_8
     * @tc.desc      : test Key Exchange with key name: q3.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))]
            generateKeyItem("q3", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("q3.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("q3", HuksOptions())
            let publicKeyB = exportKeyItem("q3.2nd", HuksOptions())
            let handle1 = initSession("q3.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB)).handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("q3.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA)).handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("q3", HuksOptions())
            deleteKeyItem("q3.2nd", HuksOptions())
            deleteKeyItem("q3.finish01", HuksOptions())
            deleteKeyItem("q3.finish02", HuksOptions())
            @Expect("assertion#563: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83200
     * @tc.name      : TestCase_9
     * @tc.desc      : test Key Exchange with key name: 123.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))]
            generateKeyItem("123", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("123.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("123", HuksOptions())
            let publicKeyB = exportKeyItem("123.2nd", HuksOptions())
            let handle1 = initSession("123.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("123.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("123", HuksOptions())
            deleteKeyItem("123.2nd", HuksOptions())
            deleteKeyItem("123.finish01", HuksOptions())
            deleteKeyItem("123.finish02", HuksOptions())
            @Expect("assertion#564: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83300
     * @tc.name      : TestCase_10
     * @tc.desc      : test Key Exchange with key name: 456.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))]
            generateKeyItem("456", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("456.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("456", HuksOptions())
            let publicKeyB = exportKeyItem("456.2nd", HuksOptions())
            let handle1 = initSession("456.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("456.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("456", HuksOptions())
            deleteKeyItem("456.2nd", HuksOptions())
            deleteKeyItem("456.finish01", HuksOptions())
            deleteKeyItem("456.finish02", HuksOptions())
            @Expect("assertion#565: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83400
     * @tc.name      : TestCase_11
     * @tc.desc      : test Key Exchange with key name: 789.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))]
            generateKeyItem("789", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("789.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("789", HuksOptions())
            let publicKeyB = exportKeyItem("789.2nd", HuksOptions())
            let handle1 = initSession("789.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("789.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("789", HuksOptions())
            deleteKeyItem("789.2nd", HuksOptions())
            deleteKeyItem("789.finish01", HuksOptions())
            deleteKeyItem("789.finish02", HuksOptions())
            @Expect("assertion#566: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83500
     * @tc.name      : TestCase_12
     * @tc.desc      : test Key Exchange with key name: !@#$.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))]
            generateKeyItem("!@#$", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("!@#$.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("!@#$", HuksOptions())
            let publicKeyB = exportKeyItem("!@#$.2nd", HuksOptions())
            let handle1 = initSession("!@#$.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("!@#$.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("!@#$", HuksOptions())
            deleteKeyItem("!@#$.2nd", HuksOptions())
            deleteKeyItem("!@#$.finish01", HuksOptions())
            deleteKeyItem("!@#$.finish02", HuksOptions())
            @Expect("assertion#567: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83600
     * @tc.name      : TestCase_13
     * @tc.desc      : test Key Exchange with key name: %^&*.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))]
            generateKeyItem("%^&*", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("%^&*.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("%^&*", HuksOptions())
            let publicKeyB = exportKeyItem("%^&*.2nd", HuksOptions())
            let handle1 = initSession("%^&*.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("%^&*.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("%^&*", HuksOptions())
            deleteKeyItem("%^&*.2nd", HuksOptions())
            deleteKeyItem("%^&*.finish01", HuksOptions())
            deleteKeyItem("%^&*.finish02", HuksOptions())
            @Expect("assertion#568: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83700
     * @tc.name      : TestCase_14
     * @tc.desc      : test Key Exchange with key name: 01294hrew.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))]
            generateKeyItem("01294hrew", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("01294hrew.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("01294hrew", HuksOptions())
            let publicKeyB = exportKeyItem("01294hrew.2nd", HuksOptions())
            let handle1 = initSession("01294hrew.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("01294hrew.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("01294hrew", HuksOptions())
            deleteKeyItem("01294hrew.2nd", HuksOptions())
            deleteKeyItem("01294hrew.finish01", HuksOptions())
            deleteKeyItem("01294hrew.finish02", HuksOptions())
            @Expect("assertion#569: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_83900
     * @tc.name      : TestCase_16
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#571: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84000
     * @tc.name      : TestCase_17
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#572: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84200
     * @tc.name      : TestCase_19
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#574: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84300
     * @tc.name      : TestCase_20
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#575: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84400
     * @tc.name      : TestCase_21
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#576: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84500
     * @tc.name      : TestCase_22
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#577: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84600
     * @tc.name      : TestCase_23
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#578: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84700
     * @tc.name      : TestCase_24
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#579: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84800
     * @tc.name      : TestCase_25
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#580: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_84900
     * @tc.name      : TestCase_26
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#581: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_85000
     * @tc.name      : TestCase_27
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#582: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_85100
     * @tc.name      : TestCase_28
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#583: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_85200
     * @tc.name      : TestCase_29
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#584: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_85300
     * @tc.name      : TestCase_30
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#585: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_85900
     * @tc.name      : TestCase_36
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#591: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86000
     * @tc.name      : TestCase_37
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#592: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86100
     * @tc.name      : TestCase_38
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#593: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86200
     * @tc.name      : TestCase_39
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#594: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86300
     * @tc.name      : TestCase_40
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#595: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86400
     * @tc.name      : TestCase_41
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#596: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86500
     * @tc.name      : TestCase_42
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#597: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86600
     * @tc.name      : TestCase_43
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#598: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86700
     * @tc.name      : TestCase_44
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#599: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86800
     * @tc.name      : TestCase_45
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#600: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_86900
     * @tc.name      : TestCase_46
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#601: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_88700
     * @tc.name      : TestCase_64
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#619: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_88800
     * @tc.name      : TestCase_65
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#620: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_88900
     * @tc.name      : TestCase_66
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#621: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_89000
     * @tc.name      : TestCase_67
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#622: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_89100
     * @tc.name      : TestCase_68
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#623: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_89300
     * @tc.name      : TestCase_70
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#625: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_90300
     * @tc.name      : TestCase_80
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#635: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_90600
     * @tc.name      : TestCase_83
     * @tc.desc      : test Key Exchange with key name: keyAlias1.
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
            let genAgreeParams = [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))]
            generateKeyItem("keyAlias1", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            generateKeyItem("keyAlias1.2nd", HuksOptions(properties: genAgreeParams, inData: Bytes()))
            let publicKeyA = exportKeyItem("keyAlias1", HuksOptions())
            let publicKeyB = exportKeyItem("keyAlias1.2nd", HuksOptions())
            let handle1 = initSession("keyAlias1.finish01", HuksOptions(properties: genAgreeParams, inData: publicKeyB))
                .handle
            updateSession(handle1, HuksOptions(properties: genAgreeParams, inData: publicKeyB))
            let out1 = finishSession(handle1, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            let handle2 = initSession("keyAlias1.finish02", HuksOptions(properties: genAgreeParams, inData: publicKeyA))
                .handle
            updateSession(handle2, HuksOptions(properties: genAgreeParams, inData: publicKeyA), token: Bytes())
            let out2 = finishSession(handle2, HuksOptions(properties: genAgreeParams, inData: Bytes()), token: Bytes())
                .getOrThrow()
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.2nd", HuksOptions())
            deleteKeyItem("keyAlias1.finish01", HuksOptions())
            deleteKeyItem("keyAlias1.finish02", HuksOptions())
            @Expect("assertion#638: not throw", "would throw exception")
        } catch (e: BusinessException) {
            let b = (e.code == 12000003i32) || (e.code == 401i32) || (e.code == 12000012i32)
            @Expect(b, true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 ends.")
    }
}

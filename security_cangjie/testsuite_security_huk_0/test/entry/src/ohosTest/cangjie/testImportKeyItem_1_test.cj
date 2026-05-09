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
class testImportKeyItem_1 {

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9200
     * @tc.name      : TestCase_3
     * @tc.desc      : test testImportKeyItem with key name:  #5%23.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "cangjietest", "", "generateKeyItem")
        try {
            generateKeyItem(" #5%23",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem(" #5%23", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "define local variable data")
            let data = exportKeyItem(" #5%23", HuksOptions())
            @Assert(data.isEmpty(), false)
            Hilog.info(0u32, "cangjietest", "", "importKeyItem")
            importKeyItem(" #5%23.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem(" #5%23.bak", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "deleteKeyItem")
            deleteKeyItem(" #5%23", HuksOptions())
            Hilog.info(0u32, "cangjietest", "", "deleteKeyBakItem")
            deleteKeyItem(" #5%23.bak", HuksOptions())
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9300
     * @tc.name      : TestCase_4
     * @tc.desc      : test testImportKeyItem with key name: 1234567890.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "", "generateKeyItem")
        try {
            generateKeyItem("1234567890",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("1234567890", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "define local variable data")
            let data = exportKeyItem("1234567890", HuksOptions())
            @Assert(data.isEmpty(), false)
            Hilog.info(0u32, "cangjietest", "", "importKeyItem")
            importKeyItem("1234567890.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("1234567890.bak", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "deleteKeyItem")
            deleteKeyItem("1234567890", HuksOptions())
            Hilog.info(0u32, "cangjietest", "", "deleteKeyBakItem")
            deleteKeyItem("1234567890.bak", HuksOptions())
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9400
     * @tc.name      : TestCase_5
     * @tc.desc      : test testImportKeyItem with key name: KBCWEUYFI.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "cangjietest", "", "generateKeyItem")
        try {
            generateKeyItem("KBCWEUYFI",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("KBCWEUYFI", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "define local variable data")
            let data = exportKeyItem("KBCWEUYFI", HuksOptions())
            @Assert(data.isEmpty(), false)
            Hilog.info(0u32, "cangjietest", "", "importKeyItem")
            importKeyItem("KBCWEUYFI.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("KBCWEUYFI.bak", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "deleteKeyItem")
            deleteKeyItem("KBCWEUYFI", HuksOptions())
            Hilog.info(0u32, "cangjietest", "", "deleteKeyBakItem")
            deleteKeyItem("KBCWEUYFI.bak", HuksOptions())
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9500
     * @tc.name      : TestCase_6
     * @tc.desc      : test testImportKeyItem with key name: 8927(@*$#&).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "cangjietest", "", "generateKeyItem")
        try {
            generateKeyItem("8927(@*$#&)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("8927(@*$#&)", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "define local variable data")
            let data = exportKeyItem("8927(@*$#&)", HuksOptions())
            @Assert(data.isEmpty(), false)
            Hilog.info(0u32, "cangjietest", "", "importKeyItem")
            importKeyItem("8927(@*$#&).bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("8927(@*$#&).bak", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "deleteKeyItem")
            deleteKeyItem("8927(@*$#&)", HuksOptions())
            Hilog.info(0u32, "cangjietest", "", "deleteKeyBakItem")
            deleteKeyItem("8927(@*$#&).bak", HuksOptions())
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9600
     * @tc.name      : TestCase_7
     * @tc.desc      : test testImportKeyItem with key name: NS9jhi)#&($758).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "cangjietest", "", "generateKeyItem")
        try {
            generateKeyItem("NS9jhi)#&($758)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("NS9jhi)#&($758)", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "define local variable data")
            let data = exportKeyItem("NS9jhi)#&($758)", HuksOptions())
            @Assert(data.isEmpty(), false)
            Hilog.info(0u32, "cangjietest", "", "importKeyItem")
            importKeyItem("NS9jhi)#&($758).bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("NS9jhi)#&($758).bak", HuksOptions()), true)
            Hilog.info(0u32, "cangjietest", "", "deleteKeyItem")
            deleteKeyItem("NS9jhi)#&($758)", HuksOptions())
            Hilog.info(0u32, "cangjietest", "", "deleteKeyBakItem")
            deleteKeyItem("NS9jhi)#&($758).bak", HuksOptions())
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9700
     * @tc.name      : TestCase_8
     * @tc.desc      : test testImportKeyItem with key name: q3.
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
            let data = exportKeyItem("q3", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("q3.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes()))
            @Assert(hasKeyItem("q3.bak", HuksOptions()), true)
            deleteKeyItem("q3", HuksOptions())
            deleteKeyItem("q3.bak", HuksOptions())
            @Expect("assertion#2: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9800
     * @tc.name      : TestCase_9
     * @tc.desc      : test testImportKeyItem with key name: 123.
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
            let data = exportKeyItem("123", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("123.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes()))
            @Assert(hasKeyItem("123.bak", HuksOptions()), true)
            deleteKeyItem("123", HuksOptions())
            deleteKeyItem("123.bak", HuksOptions())
            @Expect("assertion#3: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_9900
     * @tc.name      : TestCase_10
     * @tc.desc      : test testImportKeyItem with key name: 456.
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
            let data = exportKeyItem("456", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("456.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes()))
            @Assert(hasKeyItem("456.bak", HuksOptions()), true)
            deleteKeyItem("456", HuksOptions())
            deleteKeyItem("456.bak", HuksOptions())
            @Expect("assertion#4: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10000
     * @tc.name      : TestCase_11
     * @tc.desc      : test testImportKeyItem with key name: 789.
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
            let data = exportKeyItem("789", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("789.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes()))
            @Assert(hasKeyItem("789.bak", HuksOptions()), true)
            deleteKeyItem("789", HuksOptions())
            deleteKeyItem("789.bak", HuksOptions())
            @Expect("assertion#5: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10100
     * @tc.name      : TestCase_12
     * @tc.desc      : test testImportKeyItem with key name: !@#$.
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
            let data = exportKeyItem("!@#$", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("!@#$.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))],
                    inData: Bytes()))
            @Assert(hasKeyItem("!@#$.bak", HuksOptions()), true)
            deleteKeyItem("!@#$", HuksOptions())
            deleteKeyItem("!@#$.bak", HuksOptions())
            @Expect("assertion#6: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10200
     * @tc.name      : TestCase_13
     * @tc.desc      : test testImportKeyItem with key name: %^&*.
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
            let data = exportKeyItem("%^&*", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("%^&*.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes()))
            @Assert(hasKeyItem("%^&*.bak", HuksOptions()), true)
            deleteKeyItem("%^&*", HuksOptions())
            deleteKeyItem("%^&*.bak", HuksOptions())
            @Expect("assertion#7: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10300
     * @tc.name      : TestCase_14
     * @tc.desc      : test testImportKeyItem with key name: 01294hrew.
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
            let data = exportKeyItem("01294hrew", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("01294hrew.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes()))
            @Assert(hasKeyItem("01294hrew.bak", HuksOptions()), true)
            deleteKeyItem("01294hrew", HuksOptions())
            deleteKeyItem("01294hrew.bak", HuksOptions())
            @Expect("assertion#8: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10500
     * @tc.name      : TestCase_16
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#10: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10600
     * @tc.name      : TestCase_17
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#11: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10800
     * @tc.name      : TestCase_19
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#13: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_10900
     * @tc.name      : TestCase_20
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#14: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11000
     * @tc.name      : TestCase_21
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#15: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11100
     * @tc.name      : TestCase_22
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#16: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11200
     * @tc.name      : TestCase_23
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#17: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11300
     * @tc.name      : TestCase_24
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#18: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11400
     * @tc.name      : TestCase_25
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#19: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11500
     * @tc.name      : TestCase_26
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#20: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11600
     * @tc.name      : TestCase_27
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#21: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11700
     * @tc.name      : TestCase_28
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#22: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11800
     * @tc.name      : TestCase_29
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#23: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_11900
     * @tc.name      : TestCase_30
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#24: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_12500
     * @tc.name      : TestCase_36
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#30: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_12600
     * @tc.name      : TestCase_37
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#31: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_12700
     * @tc.name      : TestCase_38
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#32: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_12800
     * @tc.name      : TestCase_39
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#33: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_12900
     * @tc.name      : TestCase_40
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#34: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_13000
     * @tc.name      : TestCase_41
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#35: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_13100
     * @tc.name      : TestCase_42
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#36: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_13200
     * @tc.name      : TestCase_43
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#37: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_13300
     * @tc.name      : TestCase_44
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#38: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_13400
     * @tc.name      : TestCase_45
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#39: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_13500
     * @tc.name      : TestCase_46
     * @tc.desc      : test testImportKeyItem with key name: keyAlias1.
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
            let data = exportKeyItem("keyAlias1", HuksOptions())
            @Assert(data.isEmpty(), false)
            importKeyItem("keyAlias1.bak",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Assert(hasKeyItem("keyAlias1.bak", HuksOptions()), true)
            deleteKeyItem("keyAlias1", HuksOptions())
            deleteKeyItem("keyAlias1.bak", HuksOptions())
            @Expect("assertion#40: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 ends.")
    }
}

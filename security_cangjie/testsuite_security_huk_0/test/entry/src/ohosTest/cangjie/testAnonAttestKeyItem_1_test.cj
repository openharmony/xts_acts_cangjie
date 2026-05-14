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
class testAnonAttestKeyItem_1 {

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74100
     * @tc.name      : TestCase_7
     * @tc.desc      : test testAnonAttestKeyItem with key name: 789.
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
            generateKeyItem("789",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("789",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("789", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74200
     * @tc.name      : TestCase_8
     * @tc.desc      : test testAnonAttestKeyItem with key name: !@#$.
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
            generateKeyItem("!@#$",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("!@#$",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("!@#$", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74300
     * @tc.name      : TestCase_9
     * @tc.desc      : test testAnonAttestKeyItem with key name: %^&*.
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
            generateKeyItem("%^&*",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("%^&*",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("%^&*", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74400
     * @tc.name      : TestCase_10
     * @tc.desc      : test testAnonAttestKeyItem with key name: 01294hrew.
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
            generateKeyItem("01294hrew",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("01294hrew",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("01294hrew", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74500
     * @tc.name      : TestCase_11
     * @tc.desc      : test testAnonAttestKeyItem with key name: ihe3938(@$^*).
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
            generateKeyItem("ihe3938(@$^*)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("ihe3938(@$^*)",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("ihe3938(@$^*)", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74600
     * @tc.name      : TestCase_12
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))]))
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))]))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74700
     * @tc.name      : TestCase_13
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_74800
     * @tc.name      : TestCase_14
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            generateKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes()))
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_75400
     * @tc.name      : TestCase_20
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_75500
     * @tc.name      : TestCase_21
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_75600
     * @tc.name      : TestCase_22
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_75700
     * @tc.name      : TestCase_23
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_75800
     * @tc.name      : TestCase_24
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_75900
     * @tc.name      : TestCase_25
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_76000
     * @tc.name      : TestCase_26
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_76100
     * @tc.name      : TestCase_27
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_76200
     * @tc.name      : TestCase_28
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_76300
     * @tc.name      : TestCase_29
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                        HuksParamValue.BooleanValue(true))], inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_76400
     * @tc.name      : TestCase_30
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77000
     * @tc.name      : TestCase_36
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77100
     * @tc.name      : TestCase_37
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77200
     * @tc.name      : TestCase_38
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77300
     * @tc.name      : TestCase_39
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77400
     * @tc.name      : TestCase_40
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77500
     * @tc.name      : TestCase_41
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77600
     * @tc.name      : TestCase_42
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77700
     * @tc.name      : TestCase_43
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77800
     * @tc.name      : TestCase_44
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_77900
     * @tc.name      : TestCase_45
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_78000
     * @tc.name      : TestCase_46
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_81400
     * @tc.name      : TestCase_80
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_81700
     * @tc.name      : TestCase_83
     * @tc.desc      : test testAnonAttestKeyItem with key name: keyAlias1.
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
            let chains = anonAttestKeyItem("keyAlias1",
                HuksOptions(properties: [HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true))],
                    inData: Bytes()))
            @Expect(chains.isEmpty(), false)
            deleteKeyItem("keyAlias1", HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 ends.")
    }
}

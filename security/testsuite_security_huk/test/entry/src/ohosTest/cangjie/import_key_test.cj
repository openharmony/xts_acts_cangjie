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

internal import std.unittest.*
import std.unittest.testmacro.*
internal import kit.UniversalKeystoreKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.BusinessException

@Test
class TestSecurityHuksImportKey {
    let genKeyOptionsTest1 = HuksOptions(
        properties: [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
        ]
    )
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0100
     * @tc.name      : test_import_aes
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_aes(): Unit {
        let keyAlias = "test_import_aes_v2"
        clean(keyAlias)
        try {
            let properties = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
            ]
            importKeyItem(keyAlias, HuksOptions(properties: properties, inData: Array<UInt8>(32, {i => UInt8(i & 0xFF)})))
            @Expect(hasKeyItem(keyAlias, HuksOptions()), true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0200
     * @tc.name      : test_import_ecc
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_ecc(): Unit {
        let keyAlias = "test_import_ecc"
        let keyAliasBak = keyAlias + ".bak"
        clean(keyAlias)
        clean(keyAliasBak)
        try {
            let eccData: Array<UInt8> = [
                0x02u8, 0x00u8, 0x00u8, 0x00u8, 0x00u8, 0x01u8, 0x00u8, 0x00u8, 0x20u8, 0x00u8, 0x00u8, 0x00u8, 0x20u8, 0x00u8, 0x00u8, 0x00u8,
                0x20u8, 0x00u8, 0x00u8, 0x00u8, 0xD6u8, 0x35u8, 0x24u8, 0x6Au8, 0xEBu8, 0x08u8, 0x4Du8, 0xACu8, 0x10u8, 0x93u8, 0x2Au8, 0xE3u8,
                0x62u8, 0x19u8, 0xB6u8, 0x7Cu8, 0x82u8, 0xEAu8, 0xC5u8, 0x36u8, 0x2Bu8, 0x7Eu8, 0x1Fu8, 0xBDu8, 0x1Au8, 0x0Cu8, 0xAAu8, 0xB4u8,
                0x3Du8, 0xC8u8, 0xF5u8, 0x0Au8, 0xA3u8, 0xCBu8, 0x34u8, 0x8Fu8, 0xB1u8, 0x4Eu8, 0x54u8, 0xC5u8, 0x5Fu8, 0x1Bu8, 0x46u8, 0xA4u8,
                0x18u8, 0xC3u8, 0xE2u8, 0x51u8, 0xC5u8, 0xAAu8, 0x79u8, 0x61u8, 0x6Cu8, 0xE0u8, 0x6Au8, 0xE0u8, 0x3Au8, 0xC4u8, 0xA3u8, 0x5Cu8,
                0xF0u8, 0xF6u8, 0x9Bu8, 0x44u8, 0x0Du8, 0xBAu8, 0x38u8, 0x3Cu8, 0x49u8, 0xCBu8, 0xCAu8, 0xACu8, 0xFAu8, 0x12u8, 0x20u8, 0x83u8,
                0x37u8, 0x0Cu8, 0x09u8, 0xECu8, 0x4Bu8, 0xEBu8, 0xE3u8, 0x6Fu8, 0xDBu8, 0x40u8, 0xABu8, 0xA8u8, 0x16u8, 0xC6u8, 0x6Cu8, 0x31u8,
                0x65u8, 0xAAu8, 0x00u8, 0x09u8
            ]
            let properties = [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ECC)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_ECC_KEY_SIZE_256)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY)),
                HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.Uint32Value(HuksImportKeyType.HUKS_KEY_TYPE_KEY_PAIR))]
            importKeyItem(keyAlias, HuksOptions(properties: properties, inData: eccData))
            @Expect(hasKeyItem(keyAlias, HuksOptions()), true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
            clean(keyAliasBak)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0300
     * @tc.name      : test_import_empty_alias
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_empty_alias(): Unit {
        let keyAlias = ""
        var flag = false
        try {
            importKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.BytesValue([2u8])
                        )
                    ]
                )
            )
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0400
     * @tc.name      : test_import_none_properties
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_none_properties(): Unit {
        let keyAlias = "test_import"
        var flag = false
        try {
            importKeyItem(
                keyAlias,
                genKeyOptionsTest1
            )
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0500
     * @tc.name      : test_import_none_indata
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_none_indata(): Unit {
        let keyAlias = "test_import"
        clean(keyAlias)
        var flag = false
        try {
            importKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.BytesValue([2u8])
                        )
                    ]
                )
            )
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
            clean(keyAlias)
        }
    }
}

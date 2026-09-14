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
class TestSecurityHuksAes {
    // aes cbc + pkcs7
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Aes_0100
     * @tc.name      : test_encrypt_decrypt_cbc_pkcs7
     * @tc.desc      : test UniversalKeystoreKit initSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_encrypt_decrypt_cbc_pkcs7(): Unit {
        let cases_1308 = [
            ("test_encrypt_decrypt_cbc_pkcs7", "123456"),
            ("test_encrypt_decrypt_cbc_nopadding", "1234567812345678")
        ]
        for ((parameter_0, parameter_1) in cases_1308) {
            let keyAlias = parameter_0
            clean(keyAlias)
            try {
                let plainText = parameter_1
                let iv = "1122334455667788"
                let options = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32)),
                        HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                    ]
                )
                let encOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32)),
                        HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                    ],
                    inData: plainText.toArray()
                )
                generateKeyItem(keyAlias, options)
                let handle1 = initSession(keyAlias, encOptions).handle
                let cipherData = finishSession(handle1, encOptions, token: [])
                let decOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32)),
                        HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                    ]
                )
                let handle2 = initSession(keyAlias, decOptions).handle
                let decData = finishSession(handle2, decOptions, token: [])
                let dec = String.fromUtf8(decData.getOrThrow())
                @Expect(plainText == dec)
                abortSession(handle1, HuksOptions(properties: []))
                abortSession(handle2, HuksOptions(properties: []))
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                clean(keyAlias)
            }

        }
    }

    // aes cbc + nopadding

    // aes ctr + nopadding
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Aes_0300
     * @tc.name      : test_encrypt_decrypt_ctr_nopadding
     * @tc.desc      : test UniversalKeystoreKit initSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_encrypt_decrypt_ctr_nopadding(): Unit {
        let keyAlias = "test_encrypt_decrypt_ctr_nopadding"
        clean(keyAlias)
        try {
            let plainText = "1234567812345678"
            let iv = "1122334455667788"
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.BooleanValue(false)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                ]
            )
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.BooleanValue(false)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, encOptions).handle
            let cipherData = finishSession(handle1, encOptions, token: [])
            let decOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.BooleanValue(false)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                ]
            )
            let handle2 = initSession(keyAlias, decOptions).handle
            let decData = finishSession(handle2, decOptions, token: [])
            let dec = String.fromUtf8(decData.getOrThrow())
            @Expect(plainText == dec)
            abortSession(handle1, HuksOptions(properties: []))
            abortSession(handle2, HuksOptions(properties: []))
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    // aes ecb + pkcs7
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Aes_0400
     * @tc.name      : test_encrypt_decrypt_ecb_pkcs7
     * @tc.desc      : test UniversalKeystoreKit initSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_encrypt_decrypt_ecb_pkcs7(): Unit {
        let cases_1309 = [
            ("test_encrypt_decrypt_ecb_pkcs7", "123456"),
            ("test_encrypt_decrypt_ecb_nopadding", "1234567812345678")
        ]
        for ((parameter_0, parameter_1) in cases_1309) {
            let keyAlias = parameter_0
            clean(keyAlias)
            try {
                let plainText = parameter_1
                let options = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
                    ]
                )
                let encOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
                    ],
                    inData: plainText.toArray()
                )
                generateKeyItem(keyAlias, options)
                let handle1 = initSession(keyAlias, encOptions).handle
                let cipherData = finishSession(handle1, encOptions, token: [])
                let decOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
                    ]
                )
                let handle2 = initSession(keyAlias, decOptions).handle
                let decData = finishSession(handle2, decOptions, token: [])
                let dec = String.fromUtf8(decData.getOrThrow())
                @Expect(false)
                abortSession(handle1, HuksOptions(properties: []))
                abortSession(handle2, HuksOptions(properties: []))
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            } finally {
                clean(keyAlias)
            }

        }
    }

    // aes ecb + nopadding

    // aes gcm + nopadding
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Aes_0600
     * @tc.name      : test_encrypt_decrypt_gcm_nopadding
     * @tc.desc      : test UniversalKeystoreKit initSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_encrypt_decrypt_gcm_nopadding(): Unit {
        let keyAlias = "test_encrypt_decrypt_gcm_nopadding"
        clean(keyAlias)
        try {
            let plainText = "1234567812345678"
            let AEAD = "1234567890123456"
            let Nonce = "123456789012"
            let AAD = "1234567890123456"
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
                ]
            )
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64)),
                    HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.BytesValue([1u8])),
                    HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.BytesValue([2u8])),
                    HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BytesValue([3u8]))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, encOptions).handle
            let cipherData = finishSession(handle1, encOptions, token: []).getOrThrow()
            let decOptions = HuksOptions(properties: [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64)),
                HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.BytesValue([1u8])),
                HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.BytesValue([2u8])),
                HuksParam(
                    HuksTag.HUKS_TAG_AE_TAG,
                    HuksParamValue.BytesValue(cipherData.slice(cipherData.size - 16, 16))
                )
            ].slice(0, cipherData.size - 16))
            let handle2 = initSession(keyAlias, decOptions).handle
            let decData = finishSession(handle2, decOptions, token: [])
            let dec = String.fromUtf8(decData.getOrThrow())
            @Expect(plainText == dec)
            abortSession(handle1, HuksOptions(properties: []))
            abortSession(handle2, HuksOptions(properties: []))
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }
}

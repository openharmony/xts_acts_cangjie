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
                let padding = if (parameter_0.endsWith("nopadding")) {
                    HuksKeyPadding.HUKS_PADDING_NONE
                } else {
                    HuksKeyPadding.HUKS_PADDING_PKCS7
                }
                let iv = "1122334455667788"
                let options = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Uint32Value(
                                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE,
                            HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(padding)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                        HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                    ]
                )
                let encOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE,
                            HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(padding)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                        HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                    ],
                    inData: plainText.toArray()
                )
                generateKeyItem(keyAlias, options)
                let handle1 = initSession(keyAlias, encOptions).handle
                let cipherData = finishSession(handle1, encOptions, token: [])
                let decOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE,
                            HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(padding)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                        HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                    ]
                )
                let handle2 = initSession(keyAlias, decOptions).handle
                let decData = finishSession(handle2,
                    HuksOptions(properties: decOptions.properties, inData: cipherData.getOrThrow()), token: [])
                let dec = String.fromUtf8(decData.getOrThrow())
                @Expect(plainText == dec)
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
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(
                            HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, encOptions).handle
            let cipherData = finishSession(handle1, encOptions, token: [])
            let decOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let handle2 = initSession(keyAlias, decOptions).handle
            let decData = finishSession(handle2,
                HuksOptions(properties: decOptions.properties, inData: cipherData.getOrThrow()), token: [])
            let dec = String.fromUtf8(decData.getOrThrow())
            @Expect(plainText == dec)
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
        let keyAlias = "test_encrypt_decrypt_ecb_pkcs1_v1_5"
        clean(keyAlias)
        try {
            let plainText = "123456"
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_RSA)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(
                            HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_RSA_KEY_SIZE_2048))
                ]
            )
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_RSA)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_RSA_KEY_SIZE_2048)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING,
                        HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PKCS1_V1_5)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                    HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE))
                ]
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, encOptions).handle
            let cipherData = finishSession(handle1,
                HuksOptions(properties: encOptions.properties, inData: plainText.toArray()), token: [])
            let decOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_RSA)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_RSA_KEY_SIZE_2048)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING,
                        HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PKCS1_V1_5)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                    HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE))
                ]
            )
            let handle2 = initSession(keyAlias, decOptions).handle
            let decData = finishSession(handle2,
                HuksOptions(properties: decOptions.properties, inData: cipherData.getOrThrow()), token: [])
            let dec = String.fromUtf8(decData.getOrThrow())
            @Expect(plainText == dec)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

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
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(
                            HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_GCM))
                ]
            )
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_GCM)),
                    HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.BytesValue("1122334455667788".toArray())),
                    HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.BytesValue([2u8])),
                    HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BytesValue([3u8]))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, encOptions).handle
            let cipherData = finishSession(handle1, encOptions, token: []).getOrThrow()
            @Expect(cipherData.size >= 16, true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }
}

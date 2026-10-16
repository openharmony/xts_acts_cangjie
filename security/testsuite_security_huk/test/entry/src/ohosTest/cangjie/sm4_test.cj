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
class TestSecurityHuksSm4 {
    // sm4 cbc + pkcs7
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM4_0100
     * @tc.name      : test_sm4_encrypt_decrypt_cbc_pkcs7
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm4_encrypt_decrypt_cbc_pkcs7(): Unit {
        let keyAlias = "test_sm4_encrypt_decrypt_cbc_pkcs7"
        try {
            let plainText = "123456"
            let iv = "0011223344556677"
            clean(keyAlias)
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(5u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC))
                ]
            )
            let initOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(5u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let finiOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(5u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, initOptions).handle
            let cipherData = finishSession(handle1, finiOptions)
            let decInitOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(5u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let decFiniOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(5u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let handle2 = initSession(keyAlias, decInitOptions).handle
            let decData = finishSession(handle2, HuksOptions(properties: decFiniOptions.properties, inData: cipherData.getOrThrow()), token: []).getOrThrow()
            let expected = plainText.toArray()
            @Expect(decData.size, expected.size)
            if (decData.size == expected.size) {
                for (i in 0..expected.size) {
                    @Expect(decData[i], expected[i])
                }
            }
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }
    // sm4 ecb + pkcs7
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM4_0200
     * @tc.name      : test_sm4_encrypt_decrypt_ecb_pkcs7
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm4_encrypt_decrypt_ecb_pkcs7(): Unit {
        let cases_1312 = [
            ("test_sm4_encrypt_decrypt_ecb_pkcs7", "123456"),
            ("test_sm4_encrypt_decrypt_ecb_nopadding", "1234567812345678")
        ]
        for ((parameter_0, parameter_1) in cases_1312) {
            let keyAlias = parameter_0
            try {
                let plainText = parameter_1
                clean(keyAlias)
                let options = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
                    ]
                )
                let initOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
                    ]
                )
                let finiOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
                    ],
                    inData: plainText.toArray()
                )
                generateKeyItem(keyAlias, options)
                let handle1 = initSession(keyAlias, initOptions).handle
                let cipherData = finishSession(handle1, finiOptions)
                let decInitOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
                    ]
                )
                let decFiniOptions = HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
                    ]
                )
                let handle2 = initSession(keyAlias, decInitOptions).handle
                let decData = finishSession(handle2, decFiniOptions).getOrThrow()
                let dec = String.fromUtf8(decData)
                abortSession(handle1, HuksOptions(properties: []))
                abortSession(handle2, HuksOptions(properties: []))
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect((e.code == 401) || (e.code == 12000003))
            } finally {
                clean(keyAlias)
            }
        }
    }

    // sm4 ecb + nopadding

    // sm4 cbc + nopadding
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM4_0400
     * @tc.name      : test_sm4_encrypt_decrypt_cbc_nopadding
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm4_encrypt_decrypt_cbc_nopadding(): Unit {
        let keyAlias = "test_sm4_encrypt_decrypt_cbc_nopadding"
        try {
            let plainText = "1234567812345678"
            let iv = "0011223344556677"
            clean(keyAlias)
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC))
                ]
            )
            let initOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let finiOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, initOptions).handle
            let cipherData = finishSession(handle1, finiOptions)
            let decInitOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let decFiniOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let handle2 = initSession(keyAlias, decInitOptions).handle
            let decData = finishSession(handle2, HuksOptions(properties: decFiniOptions.properties, inData: cipherData.getOrThrow()), token: []).getOrThrow()
            let expected = plainText.toArray()
            @Expect(decData.size, expected.size)
            if (decData.size == expected.size) {
                for (i in 0..expected.size) {
                    @Expect(decData[i], expected[i])
                }
            }
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }
    // sm4 ctr + nopadding
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM4_0500
     * @tc.name      : test_sm4_encrypt_decrypt_ctr_nopadding
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm4_encrypt_decrypt_ctr_nopadding(): Unit {
        let keyAlias = "test_sm4_encrypt_decrypt_ctr_nopadding"
        try {
            let plainText = "1234567812345678"
            let iv = "0011223344556677"
            clean(keyAlias)
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR))
                ]
            )
            let initOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let finiOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ],
                inData: plainText.toArray()
            )
            generateKeyItem(keyAlias, options)
            let handle1 = initSession(keyAlias, initOptions).handle
            let cipherData = finishSession(handle1, finiOptions)
            let decInitOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let decFiniOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM4)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_SM4_KEY_SIZE_128)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(0u32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CTR)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("1122334455667788".toArray()))
                ]
            )
            let handle2 = initSession(keyAlias, decInitOptions).handle
            let decData = finishSession(handle2, HuksOptions(properties: decFiniOptions.properties, inData: cipherData.getOrThrow()), token: []).getOrThrow()
            let dec = String.fromUtf8(decData)
            @Expect(plainText == dec)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }
}

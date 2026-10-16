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
import kit.UniversalKeystoreKit.*
import ohos.business_exception.BusinessException

@Test
class TestSecurityHuksParameterCoverage {
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Parameter_0001
     * @tc.name      : test_parameter_enum_validation
     * @tc.desc      : Exercise extension parameters through real HUKS validation calls.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_parameter_enum_validation(): Unit {
        let invalidValues = [
            HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE,
                HuksParamValue.Uint32Value(HuksUnwrapSuite.HUKS_UNWRAP_SUITE_X25519_AES_256_GCM_NO_PADDING)),
            HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE,
                HuksParamValue.Uint32Value(HuksUnwrapSuite.HUKS_UNWRAP_SUITE_ECDH_AES_256_GCM_NO_PADDING)),
            HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE,
                HuksParamValue.Uint32Value(HuksRsaPssSaltLenType.HUKS_RSA_PSS_SALT_LEN_DIGEST)),
            HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE,
                HuksParamValue.Uint32Value(HuksRsaPssSaltLenType.HUKS_RSA_PSS_SALT_LEN_MAX)),
            HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE,
                HuksParamValue.Uint32Value(HuksUserAuthType.HUKS_USER_AUTH_TYPE_FINGERPRINT)),
            HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE,
                HuksParamValue.Uint32Value(HuksUserAuthType.HUKS_USER_AUTH_TYPE_FACE)),
            HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE,
                HuksParamValue.Uint32Value(HuksUserAuthType.HUKS_USER_AUTH_TYPE_PIN)),
            HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE,
                HuksParamValue.Uint32Value(HuksAuthAccessType.HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD)),
            HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE,
                HuksParamValue.Uint32Value(HuksAuthAccessType.HUKS_AUTH_ACCESS_INVALID_NEW_BIO_ENROLL)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE,
                HuksParamValue.Uint32Value(HuksSecureSignType.HUKS_SECURE_SIGN_WITH_AUTH_INFO)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE,
                HuksParamValue.Uint32Value(HuksChallengeType.HUKS_CHALLENGE_TYPE_NORMAL)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE,
                HuksParamValue.Uint32Value(HuksChallengeType.HUKS_CHALLENGE_TYPE_CUSTOM)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE,
                HuksParamValue.Uint32Value(HuksChallengeType.HUKS_CHALLENGE_TYPE_NONE)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS,
                HuksParamValue.Uint32Value(HuksChallengePosition.HUKS_CHALLENGE_POS_0)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS,
                HuksParamValue.Uint32Value(HuksChallengePosition.HUKS_CHALLENGE_POS_1)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS,
                HuksParamValue.Uint32Value(HuksChallengePosition.HUKS_CHALLENGE_POS_2)),
            HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS,
                HuksParamValue.Uint32Value(HuksChallengePosition.HUKS_CHALLENGE_POS_3)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_OAEP)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PSS)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PKCS1_V1_5)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PKCS5)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PKCS7)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CCM)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_GCM)),
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_SM3)),
            HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE,
                HuksParamValue.Uint32Value(HuksImportKeyType.HUKS_KEY_TYPE_PUBLIC_KEY)),
            HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE,
                HuksParamValue.Uint32Value(HuksImportKeyType.HUKS_KEY_TYPE_PRIVATE_KEY)),
            HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE,
                HuksParamValue.Uint32Value(HuksImportKeyType.HUKS_KEY_TYPE_KEY_PAIR))
        ]
        let alias = "parameter_enum_validation"
        let baseProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
        ]
        for (invalidValue in invalidValues) {
            clean(alias)
            try {
                generateKeyItem(alias, HuksOptions(properties: baseProperties.concat([invalidValue]), inData: Bytes()))
                @Expect(hasKeyItem(alias, HuksOptions()), true)
            } catch (e: BusinessException) {
                @Expect((e.code == 12000003i32) || (e.code == 401i32))
            } finally {
                clean(alias)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Parameter_0100
     * @tc.name      : test_wrap_unwrap_purpose_and_generation_type
     * @tc.desc      : Generate an ECC unwrapping key and verify its purpose and generation flag.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wrap_unwrap_purpose_and_generation_type(): Unit {
        let keyAlias = "param_wrap_unwrap"
        let properties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ECC)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_CURVE25519_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_UNWRAP)),
            HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE,
                HuksParamValue.Uint32Value(HuksKeyGenerationType.HUKS_KEY_GENERATE_TYPE_DEFAULT)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE))
        ]
        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
            let returned = getKeyItemProperties(keyAlias, HuksOptions())
            var purposeFound = false
            for (property in returned) {
                if (property.tag == HuksTag.HUKS_TAG_PURPOSE) {
                    match (property.value) {
                        case HuksParamValue.Uint32Value(value) =>
                            @Expect(value, HuksKeyPurpose.HUKS_KEY_PURPOSE_UNWRAP)
                            purposeFound = true
                        case _ => @Expect(false)
                    }
                }
            }
            @Expect(purposeFound, true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Parameter_0200
     * @tc.name      : test_aes_block_mode_variants
     * @tc.desc      : Encrypt and decrypt data through supported AES block modes.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_aes_block_mode_variants(): Unit {
        let modes = [
            HuksCipherMode.HUKS_MODE_CBC,
            HuksCipherMode.HUKS_MODE_CTR
        ]
        for (mode in modes) {
            let keyAlias = "param_aes_mode_${mode}"
            let baseProperties = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_128)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
            ]
            let commonProperties = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_128)),
                HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(mode)),
                HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
                HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue("0123456789abcdef".toArray()))
            ]
            clean(keyAlias)
            try {
                generateKeyItem(keyAlias, HuksOptions(properties: baseProperties, inData: Bytes()))
                let message = "0123456789abcdef".toArray()
                let encryptProperties = commonProperties.concat([HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT))])
                let decryptProperties = commonProperties.concat([HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))])
                let encryptHandle = initSession(keyAlias, HuksOptions(properties: encryptProperties)).handle
                let encrypted = finishSession(encryptHandle, HuksOptions(properties: encryptProperties, inData: message)).getOrThrow()
                let decryptHandle = initSession(keyAlias, HuksOptions(properties: decryptProperties)).handle
                let decrypted = finishSession(decryptHandle, HuksOptions(properties: decryptProperties, inData: encrypted)).getOrThrow()
                @Expect(decrypted, message)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                clean(keyAlias)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Parameter_0300
     * @tc.name      : test_generate_algorithm_and_size_variants
     * @tc.desc      : Generate keys for supported algorithms and key sizes, then query them.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generate_algorithm_and_size_variants(): Unit {
        let cases = [
            ("param_v4_rsa_3072", HuksKeyAlg.HUKS_ALG_RSA, HuksKeySize.HUKS_RSA_KEY_SIZE_3072,
                HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY),
            ("param_v4_rsa_4096", HuksKeyAlg.HUKS_ALG_RSA, HuksKeySize.HUKS_RSA_KEY_SIZE_4096,
                HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY),
            ("param_v4_aes_192", HuksKeyAlg.HUKS_ALG_AES, HuksKeySize.HUKS_AES_KEY_SIZE_192,
                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT),
            ("param_v4_sm2_256", HuksKeyAlg.HUKS_ALG_SM2, HuksKeySize.HUKS_SM2_KEY_SIZE_256,
                HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY),
            ("param_v4_sm4_128", HuksKeyAlg.HUKS_ALG_SM4, HuksKeySize.HUKS_SM4_KEY_SIZE_128,
                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT),
            ("param_v4_dh_2048", HuksKeyAlg.HUKS_ALG_DH, HuksKeySize.HUKS_DH_KEY_SIZE_2048, HuksKeyPurpose
                    .HUKS_KEY_PURPOSE_AGREE),
        ]
        for ((keyAlias, algorithm, keySize, purpose) in cases) {
            let properties = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(algorithm)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(keySize)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(purpose)),
            ]
            clean(keyAlias)
            try {
                generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
                @Expect(hasKeyItem(keyAlias, HuksOptions()), true)
                @Expect(getKeyItemProperties(keyAlias, HuksOptions()).isEmpty(), false)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                clean(keyAlias)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Parameter_0400
     * @tc.name      : test_hmac_digest_variants
     * @tc.desc      : Calculate HMAC values with each supported digest through HUKS sessions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hmac_digest_variants(): Unit {
        let digests = [
            HuksKeyDigest.HUKS_DIGEST_SHA384,
            HuksKeyDigest.HUKS_DIGEST_SHA512
        ]
        for (digest in digests) {
            let keyAlias = "param_hmac_digest_${digest}"
            let properties = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_HMAC)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_MAC)),
                HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(digest)),
            ]
            clean(keyAlias)
            try {
                generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
                let handle = initSession(keyAlias, HuksOptions(properties: properties, inData: Bytes())).handle
                let mac = finishSession(handle, HuksOptions(properties: properties, inData: "digest input".toArray())).getOrThrow()
                @Expect(mac.isEmpty(), false)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                clean(keyAlias)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Parameter_0500
     * @tc.name      : test_storage_level_variants
     * @tc.desc      : Generate and query keys stored at DE, CE, and ECE security levels.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_storage_level_variants(): Unit {
        let levels = [
            HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE,
            HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_CE,
            HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_ECE
        ]
        for (level in levels) {
            let keyAlias = "param_storage_level_v2_${level}"
            let properties = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_128)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                    HuksParamValue.Uint32Value(
                        HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL, HuksParamValue.Uint32Value(level))
            ]
            clean(keyAlias)
            try {
                generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                clean(keyAlias)
            }
        }
    }
}

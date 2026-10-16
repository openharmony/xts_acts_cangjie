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
class TestSecurityHuksDeriveMac {
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeriveMac_0100
     * @tc.name      : test_hmac_mac_session
     * @tc.desc      : Generate an HMAC key and calculate a MAC through a three-stage session.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hmac_mac_session(): Unit {
        let keyAlias = "derive_mac_hmac_key"
        let properties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_HMAC)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_MAC)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA384)),
            HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL,
                HuksParamValue.Uint32Value(HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE))
        ]
        let input = "huks hmac input".toArray()
        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
            let handle = initSession(keyAlias, HuksOptions(properties: properties, inData: Bytes())).handle
            updateSession(handle, HuksOptions(properties: properties, inData: input))
            let mac = finishSession(handle, HuksOptions(properties: properties, inData: Bytes())).getOrThrow()
            @Expect(mac.size, 48)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeriveMac_0200
     * @tc.name      : test_hkdf_derives_persistent_aes_key
     * @tc.desc      : Derive and persist an AES key with HKDF, then verify that it exists.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hkdf_derives_persistent_aes_key(): Unit {
        let masterAlias = "derive_mac_hkdf_master_test"
        let derivedAlias = "derive_mac_hkdf_derived"
        let masterProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_128)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DERIVE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA256)),
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS))
        ]
        let deriveProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_HKDF)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DERIVE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA256)),
            HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.Uint32Value(32u32))
        ]
        let finishProperties = [
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS)),
            HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true)),
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BytesValue(derivedAlias.toArray())),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
        ]
        clean(masterAlias)
        clean(derivedAlias)
        try {
            generateKeyItem(masterAlias, HuksOptions(properties: masterProperties, inData: Bytes()))
            let handle = initSession(masterAlias, HuksOptions(properties: deriveProperties, inData: Bytes())).handle
            updateSession(handle, HuksOptions(properties: deriveProperties, inData: Bytes()))
            finishSession(handle, HuksOptions(properties: finishProperties, inData: Bytes()))
            @Expect(hasKeyItem(derivedAlias, HuksOptions()), true)
            let derivedProperties = getKeyItemProperties(derivedAlias, HuksOptions())
            @Expect(derivedProperties.isEmpty(), false)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(masterAlias)
            clean(derivedAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeriveMac_0300
     * @tc.name      : test_pbkdf2_derives_persistent_aes_key
     * @tc.desc      : Derive and persist an AES key with PBKDF2, including its salt and iteration parameters.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_pbkdf2_derives_persistent_aes_key(): Unit {
        let masterAlias = "derive_mac_pbkdf2_master"
        let derivedAlias = "derive_mac_pbkdf2_derived"
        let masterProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DERIVE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA256)),
            HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL,
                HuksParamValue.Uint32Value(HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE))
        ]
        let deriveProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_PBKDF2)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_DERIVE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA256)),
            HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.Uint32Value(1000u32)),
            HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue("0123456789abcdef".toArray())),
            HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.Uint32Value(32u32)),
            HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL,
                HuksParamValue.Uint32Value(HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE))
        ]
        let finishProperties = [
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS)),
            HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true)),
            HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BytesValue(derivedAlias.toArray())),
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
        ]
        clean(masterAlias)
        clean(derivedAlias)
        try {
            generateKeyItem(masterAlias, HuksOptions(properties: masterProperties, inData: Bytes()))
            let handle = initSession(masterAlias, HuksOptions(properties: deriveProperties, inData: Bytes())).handle
            updateSession(handle, HuksOptions(properties: deriveProperties, inData: Bytes()))
            finishSession(handle, HuksOptions(properties: finishProperties, inData: Bytes()))
            @Expect(hasKeyItem(derivedAlias, HuksOptions()), true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(masterAlias)
            clean(derivedAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeriveMac_0400
     * @tc.name      : test_ecdh_agreement_persists_key
     * @tc.desc      : Agree a shared secret with two ECDH keys and persist the agreed AES key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ecdh_agreement_persists_key(): Unit {
        let firstAlias = "derive_mac_ecdh_first_v2"
        let secondAlias = "derive_mac_ecdh_second_v2"
        let agreedAlias = "derive_mac_ecdh_agreed_v2"
        let keyProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ECC)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_ECC_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_AGREE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC))
        ]
        let agreeProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ECDH)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_AGREE)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_ECC_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS))
        ]
        let finishProperties = [
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS)),
            HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true)),
            HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BytesValue(agreedAlias.toArray())),
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC))
        ]
        clean(firstAlias)
        clean(secondAlias)
        clean(agreedAlias)
        try {
            generateKeyItem(firstAlias, HuksOptions(properties: keyProperties, inData: Bytes()))
            generateKeyItem(secondAlias, HuksOptions(properties: keyProperties, inData: Bytes()))
            let secondPublicKey = exportKeyItem(secondAlias, HuksOptions(properties: keyProperties, inData: Bytes()))
            let sessionOptions = HuksOptions(properties: agreeProperties, inData: secondPublicKey)
            let handle = initSession(firstAlias, sessionOptions).handle
            updateSession(handle, sessionOptions)
            finishSession(handle, HuksOptions(properties: finishProperties, inData: "AgreeECDHTestIndata".toArray()))
            @Expect(hasKeyItem(agreedAlias, HuksOptions()), true)
            let agreedProperties = getKeyItemProperties(agreedAlias, HuksOptions())
            @Expect(agreedProperties.isEmpty(), false)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(firstAlias)
            clean(secondAlias)
            clean(agreedAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeriveMac_0500
     * @tc.name      : test_x25519_agreement_persists_key
     * @tc.desc      : Agree a shared secret with X25519 keys and persist the agreed AES key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_x25519_agreement_persists_key(): Unit {
        let firstAlias = "derive_mac_x25519_first_v2"
        let secondAlias = "derive_mac_x25519_second_v2"
        let agreedAlias = "derive_mac_x25519_agreed_v2"
        let keyProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_X25519)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_CURVE25519_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_AGREE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS))
        ]
        let agreeProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_X25519)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_CURVE25519_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_AGREE)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC)),
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS))
        ]
        let finishProperties = [
            HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_ONLY_USED_IN_HUKS)),
            HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true)),
            HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BytesValue(agreedAlias.toArray())),
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_NONE)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_CBC))
        ]
        clean(firstAlias)
        clean(secondAlias)
        clean(agreedAlias)
        try {
            generateKeyItem(firstAlias, HuksOptions(properties: keyProperties, inData: Bytes()))
            generateKeyItem(secondAlias, HuksOptions(properties: keyProperties, inData: Bytes()))
            let secondPublicKey = exportKeyItem(secondAlias, HuksOptions())
            let sessionOptions = HuksOptions(properties: agreeProperties, inData: secondPublicKey)
            let handle = initSession(firstAlias, sessionOptions).handle
            updateSession(handle, sessionOptions)
            finishSession(handle, HuksOptions(properties: finishProperties, inData: "AgreeECDHTestIndata".toArray()))
            @Expect(hasKeyItem(agreedAlias, HuksOptions()), true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(firstAlias)
            clean(secondAlias)
            clean(agreedAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeriveMac_0600
     * @tc.name      : test_ed25519_sign_verify_session
     * @tc.desc      : Sign and verify a message with an Ed25519 key using HUKS sessions.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ed25519_sign_verify_session(): Unit {
        let keyAlias = "derive_mac_ed25519_key"
        let signProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ED25519)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_CURVE25519_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL,
                HuksParamValue.Uint32Value(HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE))
        ]
        let verifyProperties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ED25519)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_CURVE25519_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_NONE)),
            HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL,
                HuksParamValue.Uint32Value(HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE))
        ]
        let message = "ed25519 huks message".toArray()
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ED25519)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE,
                            HuksParamValue.Uint32Value(HuksKeySize.HUKS_CURVE25519_KEY_SIZE_256)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Uint32Value(
                                HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY)),
                        HuksParam(HuksTag.HUKS_TAG_AUTH_STORAGE_LEVEL,
                            HuksParamValue.Uint32Value(HuksAuthStorageLevel.HUKS_AUTH_STORAGE_LEVEL_DE))
                    ],
                    inData: Bytes()
                )
            )
            let signHandle = initSession(keyAlias, HuksOptions(properties: signProperties, inData: message)).handle
            updateSession(signHandle, HuksOptions(properties: signProperties, inData: message))
            let signature = finishSession(signHandle, HuksOptions(properties: signProperties, inData: Bytes()))
                .getOrThrow()
            @Expect(signature.isEmpty(), false)
            let verifyHandle = initSession(keyAlias, HuksOptions(properties: verifyProperties, inData: message)).handle
            updateSession(verifyHandle, HuksOptions(properties: verifyProperties, inData: message))
            let verifyResult = finishSession(verifyHandle, HuksOptions(properties: verifyProperties, inData: signature))
                .getOrThrow()
            @Expect(verifyResult.size >= 0)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }
}

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
class TestInitSessionEccSign {
    /*
     * @tc.number    : Sub_Cangjie_security_huks_91500
     * @tc.name      : test_init_session_ecc_sign_invalid_params
     * @tc.desc      : Verify invalid ECC signing session parameters return error 12000002.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_session_ecc_sign_invalid_params(): Unit {
        let cases = [
            ("test_case_3", HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32))),
            ("test_case_4", HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))),
            ("test_case_5", HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))),
            ("test_case_6", HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(0u32))),
            ("test_case_7", HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32))),
            ("test_case_8", HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))),
            ("test_case_9", HuksParam(HuksTag.HUKS_TAG_KEY_TYPE, HuksParamValue.Uint64Value(1u64))),
            ("test_case_10", HuksParam(HuksTag.HUKS_TAG_ASSOCIATED_DATA, HuksParamValue.Uint64Value(2u64))),
            ("test_case_11", HuksParam(HuksTag.HUKS_TAG_NONCE, HuksParamValue.Uint64Value(3u64))),
            ("test_case_12", HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))),
            ("test_case_13", HuksParam(HuksTag.HUKS_TAG_INFO, HuksParamValue.BytesValue([3u8]))),
            ("test_case_14", HuksParam(HuksTag.HUKS_TAG_SALT, HuksParamValue.BytesValue([5u8]))),
            ("test_case_16", HuksParam(HuksTag.HUKS_TAG_ITERATION, HuksParamValue.BooleanValue(true))),
            ("test_case_17", HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_19", HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))),
            ("test_case_21", HuksParam(HuksTag.HUKS_TAG_ALG_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))),
            ("test_case_22", HuksParam(HuksTag.HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))),
            ("test_case_23", HuksParam(HuksTag.HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))),
            ("test_case_24", HuksParam(HuksTag.HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT, HuksParamValue.BooleanValue(true))),
            ("test_case_25", HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BooleanValue(true))),
            ("test_case_26", HuksParam(HuksTag.HUKS_TAG_DERIVE_KEY_SIZE, HuksParamValue.BooleanValue(true))),
            ("test_case_27", HuksParam(HuksTag.HUKS_TAG_IMPORT_KEY_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_28", HuksParam(HuksTag.HUKS_TAG_UNWRAP_ALGORITHM_SUITE, HuksParamValue.BooleanValue(true))),
            ("test_case_30", HuksParam(HuksTag.HUKS_TAG_RSA_PSS_SALT_LEN_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_36", HuksParam(HuksTag.HUKS_TAG_USER_ID, HuksParamValue.BooleanValue(true))),
            ("test_case_37", HuksParam(HuksTag.HUKS_TAG_NO_AUTH_REQUIRED, HuksParamValue.BooleanValue(true))),
            ("test_case_38", HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_39", HuksParam(HuksTag.HUKS_TAG_AUTH_TIMEOUT, HuksParamValue.BooleanValue(true))),
            ("test_case_40", HuksParam(HuksTag.HUKS_TAG_AUTH_TOKEN, HuksParamValue.BooleanValue(true))),
            ("test_case_41", HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_42", HuksParam(HuksTag.HUKS_TAG_KEY_SECURE_SIGN_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_43", HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_44", HuksParam(HuksTag.HUKS_TAG_CHALLENGE_POS, HuksParamValue.BooleanValue(true))),
            ("test_case_45", HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_PURPOSE, HuksParamValue.BooleanValue(true))),
            ("test_case_46", HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BooleanValue(true))),
            ("test_case_64", HuksParam(HuksTag.HUKS_TAG_IS_KEY_ALIAS, HuksParamValue.BooleanValue(true))),
            ("test_case_65", HuksParam(HuksTag.HUKS_TAG_KEY_STORAGE_FLAG, HuksParamValue.BooleanValue(true))),
            ("test_case_66", HuksParam(HuksTag.HUKS_TAG_IS_ALLOWED_WRAP, HuksParamValue.BooleanValue(true))),
            ("test_case_67", HuksParam(HuksTag.HUKS_TAG_KEY_WRAP_TYPE, HuksParamValue.BooleanValue(true))),
            ("test_case_68", HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ID, HuksParamValue.BooleanValue(true))),
            ("test_case_70", HuksParam(HuksTag.HUKS_TAG_KEY_FLAG, HuksParamValue.BooleanValue(true))),
            ("test_case_80", HuksParam(HuksTag.HUKS_TAG_KEY, HuksParamValue.BooleanValue(true))),
            ("test_case_83", HuksParam(HuksTag.HUKS_TAG_AE_TAG, HuksParamValue.BooleanValue(true)))
        ]
        let keyAlias = "init_session_ecc_sign_invalid_param"
        let validKeyParams = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ECC)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_ECC_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
                HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA256))
        ]

        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: validKeyParams, inData: Bytes()))
            for ((caseName, invalidParam) in cases) {
                Hilog.info(0u32, "cangjietest", "", "testcase ${caseName} begins.")
                try {
                    initSession(keyAlias, HuksOptions(properties: [invalidParam], inData: Bytes()))
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 12000002i32)
                }
            }
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_security_huks_ecc_sign_byte_payload_0100
     * @tc.name      : test_ecc_sign_session_with_byte_payload
     * @tc.desc      : Verify ECC signing and verification with byte payload and token input.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ecc_sign_session_with_byte_payload(): Unit {
        let keyAlias = "KBCWEUYFI"
        let properties = [HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(1i32))]
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
            @Expect(hasKeyItem(keyAlias, HuksOptions()), true)
            let signHandle = initSession(keyAlias, HuksOptions(properties: properties, inData: Bytes())).handle
            updateSession(signHandle, HuksOptions(properties: properties, inData: keyAlias.toArray()),
                token: "inDatas".toArray())
            let sign = finishSession(signHandle, HuksOptions(properties: properties, inData: Bytes()),
                token: "inDatas".toArray()).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: [], inData: Bytes()))
            let verifyHandle = initSession(keyAlias, HuksOptions(properties: properties, inData: Bytes())).handle
            updateSession(verifyHandle, HuksOptions(properties: properties, inData: keyAlias.toArray()), token: Bytes())
            let verify = finishSession(verifyHandle, HuksOptions(properties: properties, inData: sign)).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: [], inData: Bytes()))
            @Expect(verify.isEmpty(), false)
            deleteKeyItem(keyAlias, HuksOptions())
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }
}

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
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog
import kit.CangjieKit.BusinessException

@Test
class TestSecurityHuksErrorCode {
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ErrorCode_0100
     * @tc.name      : test_anonAttestKeyItemOffline_interface
     * @tc.desc      : test anonAttestKeyItem after key deleted, expect error 12000011
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_anonAttestKeyItemOffline_interface() {
        let keyAlias = "SUB_Security_HUKS_ErrorCode_AnonAttestKeyItemOffline_Interface_0100"
        clean(keyAlias)
        try {
            let genOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_ECC)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_ECC_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(
                            HuksKeyPurpose.HUKS_KEY_PURPOSE_SIGN | HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY))
                ],
                inData: Bytes()
            )
            let attestOptions = HuksOptions(
                properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE,
                    HuksParamValue.BytesValue("challenge_data".toArray()))],
                inData: Bytes()
            )

            generateKeyItem(keyAlias, genOptions)
            deleteKeyItem(keyAlias, genOptions)

            var flag = false
            try {
                anonAttestKeyItem(keyAlias, attestOptions)
            } catch (e: BusinessException) {
                Hilog.info(0, "CangjieTest", "${e.code}")
                @Expect(e.code == 12000011)
                flag = true
            }
            @Expect(flag)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ErrorCode_0200
     * @tc.name      : security_HUKS_export
     * @tc.desc      : exportKeyItem with non-existent key, expect error 12000011
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func security_HUKS_export() {
        let keyAlias = "security_HUKS_export"
        clean(keyAlias)
        try {
            exportKeyItem(keyAlias, HuksOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "CangjieTest", "${e.code}")
            @Expect(e.code == 12000011)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ErrorCode_0300
     * @tc.name      : test_generateKeyItem_without_credential
     * @tc.desc      : test generateKeyItem with no credential, error code 12000013
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generateKeyItem_without_credential() {
        let keyAlias = "Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ErrorCode_0300"
        clean(keyAlias)
        try {
            let genOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Uint32Value(
                            HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)),
                    HuksParam(HuksTag.HUKS_TAG_USER_AUTH_TYPE,
                        HuksParamValue.Uint32Value(HuksUserAuthType.HUKS_USER_AUTH_TYPE_PIN)),
                    HuksParam(HuksTag.HUKS_TAG_CHALLENGE_TYPE,
                        HuksParamValue.Uint32Value(HuksChallengeType.HUKS_CHALLENGE_TYPE_NORMAL)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_AUTH_ACCESS_TYPE,
                        HuksParamValue.Uint32Value(HuksAuthAccessType.HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD))
                ],
                inData: Bytes()
            )
            generateKeyItem(keyAlias, genOptions)
            @Expect(hasKeyItem(keyAlias, HuksOptions()), true)
        } catch (e: BusinessException) {
            Hilog.info(0, "CangjieTest", "${e.code}")
            @Expect((e.code == 12000013) || (e.code == 401))
        } finally {
            clean(keyAlias)
        }
    }
}

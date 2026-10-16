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
class TestAnonAttestKeyItem {
    /*
     * @tc.number    : Sub_Cangjie_security_huks_74100
     * @tc.name      : test_anon_attest_key_item_invalid_params
     * @tc.desc      : Verify invalid anonymous-attestation parameters return error 12000012.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_anon_attest_key_item_invalid_params(): Unit {
        let keyAlias = "anon_attest_key_item_invalid_param"
        let keyParams = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_RSA)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_RSA_KEY_SIZE_2048)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint32Value(HuksKeyDigest.HUKS_DIGEST_SHA256)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(HuksKeyPadding.HUKS_PADDING_PSS)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(HuksCipherMode.HUKS_MODE_ECB))
        ]
        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: keyParams, inData: Bytes()))
            anonAttestKeyItem(keyAlias, HuksOptions(properties: [], inData: Bytes()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }
}

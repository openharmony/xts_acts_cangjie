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
class Test_SecurityHuks_AnonAttest {
    let HuksOptionsTest = HuksOptions(
        properties: [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
        ],
        inData: []
    )
    // 本用例需要全程联网！否则会抛出异常！
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_AnonAttest_0100
     * @tc.name      : test_rsa_anno
     * @tc.desc      : test UniversalKeystoreKit anonAttestKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rsa_anno() {
        let keyAlias = "test_rsa_anno"
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
                    ]
                )
            )
            let challenge = "hi_challenge_data"
            let chains = anonAttestKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE,
                        HuksParamValue.BytesValue(challenge.toArray())),
                        HuksParam(HuksTag.HUKS_TAG_ATTESTATION_CHALLENGE, HuksParamValue.BytesValue(keyAlias.toArray()))]
                )
            )
            @Expect(!chains.isEmpty())
            for (i in 0..chains.size) {
                @Expect(!chains[i].isEmpty())
            }
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_AnonAttest_0200
     * @tc.name      : test_anno_attest_empty_alias
     * @tc.desc      : test UniversalKeystoreKit anonAttestKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_anno_attest_empty_alias() {
        let keyAlias = ""
        var flag = false
        try {
            let challenge = "hi_challenge_data"
            let chains = anonAttestKeyItem(keyAlias, HuksOptionsTest)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_AnonAttest_0300
     * @tc.name      : test_anno_attest_none_properties
     * @tc.desc      : test UniversalKeystoreKit anonAttestKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_anno_attest_none_properties() {
        let keyAlias = "test_rsa_anno"
        var flag = false
        try {
            let chains = anonAttestKeyItem(keyAlias, HuksOptionsTest)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            @Expect(flag)
        }
    }
}

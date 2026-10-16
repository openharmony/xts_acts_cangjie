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
class TestSecurityHuksKeyExchange {
    let emptyOptions: HuksOptions = HuksOptions(properties: [], inData: Bytes())
    let genKeyOptions = HuksOptions(
        properties: [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_DH)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_DH_KEY_SIZE_2048)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_AGREE))
        ],
        inData: Bytes()
    )
    func key_exchange(keyAlias: String, PubKey: ?Array<UInt8>): ?Array<UInt8> {
        let initHandle = initSession(keyAlias, genKeyOptions)
        let dhAgreeUpdateBobPubKey: HuksOptions = HuksOptions(
            properties: [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_DH)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(HuksKeyPurpose.HUKS_KEY_PURPOSE_AGREE)),
                HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG,
                    HuksParamValue.Uint32Value(HuksKeyStorageType.HUKS_STORAGE_KEY_EXPORT_ALLOWED))
            ],
            inData: PubKey.getOrThrow()
        )
        updateSession(initHandle.handle, dhAgreeUpdateBobPubKey)
        return finishSession(initHandle.handle, dhAgreeUpdateBobPubKey)
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_KEY_ECHANGE_0100
     * @tc.name      : test_key_exchange
     * @tc.desc      : test UniversalKeystoreKit importKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_key_exchange(): Unit {
        let keyAliasFirst = "test_ecdh"
        let keyAliasSecond = keyAliasFirst + ".2nd"
        let inData = "Hks_ECDH_Agree_Test_000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_string"
        clean(keyAliasFirst)
        clean(keyAliasSecond)
        try {
            generateKeyItem(keyAliasFirst, genKeyOptions)
            generateKeyItem(keyAliasSecond, genKeyOptions)
            let publicKey01 = exportKeyItem(keyAliasFirst, emptyOptions)
            let publicKey02 = exportKeyItem(keyAliasSecond, emptyOptions)
            key_exchange(keyAliasFirst, publicKey01)
            key_exchange(keyAliasSecond, publicKey02)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAliasFirst)
            clean(keyAliasSecond)
        }
    }
}

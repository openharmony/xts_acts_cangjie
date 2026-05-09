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
class Test_SecurityHuks_SM2 {
    let genKeyOptionsTest1 = HuksOptions(
        properties: [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
            HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32)),
            HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
            HuksParam(HuksTag.HUKS_TAG_KEY_GENERATION_TYPE, HuksParamValue.BooleanValue(false)),
            HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint64Value(1u64))
        ]
    )
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM2_0100
     * @tc.name      : test_sm2_import_export
     * @tc.desc      : test UniversalKeystoreKit importKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm2_import_export() {
        // ref: https://gitee.com/openharmony/docs/blob/master/zh-cn/application-dev/security/UniversalKeystoreKit/huks-import-key-in-plaintext-ndk.md
        let keyAlias = "test_sm2_import_export"

        let keyAliasBak = keyAlias + ".bak"

        clean(keyAlias)
        clean(keyAliasBak)

        try {
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                    // 不支持agree
                    HuksParam(
                        HuksTag.HUKS_TAG_PURPOSE,
                        HuksParamValue.Int32Value(1i32)
                    ),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                    // 摘要算法sm3
                    HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                ]
            )

            generateKeyItem(keyAlias, options)

            importKeyItem(
                keyAliasBak,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                )
            )
            @Expect(hasKeyItem(keyAlias, genKeyOptionsTest1))
            @Expect(hasKeyItem(keyAliasBak, genKeyOptionsTest1))
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
            clean(keyAliasBak)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM2_0200
     * @tc.name      : test_sm2_sign_verify
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm2_sign_verify() {
        let keyAlias = "test_sm2_sign_verify"
        let inData = "Hks_SM2_Test_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_string"
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Int32Value(1i32)
                        ),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                )
            )

            let signHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                )
            ).handle

            updateSession(
                signHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )

            let sign = finishSession(
                signHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                ),
                token: []
            ).getOrThrow()

            abortSession(signHandle, HuksOptions(properties: []))

            let verifyHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                )
            ).handle

            updateSession(
                verifyHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )

            let verify = finishSession(
                verifyHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ],
                    inData: sign
                ),
                token: []
            ).getOrThrow()

            @Expect(!verify.isEmpty())
            abortSession(verifyHandle, HuksOptions(properties: []))
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SM2_0300
     * @tc.name      : test_sm2_encrypt_decrypt
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sm2_encrypt_decrypt() {
        let keyAlias = "test_sm2_sign_verify"
        let inData = "Hks_SM2_Test_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_string"
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.BytesValue([2u8])
                        ),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                )
            )

            let encHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                )
            ).handle

            updateSession(
                encHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )

            let enc = finishSession(
                encHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                ),
                token: []
            ).getOrThrow()

            abortSession(encHandle, HuksOptions(properties: []))

            let decHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ],
                    inData: enc
                )
            ).handle

            updateSession(
                decHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ]
                ),
                token: []
            )

            let dec = finishSession(
                decHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([2u8]))
                    ],
                    inData: enc
                ),
                token: []
            ).getOrThrow()

            let decData = String.fromUtf8(dec)
            @Expect(decData == inData)
            abortSession(decHandle, HuksOptions(properties: []))
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }
}

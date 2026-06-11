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
class Test_SecurityHuks_BasicAsymmetric {
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_BasicAsymmetric_0100
     * @tc.name      : test_rsa
     * @tc.desc      : test UniversalKeystoreKit abortSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rsa() {
        let keyAlias = "test_rsa"
        let inData = "Hks_RSA_Sign_Verify_Test_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_string"
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Int32Value(1i32)
                        ),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
                    ]
                )
            )
            let signHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
                    ]
                )
            ).handle
            updateSession(
                signHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )
            let sign = finishSession(
                signHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
                    ]
                ),
                token: []
            ).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: []))
            let verifyHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Int32Value(1i32)
                        ),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
                    ]
                )
            ).handle
            updateSession(
                verifyHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )
            let verify = finishSession(
                verifyHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.BytesValue([3u8]))
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
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_BasicAsymmetric_0200
     * @tc.name      : test_ecc
     * @tc.desc      : test UniversalKeystoreKit abortSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ecc() {
        let keyAlias = "test_ecc"
        let inData = "123456"
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Int32Value(1i32)
                        ),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ]
                )
            )
            let signHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ]
                )
            ).handle
            updateSession(
                signHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )
            let sign = finishSession(
                signHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(false)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ]
                ),
                token: []
            ).getOrThrow()
            abortSession(signHandle, HuksOptions(properties: []))
            let verifyHandle = initSession(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ]
                )
            ).handle
            updateSession(
                verifyHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            )
            let verify = finishSession(
                verifyHandle,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(1i32)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ],
                    inData: sign
                ),
                token: []
            ).getOrThrow()
            abortSession(verifyHandle, HuksOptions(properties: []))
            @Expect(!verify.isEmpty())
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_BasicAsymmetric_0300
     * @tc.name      : test_export_key
     * @tc.desc      : test UniversalKeystoreKit exportKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_export_key() {
        let keyAlias = "test_export_key"
        clean(keyAlias)
        try {
            generateKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.Int32Value(1i32)
                        ),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Int32Value(0i32))
                    ]
                )
            )
            let data = exportKeyItem(keyAlias, genKeyOptionsTest1)
            @Expect(!data.isEmpty())
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }
}

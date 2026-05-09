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
class Test_SecurityHuks_KeyExchange {
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
    func test_ecdh() {
        // ref: https://gitee.com/openharmony/docs/blob/master/zh-cn/application-dev/security/UniversalKeystoreKit/huks-key-agreement-arkts.md
        // ref: https://gitee.com/openharmony/docs/blob/master/zh-cn/application-dev/security/UniversalKeystoreKit/huks-key-agreement-ndk.md
        let keyAliasFirst = "test_ecdh"
        let keyAliasSecond = keyAliasFirst + ".2nd"
        let finishAlias_01 = keyAliasFirst + ".finish01"
        let finishAlias_02 = keyAliasFirst + ".finish02"
        let inData = "Hks_ECDH_Agree_Test_000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_string"

        clean(keyAliasFirst)
        clean(keyAliasSecond)
        clean(finishAlias_01)
        clean(finishAlias_02)

        try {
            let genAgreeParams = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(true)),
                HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint64Value(1u64))
            ]

            generateKeyItem(keyAliasFirst, HuksOptions(properties: genAgreeParams))

            generateKeyItem(keyAliasSecond, HuksOptions(properties: genAgreeParams))

            let publicKey01 = exportKeyItem(keyAliasFirst, genKeyOptionsTest1)
            let publicKey02 = exportKeyItem(keyAliasSecond, genKeyOptionsTest1)

            let initAgreeParams = [
                HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint64Value(1u64)),
                HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(true))
            ]
            let handle1 = initSession(keyAliasFirst, HuksOptions(properties: initAgreeParams, inData: publicKey02))
                .handle
            updateSession(handle1, HuksOptions(properties: initAgreeParams, inData: publicKey02), token: [])
            let out1 = finishSession(
                handle1,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BytesValue(finishAlias_01.toArray())),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            ).getOrThrow()

            let handle2 = initSession(keyAliasSecond, HuksOptions(properties: initAgreeParams, inData: publicKey01))
                .handle
            updateSession(handle2, HuksOptions(properties: initAgreeParams, inData: publicKey01), token: [])
            let out2 = finishSession(
                handle2,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_ALIAS, HuksParamValue.BytesValue(finishAlias_02.toArray())),
                        HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                        HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))
                    ],
                    inData: inData.toArray()
                ),
                token: []
            ).getOrThrow()
        } finally {
            clean(keyAliasFirst)
            clean(keyAliasSecond)
            clean(finishAlias_01)
            clean(finishAlias_02)
        }
    }
}

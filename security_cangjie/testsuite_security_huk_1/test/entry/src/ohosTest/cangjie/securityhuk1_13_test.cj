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
class Test_SecurityHuks_SessionOther {
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
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SessionOther_0100
     * @tc.name      : test_init_session_empty_alias
     * @tc.desc      : test UniversalKeystoreKit initSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_session_empty_alias() {
        let keyAlias = ""
        var flag = false
        try {
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32))
                ]
            )
            initSession(keyAlias, encOptions)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            clean(keyAlias)
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SessionOther_0200
     * @tc.name      : test_init_session_none_properties
     * @tc.desc      : test UniversalKeystoreKit initSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_session_none_properties() {
        let keyAlias = "init_session"
        clean(keyAlias)
        var flag = false
        try {
            let encOptions = genKeyOptionsTest1
            initSession(keyAlias, encOptions)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            clean(keyAlias)
            @Expect(flag)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SessionOther_0300
     * @tc.name      : test_update_session_overload
     * @tc.desc      : test UniversalKeystoreKit updateSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update_session_overload() {
        let keyAlias = "update_session"
        clean(keyAlias)
        try {
            let plainText = "123456"
            let iv = "0011223344556677"
            let options = HuksOptions(
                properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))])
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                ],
                inData: plainText.toArray()
            )
            try {
                generateKeyItem(keyAlias, options)
                let handle = initSession(keyAlias, encOptions).handle
                let bytes: Array<UInt8> = []
                updateSession(handle, genKeyOptionsTest1, token: bytes)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        } finally {
            clean(keyAlias)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SessionOther_0400
     * @tc.name      : test_finish_session_overload
     * @tc.desc      : test UniversalKeystoreKit finishSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_finish_session_overload() {
        let keyAlias = "finish_session"
        clean(keyAlias)
        try {
            let plainText = "123456"
            let iv = "0011223344556677"
            let options = HuksOptions(
                properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))])
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                ],
                inData: plainText.toArray()
            )
            try {
                generateKeyItem(keyAlias, options)
                let handle = initSession(keyAlias, encOptions).handle
                let bytes: Array<UInt8> = []
                finishSession(handle, genKeyOptionsTest1, token: bytes)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_SessionOther_0500
     * @tc.name      : test_abort_session_exception
     * @tc.desc      : test UniversalKeystoreKit abortSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_abort_session_exception() {
        let keyAlias = "test_abort_session"
        clean(keyAlias)
        var flag = false
        try {
            let plainText = "123456"
            let iv = "0011223344556677"
            let options = HuksOptions(
                properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32))])
            let encOptions = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(0i32)),
                    HuksParam(HuksTag.HUKS_TAG_PADDING, HuksParamValue.Uint32Value(1u32)),
                    HuksParam(HuksTag.HUKS_TAG_BLOCK_MODE, HuksParamValue.Uint32Value(2u32)),
                    HuksParam(HuksTag.HUKS_TAG_IV, HuksParamValue.BytesValue([1u8]))
                ],
                inData: plainText.toArray()
            )
            let emptyOptions = genKeyOptionsTest1
            generateKeyItem(keyAlias, options)
            let handle = initSession(keyAlias, encOptions).handle
            abortSession(handle, emptyOptions)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            clean(keyAlias)
            @Expect(flag)
        }
    }
}

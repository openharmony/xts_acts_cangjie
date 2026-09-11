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
class TestSecurityHuksImportKey {
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
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0100
     * @tc.name      : test_import_aes
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_aes(): Unit {
        let keyAlias = "test_import_aes"
        clean(keyAlias)
        try {
            importKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.BytesValue([2u8])
                        )
                    ]
                )
            )
            @Expect(hasKeyItem(keyAlias, genKeyOptionsTest1))
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0200
     * @tc.name      : test_import_ecc
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_ecc(): Unit {
        let keyAlias = "test_import_ecc"
        let keyAliasBak = keyAlias + ".bak"
        clean(keyAlias)
        clean(keyAliasBak)
        try {
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Int32Value(-1i32)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                    HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint64Value(1u64))
                ]
            )
            generateKeyItem(keyAlias, options)
            importKeyItem(
                keyAliasBak,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                        HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint64Value(1u64))
                    ]
                )
            )
            @Expect((hasKeyItem(keyAlias, genKeyOptionsTest1)) && (hasKeyItem(keyAliasBak, genKeyOptionsTest1)))
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
            clean(keyAliasBak)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0300
     * @tc.name      : test_import_empty_alias
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_empty_alias(): Unit {
        let keyAlias = ""
        var flag = false
        try {
            importKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.BytesValue([2u8])
                        )
                    ]
                )
            )
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0400
     * @tc.name      : test_import_none_properties
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_none_properties(): Unit {
        let keyAlias = "test_import"
        var flag = false
        try {
            importKeyItem(
                keyAlias,
                genKeyOptionsTest1
            )
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportKey_0500
     * @tc.name      : test_import_none_indata
     * @tc.desc      : test UniversalKeystoreKit HuksParam
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_none_indata(): Unit {
        let keyAlias = "test_import"
        clean(keyAlias)
        var flag = false
        try {
            importKeyItem(
                keyAlias,
                HuksOptions(
                    properties: [
                        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Int32Value(-1i32)),
                        HuksParam(
                            HuksTag.HUKS_TAG_PURPOSE,
                            HuksParamValue.BytesValue([2u8])
                        )
                    ]
                )
            )
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
            clean(keyAlias)
        }
    }
}

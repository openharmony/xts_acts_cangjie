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
class TestSecurityHuksImportWrappedKeyItem {
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
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportWrappedKeyItem_0100
     * @tc.name      : test_import_wrapped_wrong
     * @tc.desc      : test UniversalKeystoreKit importWrappedKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_wrapped_wrong(): Unit {
        let keyAlias = "test_import_wrapped_wrong"
        let wrappingKeyAlias = "test_import_wrapped_wrong_wrapping_key"
        clean(keyAlias)
        clean(wrappingKeyAlias)
        try {
            let options = HuksOptions(
                properties: [
                    HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.BytesValue([1u8])),
                    HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.BooleanValue(true)),
                    HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.BooleanValue(true)),
                    HuksParam(HuksTag.HUKS_TAG_DIGEST, HuksParamValue.Uint64Value(1u64))
                ]
            )
            try {
                importWrappedKeyItem(
                    keyAlias,
                    wrappingKeyAlias,
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
            }
        } finally {
            clean(keyAlias)
            clean(wrappingKeyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportWrappedKeyItem_0200
     * @tc.name      : test_import_wrapped_empty_alias
     * @tc.desc      : test UniversalKeystoreKit importWrappedKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_wrapped_empty_alias(): Unit {
        let cases_1311 = [
            "",
            "test_import_wrapped"
        ]
        for (parameter_0 in cases_1311) {
            let keyAlias = parameter_0
            let wrappingKeyAlias = "test_import_wrapped_wrong_wrapping_key"
            var flag = false
            try {
                importWrappedKeyItem(
                    keyAlias,
                    wrappingKeyAlias,
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
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ImportWrappedKeyItem_0300
     * @tc.name      : test_import_wrapped_none_properties
     * @tc.desc      : test UniversalKeystoreKit importWrappedKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_import_wrapped_none_properties(): Unit {
        let keyAlias = "test_import_wrapped"
        let wrappingKeyAlias = "test_import_wrapped_wrong_wrapping_key"
        var flag = false
        try {
            importWrappedKeyItem(
                keyAlias,
                wrappingKeyAlias,
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
}

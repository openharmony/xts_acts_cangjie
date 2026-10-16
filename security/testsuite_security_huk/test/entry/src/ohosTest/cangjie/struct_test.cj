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
import std.unittest.common.*
import ohos.base.*
import ohos.business_exception.BusinessException

@Test
class TestSecurityHuksStruct {

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_0100
     * @tc.name      : test_huks_constant_catalog_and_param_fields
     * @tc.desc      : Verify AES key parameters through generation, query, and deletion APIs.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_huks_constant_catalog_and_param_fields(): Unit {
        let keyAlias = "struct_constant_catalog_key"
        let properties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
        ]
        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
            @Expect(hasKeyItem(keyAlias, HuksOptions()), true)
            let returnedProperties = getKeyItemProperties(keyAlias, HuksOptions())
            var algorithmFound = false
            var keySizeFound = false
            var purposeFound = false
            for (property in returnedProperties) {
                if (property.tag == HuksTag.HUKS_TAG_ALGORITHM) {
                    match (property.value) {
                        case HuksParamValue.Uint32Value(value) =>
                            @Expect(value, HuksKeyAlg.HUKS_ALG_AES)
                            algorithmFound = true
                        case _ => @Expect(false)
                    }
                } else if (property.tag == HuksTag.HUKS_TAG_KEY_SIZE) {
                    match (property.value) {
                        case HuksParamValue.Uint32Value(value) =>
                            @Expect(value, HuksKeySize.HUKS_AES_KEY_SIZE_256)
                            keySizeFound = true
                        case _ => @Expect(false)
                    }
                } else if (property.tag == HuksTag.HUKS_TAG_PURPOSE) {
                    match (property.value) {
                        case HuksParamValue.Uint32Value(value) =>
                            @Expect(value, HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT |
                                HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT)
                            purposeFound = true
                        case _ => @Expect(false)
                    }
                }
            }
            @Expect(algorithmFound, true)
            @Expect(keySizeFound, true)
            @Expect(purposeFound, true)
            deleteKeyItem(keyAlias, HuksOptions())
            @Expect(hasKeyItem(keyAlias, HuksOptions()), false)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_0200
     * @tc.name      : test_illegal_argument
     * @tc.desc      : Verify generateKeyItem rejects an empty parameter set.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_illegal_argument(): Unit {
        let keyAlias = "struct_illegal_argument"
        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: [], inData: Bytes()))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_0300
     * @tc.name      : test_return_result
     * @tc.desc      : Verify getKeyItemProperties returns properties for a generated key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_return_result(): Unit {
        let keyAlias = "struct_return_result"
        let properties = [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_128)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE,
                HuksParamValue.Uint32Value(
                    HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
        ]
        clean(keyAlias)
        try {
            generateKeyItem(keyAlias, HuksOptions(properties: properties, inData: Bytes()))
            let returnedProperties = getKeyItemProperties(keyAlias, HuksOptions())
            @Expect(returnedProperties.isEmpty(), false)
            deleteKeyItem(keyAlias, HuksOptions())
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_0400
     * @tc.name      : test_const_values
     * @tc.desc      : Verify const values is correct.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_const_values(): Unit {
        @Expect(
            (HuksTagType.HUKS_TAG_TYPE_INVALID == 0u32) && (HuksTagType.HUKS_TAG_TYPE_INT == (1u32 << 28)) &&
            (HuksTagType.HUKS_TAG_TYPE_UINT == (2u32 << 28)) && (HuksTagType.HUKS_TAG_TYPE_ULONG == (3u32 << 28)) &&
            (HuksTagType.HUKS_TAG_TYPE_BOOL == (4u32 << 28)) && (HuksTagType.HUKS_TAG_TYPE_BYTES == (5u32 << 28))
        )
    }
}

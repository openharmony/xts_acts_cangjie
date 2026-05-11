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
import std.runtime.GC
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.BusinessException

@Test
class Test_SecurityHuks_Struct_ffi {
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
    let huksTagAlgorithm = HuksTag.HUKS_TAG_ALGORITHM // HUKS_TAG_TYPE_UINT
    let HUKS_TAG_IV = HuksTag.HUKS_TAG_IV // HUKS_TAG_TYPE_BYTES
    let huksTagIsKeyAlias = HuksTag.HUKS_TAG_IS_KEY_ALIAS // HUKS_TAG_TYPE_BOOL

    let boolean = HuksParamValue.BooleanValue(true)
    let int32 = HuksParamValue.Int32Value(1)
    let booleanNone = int32
    let int32None = boolean
    let uint32 = HuksParamValue.Uint32Value(1)
    let uint32None = boolean
    let uint64 = HuksParamValue.Uint64Value(1)
    let uint64None = boolean
    let bytes = HuksParamValue.BytesValue([])
    static const HKS_PARAM_SET_MAX_SIZE: Int64 = 4 * 1024 * 1024
    let bytesTooBig = HuksParamValue.BytesValue(Array<Byte>(HKS_PARAM_SET_MAX_SIZE, repeat: 0))
    let bytesNone = boolean

    let huksParamUint32 = HuksParam(huksTagAlgorithm, uint32)
    let huksParamBool = HuksParam(huksTagIsKeyAlias, boolean)
    let huksParamBytes = HuksParam(HUKS_TAG_IV, bytes)
    let huksParamBytesTooBig = HuksParam(HUKS_TAG_IV, bytesTooBig)

    let huksParamUint32None = HuksParam(huksTagAlgorithm, boolean)
    let huksParamBoolNone = HuksParam(huksTagIsKeyAlias, booleanNone)
    let huksParamBytesNone = HuksParam(HUKS_TAG_IV, boolean)

    let propertiesBoolNone = [huksParamBoolNone]
    let propertiesBytesNone = [huksParamBytesNone]

    let propertiesTooBig = [huksParamBytesTooBig]
    let propertiesCountTooBig = Array<HuksParam>(100, repeat: huksParamBool)

    let optionsBoolNone = HuksOptions(properties: propertiesBoolNone)
    let optionsBytesNone = HuksOptions(properties: propertiesBytesNone)

    let optionsTooBig = HuksOptions(properties: propertiesTooBig)
    let optionsCountTooBig = HuksOptions(properties: propertiesCountTooBig)
    let optionsNone = genKeyOptionsTest1

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_ffi_0300
     * @tc.name      : test_hks_param_set_bool_none
     * @tc.desc      : test UniversalKeystoreKit hasKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hks_param_set_bool_none() {
        let keyAlias = "123"
        clean(keyAlias)
        var flag = false
        try {
            let res = hasKeyItem(keyAlias, optionsBoolNone)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            clean(keyAlias)
            GC()
            @Expect(flag)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_ffi_0400
     * @tc.name      : test_hks_param_set_bytes_none
     * @tc.desc      : test UniversalKeystoreKit hasKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hks_param_set_bytes_none() {
        let keyAlias = "123"
        clean(keyAlias)
        var flag = false
        try {
            let res = hasKeyItem(keyAlias, optionsBytesNone)
        } catch (e: BusinessException) {
            flag = true
        } finally {
            clean(keyAlias)
            GC()
            @Expect(flag)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_ffi_0800
     * @tc.name      : test_hks_param_set_too_big
     * @tc.desc      : test UniversalKeystoreKit generateKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hks_param_set_too_big() {
        let keyAlias = "123";
        var flag = false
        try {
            generateKeyItem(keyAlias, optionsTooBig)
        } catch (e: BusinessException) {
            flag = true
        }
        @Expect(flag)
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_ffi_0900
     * @tc.name      : test_hks_param_set_count_too_big
     * @tc.desc      : test UniversalKeystoreKit generateKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hks_param_set_count_too_big() {
        let keyAlias = "123";
        var flag = false
        try {
            generateKeyItem(keyAlias, optionsCountTooBig)
        } catch (e: BusinessException) {
            flag = true
        }
        @Expect(flag)
    }
}

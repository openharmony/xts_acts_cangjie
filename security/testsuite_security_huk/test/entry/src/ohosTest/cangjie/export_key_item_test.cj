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
class TestSecurityHuksExportKeyItem {
    let genKeyOptionsTest1 = HuksOptions(
        properties: [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
        ]
    )
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_ExportKeyItem_0100
     * @tc.name      : test_export_empty_alias
     * @tc.desc      : test UniversalKeystoreKit exportKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_export_empty_alias(): Unit {
        let keyAlias = ""
        var flag = false
        try {
            exportKeyItem(keyAlias, genKeyOptionsTest1)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
        }
    }
}

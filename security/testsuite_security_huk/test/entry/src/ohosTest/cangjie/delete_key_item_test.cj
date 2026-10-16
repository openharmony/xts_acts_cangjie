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
class TestSecurityHuksDeleteKey {
    let genKeyOptionsTest2 = HuksOptions(
        properties: [
            HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
        ]
    )
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeleteKey_0100
     * @tc.name      : test_delete_key
     * @tc.desc      : test UniversalKeystoreKit deleteKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_key(): Unit {
        let keyAlias = "test_delete_key"
        clean(keyAlias)
        try {
            generateSimpleKey(keyAlias)
            @Expect(hasKeyItem(keyAlias, genKeyOptionsTest2))
            deleteKeyItem(keyAlias, genKeyOptionsTest2)
            @Expect(!hasKeyItem(keyAlias, genKeyOptionsTest2))
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeleteKey_0200
     * @tc.name      : test_delete_key_not_exist
     * @tc.desc      : test UniversalKeystoreKit deleteKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_key_not_exist(): Unit {
        let keyAlias = "test_delete_key"
        clean(keyAlias)
        try {
            @Expect(!hasKeyItem(keyAlias, genKeyOptionsTest2))
            deleteKeyItem(keyAlias, genKeyOptionsTest2)
        } catch (e: BusinessException) {
            @Expect(e.code, 12000011i32)
        } finally {
            clean(keyAlias)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_DeleteKey_0300
     * @tc.name      : test_delete_key_empty_alias
     * @tc.desc      : test UniversalKeystoreKit deleteKeyItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_key_empty_alias(): Unit {
        let keyAlias = ""
        var flag = false
        try {
            deleteKeyItem(keyAlias, genKeyOptionsTest2)
            @Expect(false)
        } catch (e: BusinessException) {
            flag = true
            @Expect(e.code, 401i32)
        } finally {
            @Expect(flag)
        }
    }
}

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
class Test_SecurityHuks_Struct {

    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_0200
     * @tc.name      : test_illegal_argument
     * @tc.desc      : test UniversalKeystoreKit HuksParamValue
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_illegal_argument() {
        try {
            let boolean = HuksParamValue.BooleanValue(true)
            let uint32 = HuksParamValue.Uint32Value(1)
            let orNone = boolean
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        } finally {
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_UniversalKeystoreKit_Test_SecurityHuks_Struct_0300
     * @tc.name      : test_return_result
     * @tc.desc      : test UniversalKeystoreKit HuksReturnResult
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_return_result() {
        let outData = Option<Array<UInt8>>.None
        let properties = Option<Array<HuksParam>>.None
        let certChains = Option<Array<String>>.None
    }
}

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

import std.unittest.testmacro.{Test, TestCase, Expect}
import ohos.security.crypto_framework.{createSymKeyGenerator}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*

@Test
class TestSymKeyGenerator {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_SymKeyGenerator_02_0100
     * @tc.name      : test_symkeygenerator_01
     * @tc.desc      : test Crypto test_symkeygenerator_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_symkeygenerator_01(): Unit {
        let cases_1295 = [
            "AES256",
            "3DES192",
            "SM4_128",
            "HMAC|SHA1"
        ]
        for (parameter_0 in cases_1295) {
            let skg = createSymKeyGenerator(parameter_0)
            @Expect(skg.algName, parameter_0)

        }
    }
}

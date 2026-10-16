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
import ohos.security.crypto_framework.{createCipher}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class TestCreateCipherApi {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0100
     * @tc.name      : test_create_cipher_01
     * @tc.desc      : test Crypto test_create_cipher_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_cipher_01(): Unit {
        let cases_1296 = [
            "PKCS11",
            "",
            "\0",
            "#$%abc345"
        ]
        for (parameter_0 in cases_1296) {
            try {
                createCipher(parameter_0)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 801)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0500
     * @tc.name      : test_create_cipher_05
     * @tc.desc      : test Crypto test_create_cipher_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_cipher_05(): Unit {
        let cipher = createCipher("3DES192|ECB|NoPadding")
        let cipher1 = createCipher("RSA512|NoPadding")
        let cipher2 = createCipher("RSA512|PKCS1")
        let cipher3 = createCipher("SM2_256|MD5")
        @Expect(true)
    }
}

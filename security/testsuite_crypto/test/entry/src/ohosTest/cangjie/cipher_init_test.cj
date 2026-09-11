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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.CryptoArchitectureKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class TestCipherInit {
    /*
     * @tc.number    : Sub_Cangjie_testCipherInit_CipherInit_0100
     * @tc.name      : test_case_1
     * @tc.desc      : test CipherInit param use  "CryptoMode.EncryptMode"+"Option.None"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_1(): Unit {
        let cases_1287 = [
            "RSA|PKCS1_OAEP|SHA256|MGF1_SHA1",
            "3DES192|ECB|PKCS7",
            "RSA|PKCS1_OAEP|SHA256|MGF1_SHA1",
            "3DES192|ECB|PKCS7"
        ]
        for (parameter_0 in cases_1287) {
            let cipher = createCipher(parameter_0)
            let syg = createSymKeyGenerator("AES128")
            try {
                cipher.`initialize`(CryptoMode.EncryptMode, createSymKeyGenerator("AES128").generateSymKey(),
                    Option<ParamsSpec>.None)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }

        }
    }
}

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
class testCipherInit_1 {
    /*
     * @tc.number    : Sub_Cangjie_testCipherInit_CipherInit_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test CipherInit param use  "CryptoMode.EncryptMode"+"Option.None"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable cipher")
        let cipher = createCipher("RSA|PKCS1_OAEP|SHA256|MGF1_SHA1")
        Hilog.info(0u32, "CangjieTest", "define local variable syg")
        let syg = createSymKeyGenerator("AES128")
        Hilog.info(0u32, "CangjieTest", "cipher.`initialize`")
        try {
            cipher.`initialize`(CryptoMode.EncryptMode, createSymKeyGenerator("AES128").generateSymKey(),
                Option<ParamsSpec>.None)
                @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error.")
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCipherInit_CipherInit_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test CipherInit param use  "CryptoMode.EncryptMode"+"Option.None"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable cipher")
        let cipher = createCipher("3DES192|ECB|PKCS7")
        Hilog.info(0u32, "CangjieTest", "define local variable syg")
        let syg = createSymKeyGenerator("AES128")
        Hilog.info(0u32, "CangjieTest", "cipher.`initialize`")
        try {
            cipher.`initialize`(CryptoMode.EncryptMode, createSymKeyGenerator("AES128").generateSymKey(),
                Option<ParamsSpec>.None)
                @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error.")
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCipherInit_CipherInit_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test CipherInit param use  "CryptoMode.DECRYPT_MODE"+"Option.None"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable cipher")
        let cipher = createCipher("RSA|PKCS1_OAEP|SHA256|MGF1_SHA1")
        Hilog.info(0u32, "CangjieTest", "define local variable syg")
        let syg = createSymKeyGenerator("AES128")
        Hilog.info(0u32, "CangjieTest", "cipher.`initialize`")
        try {
            cipher.`initialize`(CryptoMode.EncryptMode, createSymKeyGenerator("AES128").generateSymKey(),
                Option<ParamsSpec>.None)
                @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error.")
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCipherInit_CipherInit_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test CipherInit param use  "CryptoMode.DECRYPT_MODE"+"Option.None"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable cipher")
        let cipher = createCipher("3DES192|ECB|PKCS7")
        Hilog.info(0u32, "CangjieTest", "define local variable syg")
        let syg = createSymKeyGenerator("AES128")
        Hilog.info(0u32, "CangjieTest", "cipher.`initialize`")
        try {
            cipher.`initialize`(CryptoMode.EncryptMode, createSymKeyGenerator("AES128").generateSymKey(),
                Option<ParamsSpec>.None)
                @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error.")
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
}

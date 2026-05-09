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
class Test_creatCipher_05 {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0100
     * @tc.name      : test_creatcipher_01
     * @tc.desc      : test Crypto test_creatcipher_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatcipher_01(): Unit {
        try {
            createCipher("PKCS11")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0200
     * @tc.name      : test_creatcipher_02
     * @tc.desc      : test Crypto test_creatcipher_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatcipher_02(): Unit {
        try {
            createCipher("")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0300
     * @tc.name      : test_creatcipher_03
     * @tc.desc      : test Crypto test_creatcipher_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatcipher_03(): Unit {
        try {
            createCipher("\0")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0400
     * @tc.name      : test_creatcipher_04
     * @tc.desc      : test Crypto test_creatcipher_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatcipher_04(): Unit {
        try {
            createCipher("#$%abc345")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_creatCipher_05_0500
     * @tc.name      : test_creatcipher_05
     * @tc.desc      : test Crypto test_creatcipher_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatcipher_05(): Unit {
        let cipher = createCipher("3DES192|ECB|NoPadding")
        let cipher1 = createCipher("RSA512|NoPadding")
        let cipher2 = createCipher("RSA512|PKCS1")
        let cipher3 = createCipher("SM2_256|MD5")
        @Expect(true)
    }
}

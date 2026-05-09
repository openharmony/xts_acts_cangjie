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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class Test_createSymKeyGenerator_01 {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_createSymKeyGenerator_01_0100
     * @tc.name      : test_creatsymkeygenerator_01
     * @tc.desc      : test Crypto test_creatsymkeygenerator_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatsymkeygenerator_01(): Unit {
        try {
            createSymKeyGenerator("3DES193")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_createSymKeyGenerator_01_0200
     * @tc.name      : test_creatsymkeygenerator_02
     * @tc.desc      : test Crypto test_creatsymkeygenerator_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatsymkeygenerator_02(): Unit {
        try {
            createSymKeyGenerator("")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_createSymKeyGenerator_01_0300
     * @tc.name      : test_creatsymkeygenerator_03
     * @tc.desc      : test Crypto test_creatsymkeygenerator_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatsymkeygenerator_03(): Unit {
        try {
            createSymKeyGenerator("\0")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_createSymKeyGenerator_01_0400
     * @tc.name      : test_creatsymkeygenerator_04
     * @tc.desc      : test Crypto test_creatsymkeygenerator_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatsymkeygenerator_04(): Unit {
        try {
            createSymKeyGenerator("%^&123abc")
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_createSymKeyGenerator_01_0500
     * @tc.name      : test_creatsymkeygenerator_05
     * @tc.desc      : test Crypto test_creatsymkeygenerator_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatsymkeygenerator_05(): Unit {
        let skg = createSymKeyGenerator("AES128")
        let skg1 = createSymKeyGenerator("3DES192")
        let skg2 = createSymKeyGenerator("SM4_128")
        let skg3 = createSymKeyGenerator("HMAC|SHA1")
    }
}

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
import ohos.security.crypto_framework.{createSymKeyGenerator, DataBlob}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*

@Test
class Test_generateSymKey_convertKey_03 {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_generateSymKey_convertKey_03_0100
     * @tc.name      : test_generatesymkey_01
     * @tc.desc      : test Crypto test_generatesymkey_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generatesymkey_01(): Unit {
        let skg = createSymKeyGenerator("AES256")
        let sk = skg.generateSymKey()
        @Expect(sk.format, "PKCS#8")
        @Expect(sk.algName, "AES256")
        @Expect(sk.getEncoded().data.size, 32)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_generateSymKey_convertKey_03_0200
     * @tc.name      : test_generatesymkey_02
     * @tc.desc      : test Crypto test_generatesymkey_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generatesymkey_02(): Unit {
        let skg = createSymKeyGenerator("3DES192")
        let sk = skg.generateSymKey()
        @Expect(sk.format, "PKCS#8")
        @Expect(sk.algName, "3DES192")
        @Expect(sk.getEncoded().data.size, 24)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_generateSymKey_convertKey_03_0300
     * @tc.name      : test_generatesymkey_03
     * @tc.desc      : test Crypto test_generatesymkey_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generatesymkey_03(): Unit {
        let skg = createSymKeyGenerator("AES256")
        let sk = skg.generateSymKey()
        var encodekey = sk.getEncoded()
        @Expect(sk.getEncoded().data.size, 32)
        sk.clearMem()
        @Expect(sk.getEncoded().data, Array<UInt8>(32, repeat:0))
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_generateSymKey_convertKey_03_0400
     * @tc.name      : test_generatesymkey_04
     * @tc.desc      : test Crypto test_generatesymkey_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generatesymkey_04(): Unit {
        let skg = createSymKeyGenerator("3DES192")
        let sk = skg.generateSymKey()
        @Expect(sk.getEncoded().data.size, 24)
        sk.clearMem()
        @Expect(sk.getEncoded().data, Array<UInt8>(24, repeat:0))
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_generateSymKey_convertKey_03_0500
     * @tc.name      : test_convertkey_05
     * @tc.desc      : test Crypto test_convertkey_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_convertkey_05(): Unit {
        let skg = createSymKeyGenerator("3DES192")
        let blob = DataBlob("this is test!zzzzzzzzzzz".toArray())
        let sk = skg.convertKey(blob)
        @Expect(sk.format, "PKCS#8")
        @Expect(sk.algName, "3DES192")
        @Expect(sk.getEncoded().data.size, 24)
        sk.clearMem()
        @Expect(sk.getEncoded().data, Array<UInt8>(24, repeat:0))
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_generateSymKey_convertKey_03_0600
     * @tc.name      : test_convertkey_06
     * @tc.desc      : test Crypto test_convertkey_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_convertkey_06(): Unit {
        let skg = createSymKeyGenerator("3DES192")
        let arr: Array<UInt8> = [0xba, 0x3d, 0xc2, 0x71, 0x21, 0x1e, 0x30, 0x56, 0xad, 0x47, 0xfc, 0x5a, 0x46, 0x39,
            0xee, 0x7c, 0xba, 0x3b, 0xc2, 0x71, 0xab, 0xa0, 0x30, 0x72]
        let blob = DataBlob(arr)
        let sk = skg.convertKey(blob)
        @Expect(sk.format, "PKCS#8")
        @Expect(sk.algName, "3DES192")
        @Expect(sk.getEncoded().data.size, 24)
        sk.clearMem()
        @Expect(sk.getEncoded().data, Array<UInt8>(24, repeat:0))
    }
}

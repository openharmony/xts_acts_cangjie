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
import ohos.security.crypto_framework.{createCipher, createSymKeyGenerator, CryptoMode, GcmParamsSpec, DataBlob,
    ParamsSpec}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class TestInitUpdateDoFinal {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_init_update_doFinal_04_0100
     * @tc.name      : test_cipher_init_01
     * @tc.desc      : test Crypto test_cipher_init_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_init_01(): Unit {
        let cases_1300 = [
            "this is test!",
            "aaaaa.....bbbbb.....ccccc.....ddddd.....eee"
        ]
        for (parameter_0 in cases_1300) {
            var cipher = createCipher("AES128|GCM|PKCS7")
            let skg = createSymKeyGenerator("AES128")
            let sk = skg.generateSymKey()
            cipher.`initialize`(CryptoMode.EncryptMode, sk,
                GcmParamsSpec("GcmParamsSpec", DataBlob(Array<UInt8>(12, repeat: 0)), DataBlob(Array<UInt8>(8, repeat: 0)),
                    DataBlob(Array<UInt8>(16, repeat: 0))))
            cipher.update(DataBlob(parameter_0.toArray()))
            cipher.update(DataBlob(Array<UInt8>(255, repeat: 1)))
            @Expect(cipher.doFinal(Option<DataBlob>.None).data.size, 16)

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_init_update_doFinal_04_0200
     * @tc.name      : test_cipher_init_02
     * @tc.desc      : test Crypto test_cipher_init_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_init_02(): Unit {
        var cipher = createCipher("3DES192|ECB|PKCS7")
        let skg = createSymKeyGenerator("3DES192")
        let arr: Array<UInt8> = [0xba, 0x3d, 0xc2, 0x71, 0x21, 0x1e, 0x30, 0x56, 0xad, 0x47, 0xfc, 0x5a, 0x46, 0x39,
            0xee, 0x7c, 0xba, 0x3b, 0xc2, 0x71, 0xab, 0xa0, 0x30, 0x72]
        let blob = DataBlob(arr)
        let sk = skg.convertKey(blob)
        cipher.`initialize`(CryptoMode.EncryptMode, sk, Option<ParamsSpec>.None)
        let blob1 = cipher.update(DataBlob("this is test!".toArray()))
        let blob2 = cipher.doFinal(Option<DataBlob>.None)
        @Expect(blob1.data.size, 8)
        cipher.`initialize`(CryptoMode.DecryptMode, sk, Option<ParamsSpec>.None)
        let blob3 = cipher.update(blob1)
        let blob4 = cipher.update(blob2)
        let blob5 = cipher.doFinal(Option<DataBlob>.None)
        @Expect(((String.fromUtf8(blob3.data)) == ("")) &&
            ((String.fromUtf8(blob4.data)) == ("this is ")) &&
            ((String.fromUtf8(blob5.data)) == ("test!")))
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_init_update_doFinal_04_0400
     * @tc.name      : test_cipher_init_04
     * @tc.desc      : test Crypto test_cipher_init_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_init_04(): Unit {
        var cipher = createCipher("3DES192|ECB|NoPadding")
        let skg = createSymKeyGenerator("3DES192")
        let sk = skg.generateSymKey()
        cipher.`initialize`(CryptoMode.EncryptMode, sk,
            GcmParamsSpec("CcmParamsSpec", DataBlob(Array<UInt8>(7, repeat: 0)), DataBlob(Array<UInt8>(8, repeat: 0)),
                DataBlob(Array<UInt8>(12, repeat: 0))))
        cipher.update(DataBlob(Array<UInt8>(8, repeat: 1)))
        cipher.update(DataBlob(Array<UInt8>(8, repeat: 1)))
        @Expect(cipher.doFinal(DataBlob(Array<UInt8>(16, repeat: 1))).data.size, 16)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_init_update_doFinal_04_0500
     * @tc.name      : test_cipher_init_05
     * @tc.desc      : test Crypto test_cipher_init_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_init_05(): Unit {
        var cipher = createCipher("3DES192|ECB|NoPadding")
        let skg = createSymKeyGenerator("3DES192")
        let sk = skg.generateSymKey()
        cipher.`initialize`(CryptoMode.DecryptMode, sk,
            GcmParamsSpec("CcmParamsSpec", DataBlob(Array<UInt8>(7, repeat: 1)), DataBlob(Array<UInt8>(8, repeat: 1)),
                DataBlob(Array<UInt8>(12, repeat: 1))))
        cipher.update(DataBlob(Array<UInt8>(8, repeat: 1)))
        cipher.update(DataBlob(Array<UInt8>(255, repeat: 1)))
        try {
            cipher.doFinal(DataBlob(Array<UInt8>(255, repeat: 1))).data
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17630001)
        }
    }
}

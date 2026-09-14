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

import kit.CryptoArchitectureKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.base.*
import std.unittest.testmacro.*
import std.math.numeric.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class TestCrypto {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

     /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_1300
     * @tc.name      : test_crypto_mode_and_key_api
     * @tc.desc      : API coverage counterpart of ArkTS CryptoArchitecture enum/interface
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_crypto_mode_and_key_api(): Unit {
        let encryptMode = CryptoMode.EncryptMode
        let decryptMode = CryptoMode.DecryptMode
        @Expect(encryptMode.toString(), "CryptoMode.EncryptMode")
        @Expect(decryptMode.toString(), "CryptoMode.DecryptMode")
        @Expect(encryptMode == CryptoMode.EncryptMode, true)
        @Expect(decryptMode != encryptMode, true)

        let generator = createSymKeyGenerator("AES128")
        let key: Key = generator.generateSymKey()
        @Expect(key.algName, "AES128")
        @Expect(key.format, "PKCS#8")
    }

     /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_1400
     * @tc.name      : test_cipher_spec_item_enum_api
     * @tc.desc      : Verify every public CipherSpecItem enum value can be represented and round-tripped through its string conversion.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_spec_item_enum_api(): Unit {
        let values = [
            CipherSpecItem.OaepMdNameStr,
            CipherSpecItem.OaepMgfNameStr,
            CipherSpecItem.OaepMgf1MdStr,
            CipherSpecItem.OaepMgf1PsrcUint8Arr
        ]
        @Expect(values.size, 4)
        for (value in values) {
            @Expect(value.toString().size > 0, true)
        }
        @Expect(CipherSpecItem.OaepMdNameStr == CipherSpecItem.OaepMdNameStr, true)
        @Expect(CipherSpecItem.OaepMdNameStr != CipherSpecItem.OaepMgfNameStr, true)
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0100
     * @tc.name      : test_random
     * @tc.desc      : test CryptoArchitectureKit generateRandom
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_random(): Unit {
        let random = createRandom()
        @Expect(random.algName, "CTR_DRBG")
        var len = random.generateRandom(1).data[0]
        if (len == 0) {
            len = 1
        }
        random.setSeed(DataBlob([1, 2, 3, 4, 5]))
        @Expect(Int64(len), random.generateRandom(Int32(len)).data.size)
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0200
     * @tc.name      : test_mac
     * @tc.desc      : test CryptoArchitectureKit createMac
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_mac(): Unit {
        let mac = createMac("SHA256")
        @Expect(mac.algName, "SHA256")
        let skg = createSymKeyGenerator("AES128")
        let sk = skg.generateSymKey()
        mac.`initialize`(sk)
        let blob = DataBlob("this is test!".toArray())
        mac.update(blob)
        let res = mac.doFinal()
        @Expect(res.data.size, Int64(mac.getMacLength()))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0300
     * @tc.name      : test_md
     * @tc.desc      : test CryptoArchitectureKit createMd
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_md(): Unit {
        let md = createMd("SHA256")
        @Expect(md.algName, "SHA256")
        let message = "mdTestMessgae"
        md.update(DataBlob(message.toArray()))
        let blob = md.digest()
        @Expect(blob.data.size, Int64(md.getMdLength()))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0400
     * @tc.name      : test_sym_key
     * @tc.desc      : test CryptoArchitectureKit generateSymKey
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_sym_key(): Unit {
        let syg = createSymKeyGenerator("AES128")
        @Expect(syg.algName, "AES128")
        let sk = syg.generateSymKey()
        @Expect(((sk.algName) == ("AES128")) && ((sk.format) == ("PKCS#8")))
        let blob = sk.getEncoded()
        @Expect(blob.data.size, 16)
        sk.clearMem()
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0500
     * @tc.name      : test_cipher_aes_ecb
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_aes_ecb(): Unit {
        let skg = createSymKeyGenerator("AES128")
        let sk = skg.convertKey(DataBlob([83, 217, 231, 76, 28, 113, 23, 219, 250, 71, 209, 210, 205, 97, 32, 159]))
        let encoder = createCipher("AES128|ECB|PKCS7")
        @Expect(encoder.algName, "AES128|ECB|PKCS7")
        encoder.`initialize`(CryptoMode.EncryptMode, sk, Option<ParamsSpec>.None)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.doFinal(blob)
        let decoder = createCipher("AES128|ECB|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, Option<ParamsSpec>.None)
        let decryptData = decoder.doFinal(encryptText)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0600
     * @tc.name      : test_cipher_aes_gcm
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_aes_gcm(): Unit {
        let skg = createSymKeyGenerator("AES128")
        let sk = skg.convertKey(DataBlob([83, 217, 231, 76, 28, 113, 23, 219, 250, 71, 209, 210, 205, 97, 32, 159]))
        let encoder = createCipher("AES128|GCM|PKCS7")
        let ivBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        let aadBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0])
        let tagBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        var gcmParamsSpec = GcmParamsSpec("GcmParamsSpec", ivBlob, aadBlob, tagBlob)
        @Expect(gcmParamsSpec.algName, "GcmParamsSpec")
        gcmParamsSpec.algName = "GcmParamsSpec"
        gcmParamsSpec.iv = ivBlob
        gcmParamsSpec.aad = aadBlob
        encoder.`initialize`(CryptoMode.EncryptMode, sk, gcmParamsSpec)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.update(blob)
        gcmParamsSpec.authTag = encoder.doFinal(Option<DataBlob>.None)
        let decoder = createCipher("AES128|GCM|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, gcmParamsSpec)
        let decryptData = decoder.update(encryptText)
        decoder.doFinal(Option<DataBlob>.None)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0700
     * @tc.name      : test_cipher_aes_cbc
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_aes_cbc(): Unit {
        let skg = createSymKeyGenerator("AES128")
        let sk = skg.convertKey(DataBlob([83, 217, 231, 76, 28, 113, 23, 219, 250, 71, 209, 210, 205, 97, 32, 159]))
        let encoder = createCipher("AES128|CBC|PKCS7")
        let ivBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        var ivParamsSpec = IvParamsSpec("IvParamsSpec", ivBlob)
        @Expect(ivParamsSpec.algName, "IvParamsSpec")
        ivParamsSpec.algName = "IvParamsSpec"
        ivParamsSpec.iv = ivBlob
        encoder.`initialize`(CryptoMode.EncryptMode, sk, ivParamsSpec)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.doFinal(blob)
        let decoder = createCipher("AES128|CBC|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, ivParamsSpec)
        let decryptData = decoder.doFinal(encryptText)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0800
     * @tc.name      : test_cipher_3_des_ecb
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_3_des_ecb(): Unit {
        let skg = createSymKeyGenerator("3DES192")
        let sk = skg.convertKey(
            DataBlob([238, 249, 61, 55, 128, 220, 183, 224, 139, 253, 248, 239, 239, 41, 71, 25, 235, 206, 230, 162, 249,
                27, 234, 114]))
        let encoder = createCipher("3DES192|ECB|PKCS7")
        encoder.`initialize`(CryptoMode.EncryptMode, sk, Option<ParamsSpec>.None)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.doFinal(blob)
        let decoder = createCipher("3DES192|ECB|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, Option<ParamsSpec>.None)
        let decryptData = decoder.doFinal(encryptText)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_0900
     * @tc.name      : test_cipher_sm4_ecb
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_sm4_ecb(): Unit {
        let skg = createSymKeyGenerator("SM4_128")
        let sk = skg.convertKey(DataBlob([7, 154, 52, 176, 4, 236, 150, 43, 237, 9, 145, 166, 141, 174, 224, 131]))
        let encoder = createCipher("SM4_128|ECB|PKCS7")
        encoder.`initialize`(CryptoMode.EncryptMode, sk, Option<ParamsSpec>.None)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.doFinal(blob)
        let decoder = createCipher("SM4_128|ECB|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, Option<ParamsSpec>.None)
        let decryptData = decoder.doFinal(encryptText)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_1000
     * @tc.name      : test_cipher_sm4_cbc
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_sm4_cbc(): Unit {
        let skg = createSymKeyGenerator("SM4_128")
        let sk = skg.convertKey(DataBlob([7, 154, 52, 176, 4, 236, 150, 43, 237, 9, 145, 166, 141, 174, 224, 131]))
        let encoder = createCipher("SM4_128|CBC|PKCS7")
        let ivBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        var ivParamsSpec = IvParamsSpec("IvParamsSpec", ivBlob)
        encoder.`initialize`(CryptoMode.EncryptMode, sk, ivParamsSpec)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.doFinal(blob)
        let decoder = createCipher("SM4_128|CBC|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, ivParamsSpec)
        let decryptData = decoder.doFinal(encryptText)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_1100
     * @tc.name      : test_cipher_sm4_gcm
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_sm4_gcm(): Unit {
        let skg = createSymKeyGenerator("SM4_128")
        let sk = skg.convertKey(DataBlob([83, 217, 231, 76, 28, 113, 23, 219, 250, 71, 209, 210, 205, 97, 32, 159]))
        let encoder = createCipher("SM4_128|GCM|PKCS7")
        let ivBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        let aadBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0])
        let tagBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        var gcmParamsSpec = GcmParamsSpec("GcmParamsSpec", ivBlob, aadBlob, tagBlob)
        encoder.`initialize`(CryptoMode.EncryptMode, sk, gcmParamsSpec)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.update(blob)
        gcmParamsSpec.authTag = encoder.doFinal(Option<DataBlob>.None)
        let decoder = createCipher("SM4_128|GCM|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, gcmParamsSpec)
        let decryptData = decoder.update(encryptText)
        decoder.doFinal(Option<DataBlob>.None)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

    /*
     * @tc.number    : Sub_Cangjie_CryptoArchitectureKit_Test_crypto_1200
     * @tc.name      : test_cipher_aes_ccm
     * @tc.desc      : test CryptoArchitectureKit createCipher
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cipher_aes_ccm(): Unit {
        let skg = createSymKeyGenerator("AES128")
        let sk = skg.convertKey(DataBlob([83, 217, 231, 76, 28, 113, 23, 219, 250, 71, 209, 210, 205, 97, 32, 159]))
        let encoder = createCipher("AES128|CCM|PKCS7")
        let ivBlob = DataBlob([0, 0, 0, 0, 0, 0, 0])
        let aadBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0])
        let tagBlob = DataBlob([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        var ccmParamsSpec = CcmParamsSpec("CcmParamsSpec", ivBlob, aadBlob, tagBlob)
        @Expect(ccmParamsSpec.algName, "CcmParamsSpec")
        ccmParamsSpec.algName = "CcmParamsSpec"
        ccmParamsSpec.iv = ivBlob
        ccmParamsSpec.aad = aadBlob
        encoder.`initialize`(CryptoMode.EncryptMode, sk, ccmParamsSpec)
        let message = "This is a test"
        let blob = DataBlob(message.toArray())
        let encryptText = encoder.update(blob)
        ccmParamsSpec.authTag = encoder.doFinal(Option<DataBlob>.None)
        let decoder = createCipher("AES128|CCM|PKCS7")
        decoder.`initialize`(CryptoMode.DecryptMode, sk, ccmParamsSpec)
        let decryptData = decoder.update(encryptText)
        decoder.doFinal(Option<DataBlob>.None)
        @Expect(message, String.fromUtf8(decryptData.data))
    }

}

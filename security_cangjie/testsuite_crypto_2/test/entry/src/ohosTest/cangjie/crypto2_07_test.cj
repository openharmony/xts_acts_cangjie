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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import kit.BasicServicesKit.*
import kit.CryptoArchitectureKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import std.math.numeric.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class TestCryptoFramework_Create {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0100
     * @tc.name      : createSymKeyGenerator_creat_algList
     * @tc.desc      : test Crypto createSymKeyGenerator_creat_algList
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func createSymKeyGenerator_creat_algList() {
        let algNamelist = ["3DES192", "AES192"]
        for (algName in algNamelist) {
            createSymKeyGenerator(algName)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0200
     * @tc.name      : createSymKeyGenerator_creat_algempty
     * @tc.desc      : test Crypto createSymKeyGenerator_creat_algempty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func createSymKeyGenerator_creat_algempty() {
        let algName = " "
        try {
            createSymKeyGenerator(algName)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
            @Expect(e.message, "Capability not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0300
     * @tc.name      : generateSymKey_3DES192
     * @tc.desc      : test Crypto generateSymKey_3DES192
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_3DES192() {
        let algName = "3DES192"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 24)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0400
     * @tc.name      : generateSymKey_AES128
     * @tc.desc      : test Crypto generateSymKey_AES128
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_AES128() {
        let algName = "AES128"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 16)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0500
     * @tc.name      : generateSymKey_AES192
     * @tc.desc      : test Crypto generateSymKey_AES192
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_AES192() {
        let algName = "AES192"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 24)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0600
     * @tc.name      : generateSymKey_AES256
     * @tc.desc      : test Crypto generateSymKey_AES256
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_AES256() {
        let algName = "AES256"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 32)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0700
     * @tc.name      : generateSymKey_SM4_128
     * @tc.desc      : test Crypto generateSymKey_SM4_128
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_SM4_128() {
        let algName = "SM4_128"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 16)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0800
     * @tc.name      : generateSymKey_HMAC_SHA1
     * @tc.desc      : test Crypto generateSymKey_HMAC_SHA1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_HMAC_SHA1() {
        let algName = "HMAC|SHA1"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 20)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0900
     * @tc.name      : generateSymKey_HMAC_SHA224
     * @tc.desc      : test Crypto generateSymKey_HMAC_SHA224
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_HMAC_SHA224() {
        let algName = "HMAC|SHA224"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 28)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1000
     * @tc.name      : generateSymKey_HMAC_SHA256
     * @tc.desc      : test Crypto generateSymKey_HMAC_SHA256
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_HMAC_SHA256() {
        let algName = "HMAC|SHA256"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 32)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1100
     * @tc.name      : generateSymKey_HMAC_SHA384
     * @tc.desc      : test Crypto generateSymKey_HMAC_SHA384
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_HMAC_SHA384() {
        let algName = "HMAC|SHA384"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 48)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1200
     * @tc.name      : generateSymKey_HMAC_SHA512
     * @tc.desc      : test Crypto generateSymKey_HMAC_SHA512
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_HMAC_SHA512() {
        let algName = "HMAC|SHA512"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 64)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1300
     * @tc.name      : generateSymKey_HMAC_SM3
     * @tc.desc      : test Crypto generateSymKey_HMAC_SM3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generateSymKey_HMAC_SM3() {
        let algName = "HMAC|SM3"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let symKey = symKeyGenerator.generateSymKey()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.size, 32)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1400
     * @tc.name      : symKey_convertkey_3des
     * @tc.desc      : test Crypto symKey_convertkey_3des
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func symKey_convertkey_3des() {
        let algName = "3DES192"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let blob: Array<UInt8> = [0xba, 0x3d, 0xc2, 0x71, 0x21, 0x1e, 0x30, 0x56, 0xad, 0x47, 0xfc, 0x5a, 0x46, 0x39,
            0xee, 0x7c, 0xba, 0x3b, 0xc2, 0x71, 0xab, 0xa0, 0x30, 0x72]
        let symKey = symKeyGenerator.convertKey(DataBlob(blob))
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.toString(), "[186, 61, 194, 113, 33, 30, 48, 86, 173, 71, 252, 90, 70, 57, 238, 124, 186, 59, 194, 113, 171, 160, 48, 114]")
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1500
     * @tc.name      : symKey_convertkey_sm4
     * @tc.desc      : test Crypto symKey_convertkey_sm4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func symKey_convertkey_sm4() {
        let algName = "SM4_128"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let blob: Array<UInt8> = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
        let symKey = symKeyGenerator.convertKey(DataBlob(blob))
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.toString(), "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]")
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1800
     * @tc.name      : symKey_clearMem_convertkey_3des
     * @tc.desc      : test Crypto symKey_clearMem_convertkey_3des
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func symKey_clearMem_convertkey_3des() {
        let algName = "3DES192"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let blob: Array<UInt8> = [0xba, 0x3d, 0xc2, 0x71, 0x21, 0x1e, 0x30, 0x56, 0xad, 0x47, 0xfc, 0x5a, 0x46, 0x39,
            0xee, 0x7c, 0xba, 0x3b, 0xc2, 0x71, 0xab, 0xa0, 0x30, 0x72]
        let symKey = symKeyGenerator.convertKey(DataBlob(blob))
        symKey.clearMem()
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.toString(), "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]")
        symKey.clearMem()
    }
}

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
class TestCryptoFrameworkCreate {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0100
     * @tc.name      : create_sym_key_generator_creat_alg_list
     * @tc.desc      : test Crypto create_sym_key_generator_creat_alg_list
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func create_sym_key_generator_creat_alg_list(): Unit {
        let algNamelist = ["3DES192", "AES192"]
        for (algName in algNamelist) {
            createSymKeyGenerator(algName)
        }
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0200
     * @tc.name      : create_sym_key_generator_creat_algempty
     * @tc.desc      : test Crypto create_sym_key_generator_creat_algempty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func create_sym_key_generator_creat_algempty(): Unit {
        let algName = " "
        try {
            createSymKeyGenerator(algName)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 801)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_0300
     * @tc.name      : generate_sym_key_3_des192
     * @tc.desc      : test Crypto generate_sym_key_3_des192
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func generate_sym_key_3_des192(): Unit {
        let cases_1298 = [
            ("3DES192", 24i64),
            ("AES128", 16i64),
            ("AES192", 24i64),
            ("AES256", 32i64),
            ("SM4_128", 16i64),
            ("HMAC|SHA1", 20i64),
            ("HMAC|SHA224", 28i64),
            ("HMAC|SHA256", 32i64),
            ("HMAC|SHA384", 48i64),
            ("HMAC|SHA512", 64i64),
            ("HMAC|SM3", 32i64)
        ]
        for ((parameter_0, parameter_1) in cases_1298) {
            let algName = parameter_0
            let symKeyGenerator = createSymKeyGenerator(algName)
            let symKey = symKeyGenerator.generateSymKey()
            let datablob = symKey.getEncoded()
            @Expect(datablob.data.size, parameter_1)

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1400
     * @tc.name      : sym_key_convertkey_3des
     * @tc.desc      : test Crypto sym_key_convertkey_3des
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func sym_key_convertkey_3des(): Unit {
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
     * @tc.name      : sym_key_convertkey_sm4
     * @tc.desc      : test Crypto sym_key_convertkey_sm4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func sym_key_convertkey_sm4(): Unit {
        let algName = "SM4_128"
        let symKeyGenerator = createSymKeyGenerator(algName)
        let blob: Array<UInt8> = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
        let symKey = symKeyGenerator.convertKey(DataBlob(blob))
        let datablob = symKey.getEncoded()
        @Expect(datablob.data.toString(), "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]")
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_TestCryptoFramework_Create_1800
     * @tc.name      : sym_key_clear_mem_convertkey_3des
     * @tc.desc      : test Crypto sym_key_clear_mem_convertkey_3des
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func sym_key_clear_mem_convertkey_3des(): Unit {
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

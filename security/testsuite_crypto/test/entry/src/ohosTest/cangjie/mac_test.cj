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
import ohos.security.crypto_framework.{Mac, createMac, DataBlob, createSymKeyGenerator}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.business_exception.*

@Test
class TestMac {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Mac_08_0100
     * @tc.name      : test_create_mac_01
     * @tc.desc      : test Crypto test_create_mac_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_mac_01(): Unit {
        var globalMac: Mac
        var macString: String = "SHA1"
        try {
            globalMac = createMac(macString)
            @Expect(globalMac.algName, "SHA1")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Mac_08_0200
     * @tc.name      : test_create_mac_02
     * @tc.desc      : test Crypto test_create_mac_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_mac_02(): Unit {
        let cases_1293 = [
            "SHA1X",
            ""
        ]
        for (parameter_0 in cases_1293) {
            var globalMac: Mac
            var macString: String = parameter_0
            try {
                globalMac = createMac(macString)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401i32)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Mac_08_0400
     * @tc.name      : test_mac_update_04
     * @tc.desc      : test Crypto test_mac_update_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_mac_update_04(): Unit {
        var globalMac: Mac
        var macString: String = "SM3"
        var blob = DataBlob("this is test!".toArray())
        var skg = createSymKeyGenerator("AES128")
        var sk = skg.generateSymKey()
        try {
            globalMac = createMac(macString)
            globalMac.`initialize`(sk)
            globalMac.update(blob)
            @Expect(globalMac.algName, "SM3")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Mac_08_0500
     * @tc.name      : test_mac_update_05
     * @tc.desc      : test Crypto test_mac_update_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_mac_update_05(): Unit {
        var globalMac: Mac
        var macString: String = "SHA256"
        var blob = DataBlob("".toArray())
        var skg = createSymKeyGenerator("AES128")
        var sk = skg.generateSymKey()
        try {
            globalMac = createMac(macString)
            globalMac.`initialize`(sk)
            globalMac.update(blob)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Mac_08_0600
     * @tc.name      : test_mac_do_final_06
     * @tc.desc      : test Crypto test_mac_do_final_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_mac_do_final_06(): Unit {
        var globalMac: Mac
        var macString: String = "SHA256"
        var blob = DataBlob("test".toArray())
        var skg = createSymKeyGenerator("AES128")
        var sk = skg.generateSymKey()
        var final_blob: DataBlob
        try {
            globalMac = createMac(macString)
            globalMac.`initialize`(sk)
            globalMac.update(blob)
            final_blob = globalMac.doFinal()
            @Expect(((final_blob.data.size) == (32)) && ((globalMac.getMacLength()) == (32)))
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}

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
import ohos.security.crypto_framework.{Md, createMd, DataBlob}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*

@Test
class Test_Md_07 {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0100
     * @tc.name      : test_createMd_01
     * @tc.desc      : test Crypto test_createMd_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_01(): Unit {
        var globalMd: Md
        var mdString: String = "SHA1"

        try {
            globalMd = createMd(mdString)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0200
     * @tc.name      : test_createMd_02
     * @tc.desc      : test Crypto test_createMd_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_02(): Unit {
        var globalMd: Md
        var mdString: String = "SHA224"

        try {
            globalMd = createMd(mdString)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0300
     * @tc.name      : test_createMd_03
     * @tc.desc      : test Crypto test_createMd_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_03(): Unit {
        var globalMd: Md
        var mdString: String = "SHA256"

        try {
            globalMd = createMd(mdString)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0400
     * @tc.name      : test_createMd_04
     * @tc.desc      : test Crypto test_createMd_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_04(): Unit {
        var globalMd: Md
        var mdString: String = "SHA384"

        try {
            globalMd = createMd(mdString)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0500
     * @tc.name      : test_createMd_05
     * @tc.desc      : test Crypto test_createMd_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_05(): Unit {
        var globalMd: Md
        var mdString: String = "SHA512"

        try {
            globalMd = createMd(mdString)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0600
     * @tc.name      : test_createMd_06
     * @tc.desc      : test Crypto test_createMd_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_06(): Unit {
        var globalMd: Md
        var mdString: String = "MD5"

        try {
            globalMd = createMd(mdString)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0700
     * @tc.name      : test_createMd_07
     * @tc.desc      : test Crypto test_createMd_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_07(): Unit {
        var globalMd: Md
        var mdString: String = "SM3"

        try {
            globalMd = createMd(mdString)
            @Expect(globalMd.algName, "SM3")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0800
     * @tc.name      : test_createMd_08
     * @tc.desc      : test Crypto test_createMd_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_08(): Unit {
        var globalMd: Md
        var mdString: String = "SHA1X"

        try {
            globalMd = createMd(mdString)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Parameter error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0900
     * @tc.name      : test_createMd_09
     * @tc.desc      : test Crypto test_createMd_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_09(): Unit {
        var globalMd: Md
        var mdString: String = "SHA1"
        var blob: DataBlob = DataBlob("test".toArray())

        try {
            globalMd = createMd(mdString)
            globalMd.update(blob)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_1000
     * @tc.name      : test_createMd_10
     * @tc.desc      : test Crypto test_createMd_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createMd_10(): Unit {
        var globalMd: Md
        var mdString: String = "SHA512"
        var blob: DataBlob = DataBlob("".toArray())

        try {
            globalMd = createMd(mdString)
            globalMd.update(blob)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Parameter error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_1100
     * @tc.name      : test_Md_digest_11
     * @tc.desc      : test Crypto test_Md_digest_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Md_digest_11(): Unit {
        var globalMd: Md
        var mdString: String = "SHA512"
        var blob: DataBlob = DataBlob("test".toArray())
        var digest_blob: DataBlob

        try {
            globalMd = createMd(mdString)
            globalMd.update(blob)
            digest_blob = globalMd.digest()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_1200
     * @tc.name      : test_Md_digest_12
     * @tc.desc      : test Crypto test_Md_digest_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Md_digest_12(): Unit {
        var globalMd: Md
        var mdString: String = "SHA512"
        var blob: DataBlob = DataBlob("test".toArray())
        var Length: UInt32

        try {
            globalMd = createMd(mdString)
            globalMd.update(blob)
            Length = globalMd.getMdLength()
            @Expect(Length, 64)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}

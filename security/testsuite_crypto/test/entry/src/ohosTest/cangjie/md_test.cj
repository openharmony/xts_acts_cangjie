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
import ohos.business_exception.*

@Test
class TestMd {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0100
     * @tc.name      : test_create_md_01
     * @tc.desc      : test Crypto test_create_md_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_md_01(): Unit {
        let cases_1294 = [
            "SHA1",
            "SHA224",
            "SHA256",
            "SHA384",
            "SHA512",
            "MD5"
        ]
        for (parameter_0 in cases_1294) {
            var globalMd: Md
            var mdString: String = parameter_0
            try {
                globalMd = createMd(mdString)
                @Expect(true)
            } catch (e: Exception) {
                @Expect(false)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0700
     * @tc.name      : test_create_md_07
     * @tc.desc      : test Crypto test_create_md_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_md_07(): Unit {
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
     * @tc.name      : test_create_md_08
     * @tc.desc      : test Crypto test_create_md_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_md_08(): Unit {
        var globalMd: Md
        var mdString: String = "SHA1X"
        try {
            globalMd = createMd(mdString)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_0900
     * @tc.name      : test_create_md_09
     * @tc.desc      : test Crypto test_create_md_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_md_09(): Unit {
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
     * @tc.name      : test_create_md_10
     * @tc.desc      : test Crypto test_create_md_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_md_10(): Unit {
        var globalMd: Md
        var mdString: String = "SHA512"
        var blob: DataBlob = DataBlob("".toArray())
        try {
            globalMd = createMd(mdString)
            globalMd.update(blob)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Md_07_1100
     * @tc.name      : test_md_digest_11
     * @tc.desc      : test Crypto test_md_digest_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_md_digest_11(): Unit {
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
     * @tc.name      : test_md_digest_12
     * @tc.desc      : test Crypto test_md_digest_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_md_digest_12(): Unit {
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

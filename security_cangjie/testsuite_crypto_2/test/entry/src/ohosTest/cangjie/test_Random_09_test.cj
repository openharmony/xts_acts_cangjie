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
import ohos.security.crypto_framework.{Random, createRandom, DataBlob}
import std.math.MathExtension
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*

@Test
class Test_Random_09 {

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Random_09_0100
     * @tc.name      : test_createRandom_01
     * @tc.desc      : test Crypto test_createRandom_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createRandom_01(): Unit {
        var globalRandom: Random

        try {
            globalRandom = createRandom()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Random_09_0200
     * @tc.name      : test_generateRandom_02
     * @tc.desc      : test Crypto test_generateRandom_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generateRandom_02(): Unit {
        var globalRandom: Random
        var len: Int32 = 1
        var blob: DataBlob

        try {
            globalRandom = createRandom()
            blob = globalRandom.generateRandom(len)
            @Expect(blob.data.size, 1)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Random_09_0400
     * @tc.name      : test_generateRandom_04
     * @tc.desc      : test Crypto test_generateRandom_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generateRandom_04(): Unit {
        var globalRandom: Random
        var len: Int32 = 0
        var blob: DataBlob

        try {
            globalRandom = createRandom()
            blob = globalRandom.generateRandom(len)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Parameter error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Random_09_0500
     * @tc.name      : test_generateRandom_05
     * @tc.desc      : test Crypto test_generateRandom_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_generateRandom_05(): Unit {
        var globalRandom: Random
        var len: Int32 = -1
        var blob: DataBlob

        try {
            globalRandom = createRandom()
            blob = globalRandom.generateRandom(len)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Parameter error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Random_09_0600
     * @tc.name      : test_setSeed_06
     * @tc.desc      : test Crypto test_setSeed_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_setSeed_06(): Unit {
        var globalRandom: Random
        var len: Int32 = 1
        var blob: DataBlob

        try {
            globalRandom = createRandom()
            blob = globalRandom.generateRandom(len)
            globalRandom.setSeed(blob)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Random_09_0700
     * @tc.name      : test_setSeed_07
     * @tc.desc      : test Crypto test_setSeed_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_setSeed_07(): Unit {
        var globalRandom: Random
        var blob: DataBlob = DataBlob("test".toArray())

        try {
            globalRandom = createRandom()
            globalRandom.setSeed(blob)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}

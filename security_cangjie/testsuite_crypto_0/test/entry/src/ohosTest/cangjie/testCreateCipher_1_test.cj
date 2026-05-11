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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.CryptoArchitectureKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class testCreateCipher_1 {
    /*
     * @tc.number    : Sub_Cangjie_testCreateCipher_createCipher_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test createCipher param use ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "createCipher fail")
        try {
            createCipher("")
            @Expect("assertion#0: not throw", "createCipher fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Capability not supported.")
            @Expect(e.code, 801i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateCipher_createCipher_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test createCipher param use "errorString"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "createCipher fail")
        try {
            createCipher("errorString")
            @Expect("assertion#1: not throw", "createCipher fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Capability not supported.")
            @Expect(e.code, 801i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateCipher_createCipher_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test createCipher param use "3DES192|ECB|PKCS7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "createCipher")
        createCipher("3DES192|ECB|PKCS7")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
}

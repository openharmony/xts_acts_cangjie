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
import ohos.ui_test.*
import kit.ArkData.*
import ohos.business_exception.BusinessException

@Test
class Test_getPreferences_01 {
    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_getPreferences_01_0100
    * @tc.name      : test_getpreferences_exception_01
    * @tc.desc      : test Preference test_getpreferences_exception_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getpreferences_exception_01(): Unit {
        try {
            Preferences.getPreferences(getAbilityContext(), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.toString(), "BusinessException: errorcode: 15500000, message: Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000)
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_getPreferences_01_0200
    * @tc.name      : test_getpreferences_exception_02
    * @tc.desc      : test Preference test_getpreferences_exception_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getpreferences_exception_02(): Unit {
        try {
            let preferences = Preferences.getPreferences(getAbilityContext(), "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_getPreferences_01_0300
    * @tc.name      : test_getpreferences_exception_03
    * @tc.desc      : test Preference test_getpreferences_exception_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getpreferences_exception_03(): Unit {
        try {
            let preferences = Preferences.getPreferences(getAbilityContext(), "\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
        }
    }
    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_getPreferences_01_0400
    * @tc.name      : test_getpreferences_exception_04
    * @tc.desc      : test Preference test_getpreferences_exception_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getpreferences_exception_04(): Unit {
        try {
            let preferences = Preferences.getPreferences(getAbilityContext(), PreferencesOptions("\0"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
        }
    }
}

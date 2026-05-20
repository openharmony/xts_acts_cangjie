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
class Test_delete_remove_Preferences_02 {
    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_delete_remove_Preferences_02_0100
    * @tc.name      : test_deletepreferences_exception_01
    * @tc.desc      : test Preference test_deletepreferences_exception_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deletepreferences_exception_01(): Unit {
        let preferences = Preferences.getPreferences(getAbilityContext(), "myStore")
        try {
            Preferences.deletePreferences(getAbilityContext(), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
            @Expect(e.message, "Preferences deletePreferences failed: Inner error.")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_delete_remove_Preferences_02_0200
    * @tc.name      : test_removepreferencesfromcache_exception_02
    * @tc.desc      : test Preference test_removepreferencesfromcache_exception_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_removepreferencesfromcache_exception_02(): Unit {
        let preferences = Preferences.getPreferences(getAbilityContext(), "myStore")
        try {
            Preferences.removePreferencesFromCache(getAbilityContext(), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
            @Expect(e.message, "Preferences removePreferencesFromCache failed: Inner error.")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_delete_remove_Preferences_02_0300
    * @tc.name      : test_preference_fuzz
    * @tc.desc      : test Preference test_preference_fuzz
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_preference_fuzz(): Unit {
        try {
            Preferences.deletePreferences(getAbilityContext(), String.fromUtf8([46]))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500010)
            @Expect(e.message, "Preferences deletePreferences failed: Failed to delete preferences file.")
        }
    }
}

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
class Test_get_getAll_flush_clear_05 {
    var _preferences: ?Preferences = None
    prop preferences: Preferences {
        get() {
            match (_preferences) {
                case Some(preferences) => preferences
                case None =>
                    var preferences = Preferences.getPreferences(getAbilityContext(), "cangjieStore")
                    _preferences = preferences
                    preferences
            }
        }
    }
    public override func beforeEach(): Unit {
        for (i in 0..1000) {
            preferences.put("${i}", PreferencesValueType.Integer(i + 1))
        }
        for (i in 1000..2000) {
            let values = Float64(i + 1)
            preferences.put("${i}", PreferencesValueType.Double(values))
        }
        for (i in 2000..3000) {
            preferences.put("${i}", PreferencesValueType.StringData("仓颉 + ${i}"))
        }
        for (i in 3000..4000) {
            preferences.put("${i}", PreferencesValueType.BoolData(true))
        }
        for (i in 4000..5000) {
            preferences.put("${i}", PreferencesValueType.BoolArray([true, false, true]))
        }
        for (i in 5000..6000) {
            let floatArray = Array<Float64>(100, repeat: 3.14)
            preferences.put("${i}", PreferencesValueType.DoubleArray(floatArray))
        }
        for (i in 6000..7000) {
            let stringArray = Array<String>(100, repeat: "cangjie")
            preferences.put("${i}", PreferencesValueType.StringArray(stringArray))
        }
    }
    public override func afterEach(): Unit {
        preferences.clear()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_05_0100
    * @tc.name      : test_flush_01
    * @tc.desc      : test Preference test_flush_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_flush_01(): Unit {
        preferences.flush()
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), true)
        }
        for (i in 0..7000) {
            preferences.delete("${i}")
        }
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), false)
        }
        var preferences1 = Preferences.getPreferences(getAbilityContext(), "cangjieStore")
        for (i in 0..7000) {
            @Expect(preferences1.has("${i}"), false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_05_0200
    * @tc.name      : test_flush_02
    * @tc.desc      : test Preference test_flush_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_flush_02(): Unit {
        preferences.flush()
        Preferences.removePreferencesFromCache(getAbilityContext(), "cangjieStore")
        var preferences2 = Preferences.getPreferences(getAbilityContext(), "new_name")
        for (i in 0..7000) {
            @Expect(preferences2.has("${i}"), false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_05_0300
    * @tc.name      : test_clear_03
    * @tc.desc      : test Preference test_clear_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_clear_03(): Unit {
        preferences.flush()
        preferences.clear()
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), false)
        }
        Preferences.removePreferencesFromCache(getAbilityContext(), "cangjieStore")
        var preferences3 = Preferences.getPreferences(getAbilityContext(), "new_name1")
        for (i in 0..7000) {
            @Expect(preferences3.has("${i}"), false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_05_0400
    * @tc.name      : test_clear_04
    * @tc.desc      : test Preference test_clear_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_clear_04(): Unit {
        preferences.flush()
        preferences.clear()
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), false)
        }
        Preferences.deletePreferences(getAbilityContext(), "cangjieStore")
        var preferences4 = Preferences.getPreferences(getAbilityContext(), "cangjieStore")
        for (i in 0..7000) {
            @Expect(preferences4.has("${i}"), false)
        }
    }
}

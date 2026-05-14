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
import std.convert.Parsable

@Test
class Test_put_has_delete_03 {
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
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0100
    * @tc.name      : test_put_01
    * @tc.desc      : test Preference test_put_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_01(): Unit {
        try {
            preferences.put("", PreferencesValueType.StringData("仓颉语言"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0200
    * @tc.name      : test_put_02
    * @tc.desc      : test Preference test_put_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_02(): Unit {
        try {
            preferences.put("", PreferencesValueType.BoolArray([true, false, true]))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0300
    * @tc.name      : test_put_03
    * @tc.desc      : test Preference test_put_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_03(): Unit {
        try {
            preferences.put("\0", PreferencesValueType.BoolArray([true, false, true]))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0400
    * @tc.name      : test_put_04
    * @tc.desc      : test Preference test_put_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_04(): Unit {
        for ((k, v) in preferences.getAll()) {
            match (v) {
                case Integer(n) => @Expect(n, Int64.parse(k)+1)
                case Double(n) => @Expect(n, Float64(Int64.parse(k)+1))
                case StringData(n) => @Expect(n, "仓颉 + ${Int64.parse(k)}")
                case BoolData(n) => @Expect(n, true)
                case BoolArray(n) => @Expect(n, [true, false, true])
                case DoubleArray(n) => @Expect(n, Array<Float64>(100, repeat: 3.14))
                case StringArray(n) => @Expect(n, Array<String>(100, repeat: "cangjie"))
                case _ => @Expect(false)
            }
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0500
    * @tc.name      : test_put_05
    * @tc.desc      : test Preference test_put_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_05(): Unit {
        preferences.put("123\0456", PreferencesValueType.BoolArray([true, false, true]))
        @Expect(preferences.has("123"), true)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0600
    * @tc.name      : test_has_06
    * @tc.desc      : test Preference test_has_06
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_06(): Unit {
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), true)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0700
    * @tc.name      : test_has_07
    * @tc.desc      : test Preference test_has_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_07(): Unit {
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), true)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0800
    * @tc.name      : test_has_08
    * @tc.desc      : test Preference test_has_08
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_08(): Unit {
        preferences.put("%&abc", PreferencesValueType.BoolArray([true, false, true]))
        @Expect(preferences.has("%&abc"), true)
        @Expect(preferences.has("#&abc"), false)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_0900
    * @tc.name      : test_has_09
    * @tc.desc      : test Preference test_has_09
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_09(): Unit {
        preferences.put("123", PreferencesValueType.BoolArray([true, false, true]))
        @Expect(preferences.has("123"), true)
        @Expect(preferences.has("\0"), false)
        @Expect(preferences.has("$%^123"), false)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_1000
    * @tc.name      : test_has_10
    * @tc.desc      : test Preference test_has_10
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_10(): Unit {
        let pref = preferences.has("")
        @Expect(pref, false)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_1100
    * @tc.name      : test_delete_11
    * @tc.desc      : test Preference test_delete_11
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_11(): Unit {
        try {
            preferences.delete("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_1200
    * @tc.name      : test_delete_12
    * @tc.desc      : test Preference test_delete_12
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_12(): Unit {
        try {
            preferences.delete("\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_put_has_delete_03_1300
    * @tc.name      : test_delete_13
    * @tc.desc      : test Preference test_delete_13
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_13(): Unit {
        for (i in 0..1000) {
            preferences.delete("${i}")
        }
        for (i in 0..1000) {
            @Expect(preferences.has("${i}"), false)
        }
        for (i in 1000..7000) {
            @Expect(preferences.has("${i}"), true)
        }
        for (i in 1000..7000) {
            preferences.delete("${i}")
        }
        preferences.delete("7000")
        for (i in 0..7000) {
            @Expect(preferences.has("${i}"), false)
        }
    }
}

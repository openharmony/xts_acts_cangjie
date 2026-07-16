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
import std.convert.{Parsable}

@Test
class Test_get_getAll_flush_clear_04 {
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
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0100
    * @tc.name      : test_get_01
    * @tc.desc      : test Preference test_get_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_01(): Unit {
        let pref = preferences.get("", PreferencesValueType.StringData("仓颉语言"))
        match (pref) {
            case PreferencesValueType.StringData(n) => @Expect(n, "仓颉语言")
            case _ => @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0200
    * @tc.name      : test_get_02
    * @tc.desc      : test Preference test_get_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_02(): Unit {
        var preget = preferences.get("\0", PreferencesValueType.StringData("仓颉语言"))
        match (preget) {
            case PreferencesValueType.StringData(n) => @Expect(n, "仓颉语言")
            case _ => @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0300
    * @tc.name      : test_get_03
    * @tc.desc      : test Preference test_get_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_03(): Unit {
        var preget = preferences.get("1", PreferencesValueType.StringData("仓颉语言"))
        match (preget) {
            case PreferencesValueType.Integer(n) => @Expect(n, 2)
            case _ => @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0400
    * @tc.name      : test_get_04
    * @tc.desc      : test Preference test_get_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_04(): Unit {
        var preget = preferences.get("1000", PreferencesValueType.StringData("仓颉语言"))
        match (preget) {
            case PreferencesValueType.Double(n) => @Expect(n, 1001.0)
            case _ => @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0500
    * @tc.name      : test_get_05
    * @tc.desc      : test Preference test_get_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_05(): Unit {
        var preget = preferences.get("2000", PreferencesValueType.Integer(2))
        match (preget) {
            case PreferencesValueType.StringData(s) => @Expect(s, "仓颉 + 2000")
            case _ => @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0600
    * @tc.name      : test_get_06
    * @tc.desc      : test Preference test_get_06
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_06(): Unit {
        var preget = preferences.get("3000", PreferencesValueType.Integer(3))
        match (preget) {
            case PreferencesValueType.BoolData(b) => @Expect(b, true)
            case _ => @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0700
    * @tc.name      : test_getall_07
    * @tc.desc      : test Preference test_getall_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getall_07(): Unit {
        for (i in 0..1000) {
            preferences.delete("${i}")
        }
        var preget = preferences.getAll()
        for ((k, v) in preget) {
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
    * @tc.number    : Sub_Cangjie_Preference_Test_get_getAll_flush_clear_04_0800
    * @tc.name      : test_getall_08
    * @tc.desc      : test Preference test_getall_08
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getall_08(): Unit {
        for (i in 0..7000) {
            preferences.delete("${i}")
        }
        preferences.put("仓颉", PreferencesValueType.Double(1.2))
        preferences.put("zps", PreferencesValueType.BoolData(true))
        preferences.put("#$%", PreferencesValueType.StringData("cangjietest"))
        var preget = preferences.getAll()
        for ((k, v) in preget) {
            match (v) {
                case Double(n) => @Expect(n, Float64(1.2))
                case StringData(n) => @Expect(n, "cangjietest")
                case BoolData(n) => @Expect(n, true)
                case _ => @Expect(false)
            }
        }
    }
}

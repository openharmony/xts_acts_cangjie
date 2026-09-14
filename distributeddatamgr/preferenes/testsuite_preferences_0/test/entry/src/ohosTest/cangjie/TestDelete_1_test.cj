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
import ohos.data.preferences.*
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import ohos_app_cangjie_entry.Global

@Test
class TestDelete_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.BoolData(true))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.BoolArray([false, true]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Double(Float64.Min))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Double(Float64.Max))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Double(Float64.Inf))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Double(0.000000f64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Integer(Int64.Min))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Integer(-1i64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Integer(0i64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Integer(1i64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.Integer(Int64.Max))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.StringData(""))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.StringData("\0"))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.StringData("hello world"))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.StringArray(["a", "b", "c"]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.StringArray(["", "", ""]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key1", PreferencesValueType.StringArray(["", "\0", "hello world"]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key1")
        @Expect(false, preferences.has("key1"))
        Hilog.info(0, "cangjietest","testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.BoolData(true))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.BoolArray([false, true]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Double(Float64.Min))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Double(Float64.Max))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Double(Float64.Inf))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Double(0.000000f64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Integer(Int64.Min))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Integer(-1i64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Integer(0i64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Integer(1i64))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.Integer(Int64.Max))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.StringData(""))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.StringData("\0"))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.StringData("hello world"))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.StringArray(["a", "b", "c"]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.StringArray(["", "", ""]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key2", PreferencesValueType.StringArray(["", "\0", "hello world"]))
        Hilog.info(0, "cangjietest","deleteKey")
        preferences.delete("key2")
        @Expect(false, preferences.has("key2"))
        Hilog.info(0, "cangjietest","testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.BoolData(true))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.BoolArray([false, true]))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Double(Float64.Min))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Double(Float64.Max))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Double(Float64.Inf))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Double(0.000000f64))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Integer(Int64.Min))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Integer(-1i64))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Integer(0i64))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Integer(1i64))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.Integer(Int64.Max))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.StringData(""))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.StringData("\0"))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_51 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.StringData("hello world"))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_52 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.StringArray(["a", "b", "c"]))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_53 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.StringArray(["", "", ""]))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_54 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key3", PreferencesValueType.StringArray(["", "\0", "hello world"]))
        @Expect(true, preferences.has("key3"))
        Hilog.info(0, "cangjietest","testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_55 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.BoolData(true))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_56 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.BoolArray([false, true]))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_57 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Double(Float64.Min))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_58 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Double(Float64.Max))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_59 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Double(Float64.Inf))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_60 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Double(0.000000f64))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_61 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_62 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Integer(Int64.Min))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_63 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Integer(-1i64))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_64 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Integer(0i64))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_65 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Integer(1i64))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_66 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.Integer(Int64.Max))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_67 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.StringData(""))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_68 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.StringData("\0"))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_69 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.StringData("hello world"))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_70 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.StringArray(["a", "b", "c"]))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_71 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.StringArray(["", "", ""]))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_Delete_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : preferences delete key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_72 begins.")
        Hilog.info(0, "cangjietest","define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        Hilog.info(0, "cangjietest","clearKey")
        preferences.clear()
        Hilog.info(0, "cangjietest","putKeyValue")
        preferences.put("key4", PreferencesValueType.StringArray(["", "\0", "hello world"]))
        @Expect(true, preferences.has("key4"))
        Hilog.info(0, "cangjietest","testcase TestCase_72 ends.")
    }
}

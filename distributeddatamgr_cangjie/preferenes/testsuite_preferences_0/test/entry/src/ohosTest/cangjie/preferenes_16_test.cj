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
class TestPutSuccess_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : put and get value PreferencesValueType.BoolData(true).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.BoolData(true))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.BoolData(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, true)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : put and get value PreferencesValueType.BoolArray([false, true]).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.BoolArray([false, true]))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.BoolArray(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, [false, true])
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : put and get value PreferencesValueType.Double(Float64.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Double(Float64.Min))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Double(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, Float64.Min)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : put and get value PreferencesValueType.Double(Float64.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Double(Float64.Max))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Double(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, Float64.Max)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : put and get value PreferencesValueType.Double(Float64.Inf).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Double(Float64.Inf))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Double(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, Float64.Inf)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : put and get value PreferencesValueType.Double(0.000000f64).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Double(0.000000f64))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Double(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, 0.000000f64)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : put and get value PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.DoubleArray(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, [Float64.Min, Float64.Max, Float64.Inf, 0.000000f64])
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : put and get value PreferencesValueType.Integer(Int64.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Integer(Int64.Min))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Integer(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, Int64.Min)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : put and get value PreferencesValueType.Integer(-1i64).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Integer(-1i64))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Integer(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, -1i64)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : put and get value PreferencesValueType.Integer(0i64).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Integer(0i64))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Integer(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, 0i64)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : put and get value PreferencesValueType.Integer(1i64).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Integer(1i64))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Integer(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, 1i64)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : put and get value PreferencesValueType.Integer(Int64.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.Integer(Int64.Max))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.Integer(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, Int64.Max)
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : put and get value PreferencesValueType.StringData("").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.StringData(""))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.StringData(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, "")
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : put and get value PreferencesValueType.StringData("\0").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.StringData("\0"))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.StringData(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, "")
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : put and get value PreferencesValueType.StringData("hello world").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.StringData("hello world"))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.StringData(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, "hello world")
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : put and get value PreferencesValueType.StringArray(["a", "b", "c"]).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        Hilog.info(0, "cangjietest", "define local variable preferences")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
        Hilog.info(0, "cangjietest", "put")
        preferences.put("validKey", PreferencesValueType.StringArray(["a", "b", "c"]))
        @Expect(true, preferences.has("validKey"))
        Hilog.info(0, "cangjietest", "check get result")
        if (let PreferencesValueType.StringArray(value) <- preferences
            .getAll()
            .get("validKey")
            .getOrThrow()) {
            @Expect(value, ["a", "b", "c"])
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : put and get value PreferencesValueType.StringArray(["", "", ""]).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        try {
            Hilog.info(0, "cangjietest", "define local variable preferences")
            let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
            Hilog.info(0, "cangjietest", "put")
            preferences.put("validKey", PreferencesValueType.StringArray(["", "", ""]))
            @Expect(true, preferences.has("validKey"))
            Hilog.info(0, "cangjietest", "check get result")
            if (let PreferencesValueType.StringArray(value) <- preferences
                .getAll()
                .get("validKey")
                .getOrThrow()) {
                @Expect(value, ["", "", ""])
            } else {
                @Expect(false)
            }
        } catch (e: Exception) {
            @Expect(e.toString(), "NoneValueException")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : put and get value PreferencesValueType.StringArray(["", "\0", "hello world"]).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "xxx")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "myPreferences")
            @Expect(false)
        } catch (_: Exception) {
        }
        try {
            Hilog.info(0, "cangjietest", "define local variable preferences")
            let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreferences")
            Hilog.info(0, "cangjietest", "put")
            preferences.put("validKey", PreferencesValueType.StringArray(["", "\0", "hello world"]))
            @Expect(true, preferences.has("validKey"))
            Hilog.info(0, "cangjietest", "check get result")
            if (let PreferencesValueType.StringArray(value) <- preferences
                .getAll()
                .get("validKey")
                .getOrThrow()) {
                @Expect(value, ["", "\0", "hello world"])
            } else {
                @Expect(false)
            }
        } catch (e: Exception) {
            @Expect(e.toString(), "NoneValueException")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }
}

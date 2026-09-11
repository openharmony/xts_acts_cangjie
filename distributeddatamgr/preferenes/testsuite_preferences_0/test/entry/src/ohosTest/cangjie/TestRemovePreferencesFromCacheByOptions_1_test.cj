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
import ohos.business_exception.BusinessException
import ohos_app_cangjie_entry.Global

@Test
class TestRemovePreferencesFromCacheByOptions_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.BoolData(true))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : delete preferences by options name="preferences2" groupId="5".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences2", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.BoolArray([false, true]))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences2", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences2", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Double(Float64.Min))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Double(Float64.Max))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Double(Float64.Inf))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Double(0.000000f64))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.DoubleArray([Float64.Min, Float64.Max, Float64.Inf, 0.000000f64]))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Integer(Int64.Min))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Integer(-1i64))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Integer(0i64))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Integer(1i64))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.Integer(Int64.Max))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.StringData(""))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.StringData("\0"))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.StringData("hello world"))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.StringArray(["a", "b", "c"]))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.StringArray(["", "", ""]))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_RemovePreferencesFromCacheByOptions_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : delete preferences by options name="preferences1" groupId="1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "define local variable preferences")

        let preferences = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "put")
        preferences.put("key", PreferencesValueType.StringArray(["", "\0", "hello world"]))
        Hilog.info(0, "cangjietest", "flush")
        preferences.flush()
        Hilog.info(0, "cangjietest", "removePreferencesFromCache")
        Preferences.removePreferencesFromCache(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        Hilog.info(0, "cangjietest", "define local variable preferences_1")
        let preferences_1 = Preferences.getPreferences(Global.getAbilityContext(),
            PreferencesOptions("preferences1", dataGroupId: ""))
        @Expect(true, preferences_1.has("key"))

        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }
}

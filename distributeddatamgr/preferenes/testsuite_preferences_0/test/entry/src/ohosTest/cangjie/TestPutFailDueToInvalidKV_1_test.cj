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
class TestPutFailDueToInvalidKV_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_put_1900
     * @tc.name      : TestCase_1
     * @tc.desc      : put key="", vlaue="" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("", PreferencesValueType.StringData(""))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2000
     * @tc.name      : TestCase_2
     * @tc.desc      : put key="", vlaue="\0" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("", PreferencesValueType.StringData("\0"))
            @Expect(false)
        } catch (e: BusinessException) {
             Hilog.info(0, "cangjietest","TestPutFailDueToInvalidKV_1 e.message is ${e.message}")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2100
     * @tc.name      : TestCase_3
     * @tc.desc      : put key="", vlaue="validvalue" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("", PreferencesValueType.StringData("validvalue"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2200
     * @tc.name      : TestCase_4
     * @tc.desc      : put key="", vlaue="x" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("", PreferencesValueType.StringData("x" * 16777217))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2300
     * @tc.name      : TestCase_5
     * @tc.desc      : put key="\0", vlaue="" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("\0", PreferencesValueType.StringData(""))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2400
     * @tc.name      : TestCase_6
     * @tc.desc      : put key="\0", vlaue="\0" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("\0", PreferencesValueType.StringData("\0"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2500
     * @tc.name      : TestCase_7
     * @tc.desc      : put key="\0", vlaue="validvalue" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("\0", PreferencesValueType.StringData("validvalue"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2600
     * @tc.name      : TestCase_8
     * @tc.desc      : put key="\0", vlaue="x" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("\0", PreferencesValueType.StringData("x" * 16777217))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2700
     * @tc.name      : TestCase_9
     * @tc.desc      : put key="validkey", vlaue="" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("validkey", PreferencesValueType.StringData(""))
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2800
     * @tc.name      : TestCase_10
     * @tc.desc      : put key="validkey", vlaue="\0" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        preferences.put("validkey", PreferencesValueType.StringData("\0"))
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_2900
     * @tc.name      : TestCase_11
     * @tc.desc      : put key="validkey", vlaue="validvalue" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","put")
        preferences.put("validkey", PreferencesValueType.StringData("validvalue"))
        @Expect(true, preferences.has("validkey"))
        Hilog.info(0, "cangjietest","check get result")
        if (let PreferencesValueType.StringData(value) <- preferences.getAll().get("validkey").getOrThrow()) {
            @Expect(value, "validvalue")
        } else {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_3000
     * @tc.name      : TestCase_12
     * @tc.desc      : put key="validkey", vlaue="x" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("validkey", PreferencesValueType.StringData("x" * 16777217))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_3100
     * @tc.name      : TestCase_13
     * @tc.desc      : put key="x", vlaue="" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("x" * 10000, PreferencesValueType.StringData(""))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_3200
     * @tc.name      : TestCase_14
     * @tc.desc      : put key="x", vlaue="\0" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("x" * 10000, PreferencesValueType.StringData("\0"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_3300
     * @tc.name      : TestCase_15
     * @tc.desc      : put key="x", vlaue="validvalue" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("x" * 10000, PreferencesValueType.StringData("validvalue"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_put_3400
     * @tc.name      : TestCase_16
     * @tc.desc      : put key="x", vlaue="x" due to invalid name.
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
        Hilog.info(0, "cangjietest","clear")
        preferences.clear()
        Hilog.info(0, "cangjietest","fail to put kv.")
        try {
            preferences.put("x" * 10000, PreferencesValueType.StringData("x" * 16777217))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_16 ends.")
    }
}

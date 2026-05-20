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

import kit.ArkData.*
internal import ohos.base.*
internal import std.collection.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.BusinessException

@Test
class Test_preferences {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0100
    * @tc.name      : test_context
    * @tc.desc      : test ArkData PREFERENCES_MAX_KEY_LENGTH
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_context() {
        @Expect(MAX_KEY_LENGTH, 1024u32)
        @Expect(MAX_VALUE_LENGTH, 16777216u32)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0200
    * @tc.name      : test_getPreferences
    * @tc.desc      : test ArkData getPreferences
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getPreferences() {
        var str = "myStore"
        var str1 = "otherStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        var b = Preferences.getPreferences(getAbilityContext(), PreferencesOptions("otherStore"))
        Preferences.deletePreferences(getAbilityContext(), str)
        Preferences.deletePreferences(getAbilityContext(), str1)
        @Expect(0, 0)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0300
    * @tc.name      : test_deletePreferences
    * @tc.desc      : test ArkData deletePreferences
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deletePreferences() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("key", PreferencesValueType.Integer(980))
        match (a.get("key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 980) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        match (a.get("key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 980) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        var b = Preferences.getPreferences(getAbilityContext(), str)
        match (b.get("key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 0) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0400
    * @tc.name      : test_removePreferences
    * @tc.desc      : test ArkData removePreferencesFromCache
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_removePreferences() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("key", PreferencesValueType.Integer(980))
        match (a.get("key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 980) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        Preferences.removePreferencesFromCache(getAbilityContext(), str)
        match (a.get("key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 980) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        var b = Preferences.getPreferences(getAbilityContext(), str)
        match (b.get("key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 0) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0500
    * @tc.name      : test_put_get
    * @tc.desc      : test ArkData put&get
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_get() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("key01", PreferencesValueType.Integer(3))
        a.put("key02", PreferencesValueType.Integer(5))
        a.put("key03", PreferencesValueType.Double(5.77))
        a.put("key04", PreferencesValueType.StringData("今天天气真好"))
        a.put("key05", PreferencesValueType.BoolData(true))
        a.put("key06", PreferencesValueType.BoolArray([true, false, true, false]))
        a.put(
            "key07",
            PreferencesValueType.DoubleArray(
                [3.14, 15.9, 26.53, 58.979, 32.384, 626.433, 8327.950288, 41.971, 493.9937510, 58209.74944])
        )
        a.put("key08", PreferencesValueType.StringArray(["这个，", "按理说不应该", "出错", "如果出错了", "就gg"]))
        match (a.get("key01", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 3) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key02", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                if (n != 5) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key03", PreferencesValueType.Double(0.0))) {
            case PreferencesValueType.Double(n) =>
                if (n != 5.77) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key04", PreferencesValueType.StringData("0"))) {
            case PreferencesValueType.StringData(n) =>
                if (n != "今天天气真好") {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key05", PreferencesValueType.BoolData(false))) {
            case PreferencesValueType.BoolData(n) =>
                if (n != true) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key06", PreferencesValueType.BoolArray([false]))) {
            case PreferencesValueType.BoolArray(n) =>
                if (n != [true, false, true, false]) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key07", PreferencesValueType.DoubleArray([0.77]))) {
            case PreferencesValueType.DoubleArray(n) =>
                if (n != [3.14, 15.9, 26.53, 58.979, 32.384, 626.433, 8327.950288, 41.971, 493.9937510, 58209.74944]) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        match (a.get("key08", PreferencesValueType.StringArray(["wu"]))) {
            case PreferencesValueType.StringArray(n) =>
                if (n != ["这个，", "按理说不应该", "出错", "如果出错了", "就gg"]) {
                    throw Exception()
                }
            case _ => throw Exception()
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0600
    * @tc.name      : test_flush
    * @tc.desc      : test ArkData flush
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_flush() {
        var str = "myStore1"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("天气怎么样?", PreferencesValueType.StringData("今天天气真好"))
        a.flush()
        Preferences.removePreferencesFromCache(getAbilityContext(), str)
        var b = Preferences.getPreferences(getAbilityContext(), str)
        if (!b.has("天气怎么样?")) {
            throw Exception()
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        var c = Preferences.getPreferences(getAbilityContext(), str)
        if (c.has("天气怎么样?")) {
            throw Exception()
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_0700
    * @tc.name      : test_clear
    * @tc.desc      : test ArkData clear
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_clear() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("天气怎么样?", PreferencesValueType.StringData("今天天气真好"))
        a.flush()
        a.put("今天吃什么?", PreferencesValueType.StringData("吃麻辣香锅"))
        a.clear()
        var b = Preferences.getPreferences(getAbilityContext(), str)
        if (a.has("天气怎么样?")) {
            throw Exception()
        }
        if (a.has("今天吃什么?")) {
            throw Exception()
        }
        if (b.has("天气怎么样?")) {
            throw Exception()
        }
        if (b.has("今天吃什么?")) {
            throw Exception()
        }
        Preferences.removePreferencesFromCache(getAbilityContext(), str)
        var c = Preferences.getPreferences(getAbilityContext(), str)
        if (!c.has("天气怎么样?")) {
            throw Exception()
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        var d = Preferences.getPreferences(getAbilityContext(), str)
        if (d.has("天气怎么样?")) {
            throw Exception()
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1000
    * @tc.name      : test_delete
    * @tc.desc      : test ArkData delete
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("kkk1", PreferencesValueType.StringData("vvv1"))
        a.delete("kkk1")
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1100
    * @tc.name      : test_delete_error
    * @tc.desc      : test ArkData delete
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete_error() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        try {
            a.delete("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1200
    * @tc.name      : test_deletePreferences_error
    * @tc.desc      : test ArkData deletePreferences
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deletePreferences_error() {
        var str = ""
        try {
            Preferences.deletePreferences(getAbilityContext(), str)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1300
    * @tc.name      : test_removePreferencesFromCache_error
    * @tc.desc      : test ArkData removePreferencesFromCache
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_removePreferencesFromCache_error() {
        var str = ""
        try {
            Preferences.removePreferencesFromCache(getAbilityContext(), str)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15500000)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1400
    * @tc.name      : test_put_error
    * @tc.desc      : test ArkData put
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_put_error() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        try {
            a.put("", PreferencesValueType.Integer(980))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1600
    * @tc.name      : test_option
    * @tc.desc      : test ArkData getPreferences
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_option() {
        var str = "myStore"
        var str1 = "otherStore"
        var str2 = "GroupId"
        try {
            Preferences.getPreferences(getAbilityContext(), PreferencesOptions("otherStore", dataGroupId:""))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 22)
        }
        @Expect(0, 0)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_1700
    * @tc.name      : test_CPreferencesValueTypes
    * @tc.desc      : test ArkData PreferencesValueType
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CPreferencesValueTypes() {
        var str = "myStore"
        var str1 = "otherStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        a.put("key01", PreferencesValueType.Integer(3))
        a.put("key02", PreferencesValueType.Integer(5))
        a.put("key03", PreferencesValueType.Double(5.77))
        a.put("key04", PreferencesValueType.StringData("今天天气真好"))
        a.put("key05", PreferencesValueType.BoolData(true))
        a.put("key06", PreferencesValueType.BoolArray([true, false, true, false]))
        a.getAll()
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(true)
    }
}

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
import ohos.business_exception.*

@Test
class TestClear_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_Clear_DataTypes
     * @tc.name      : TestCase_Clear_Various_ValueTypes
     * @tc.desc      : preferences clear with various value types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Clear_Various_ValueTypes(): Unit {
        Hilog.info(0, "cangjietest", "testcase begins.")
        let preferences = Preferences.getPreferences(Global.getAbilityContext(), "myPreference")
        
        // 只使用支持的基本类型
        let testValues: Array<PreferencesValueType> = [
            PreferencesValueType.BoolData(true),
            PreferencesValueType.BoolData(false),
            PreferencesValueType.Double(Float64.Min),
            PreferencesValueType.Double(Float64.Max),
            PreferencesValueType.Double(0.0f64),
            PreferencesValueType.Double(3.14159f64),
            PreferencesValueType.Integer(Int64.Min),
            PreferencesValueType.Integer(-1i64),
            PreferencesValueType.Integer(0i64),
            PreferencesValueType.Integer(1i64),
            PreferencesValueType.Integer(Int64.Max),
            PreferencesValueType.StringData(""),
            PreferencesValueType.StringData("\0"),
            PreferencesValueType.StringData("#$%^&"),
            PreferencesValueType.StringData("123456"),
            PreferencesValueType.StringData("abcedABC"),
            PreferencesValueType.StringData("com.example.myapplication"),
        ]
        
        var caseNum = 1
        for (value in testValues) {
            Hilog.info(0, "cangjietest", "Testing case ${caseNum}")
            
            preferences.put("key${caseNum}", value)
            @Expect(preferences.has("key${caseNum}"), true)
            
            preferences.clear()
            @Expect(preferences.has("key${caseNum}"), false)
            
            caseNum++
        }
        
        Hilog.info(0, "cangjietest", "testcase ends.")
    }
}
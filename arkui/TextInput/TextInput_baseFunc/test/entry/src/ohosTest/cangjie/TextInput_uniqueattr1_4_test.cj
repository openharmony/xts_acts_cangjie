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
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.app.ability.ability_delegator_registry.*
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import ohos.ui_test.*
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.TInp_uniqueattr_01.*
import ohos_app_cangjie_entry.TInp_uniqueattr_02.*
import ohos_app_cangjie_entry.TInp_uniqueattr_03.*
import ohos_app_cangjie_entry.TInp_uniqueattr_04.*
@Test
class TextInput_uniqueattr1_4_test {
    /*
     * @tc.number    : TestTextInput_uniqueattr_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr1_301\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "TextInput_uniqueattr1_4_test"
            modtestCaseText[0] = "TestCase_301"
            modtestView[0] = {_:CustomView => View_TextInput_uniqueattr1_301(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["caretColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontFamily"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontStyle"], "\"FontStyle.Italic\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontWeight"], "\"600\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontSize"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["enterKeyType"], "\"EnterKeyType.NewLine\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontColor"], "\"#FF000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
}

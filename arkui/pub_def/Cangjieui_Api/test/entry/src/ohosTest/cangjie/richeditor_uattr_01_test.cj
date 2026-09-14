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
import ohos_app_cangjie_entry.richeditor_uattr_01.View_richeditor_uattr_01
import ohos_app_cangjie_entry.richeditor_uattr_01.View_richeditor_uattr_02

@Test
class richeditor_uattr_01_test {
    /*
     * @tc.number    : TestRicheditor_uattr_01_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the RichEditor with normal text content and DecorationStyleResult normal values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_richeditor_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "richeditor_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_richeditor_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("re01_richeditor"), 3000i32)

        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re01_ready_text").text, "ready")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re01_deco_text").text, "Underline")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re01_offset_text").text, "5")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re01_value_text").text, "HelloRichEditor")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestRicheditor_uattr_01_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the RichEditor with empty content and DecorationStyleResult boundary values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_richeditor_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "richeditor_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_richeditor_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("re02_richeditor"), 3000i32)

        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re02_ready_text").text, "ready")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re02_deco_none_text").text, "None")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re02_deco_overline_text").text, "Overline")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re02_deco_linethrough_text").text, "LineThrough")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re02_offset_text").text, "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("re02_value_text").text, "empty")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}

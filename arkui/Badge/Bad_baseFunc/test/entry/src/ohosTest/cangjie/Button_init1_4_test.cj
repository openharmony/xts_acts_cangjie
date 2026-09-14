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
import ohos_app_cangjie_entry.Bad_init1_01.*
import ohos_app_cangjie_entry.Bad_init2_02.*
@Test
class Button_init1_4_test {
    /*
     * @tc.number    : TestBadge_init1_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init2_301\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_init1_4_test"
            modtestCaseText[0] = "TestCase_301"
            modtestView[0] = {_:CustomView => View_Badge_init2_301(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
}

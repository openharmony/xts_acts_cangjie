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
import ohos_app_cangjie_entry.MenuItem_uevent_01.*
@Test
class MenuItem_uevent_01_test {
    /*
     * @tc.number    : TestMenuItem_uevent_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the onChange event of the MenuItem with selectIcon(true) and selected(false)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuItem_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "MenuItem_uevent_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_MenuItem_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("onChange_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_result_id")["content"], "\"onChange: false\"")
        Hilog.info(0u32, "CangjieTest", "click Text_id to open the menu")
        enterPage("Text_id")
        TestDriver.driver.waitForComponent(On().id("MenuItem_id"), 3000i32)
        @Expect(getInspect.getAttributeValue("MenuItem_id","selected"), "false")
        @Expect(getInspect.getAttributeValue("MenuItem_id","selectIcon"), "\"true\"")
        Hilog.info(0u32, "CangjieTest", "click MenuItem to trigger onChange event")
        TestDriver.driver.waitForComponent(On().id("MenuItem_id"), 3000i32)
            .getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("onChange_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_result_id")["content"], "\"onChange: true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}

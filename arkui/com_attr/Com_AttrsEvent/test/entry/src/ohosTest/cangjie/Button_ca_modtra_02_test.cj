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
import ohos.arkui.component.common.getInspectorByKey
import ohos_app_cangjie_entry.*
import ohos.arkui.component.custom_component.CustomView

@Test
class Button_ca_modtra_02_test {
    /*
     * @tc.number    : TestFlex_modaltransition_0300
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the modaltransition
     * @tc.size      : MediumTest
     * @tc.type      : Function 
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_modtra_02_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Button_ca_modtra_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.findComponent(On().text("transition modal 1")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onAppear:1"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("modtra1")["content"],"\"onAppear:1\"")
        TestDriver.driver.findComponent(On().text("transition modal 2")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onDisappear:0"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("modtra2")["content"],"\"onDisappear:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
}
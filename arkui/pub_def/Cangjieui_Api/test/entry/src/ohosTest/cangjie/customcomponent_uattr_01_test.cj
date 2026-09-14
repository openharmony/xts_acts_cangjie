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
import ohos_app_cangjie_entry.customcomponent_uattr_01.*

@Test
class customcomponent_uattr_01_test {
    /*
     * @tc.number    : TestCustomcomponent_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test CustomView lifecycle (aboutToAppear/onPageShow/onBackPress(returns true)/
     *                 aboutToDisappear/onDidBuild/pageTransition), getLocalStorage(), getUIContext(),
     *                 and bind(builder, thisView)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_customcomponent_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "customcomponent_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_customcomponent_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("customcomp_01_aboutToAppear"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_aboutToAppear")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_onDidBuild")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_getLocalStorage")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_getUIContext")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_bind")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_aggregate")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "trigger onBackPress override and verify return value true")
        TestDriver.driver.waitForComponent(On().id("customcomp_01_btn_backpress"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("customcomp_01_onBackPressReturn"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_onBackPress")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_01_onBackPressReturn")["content"].contains("true"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestCustomcomponent_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test RemoteView.onBackPress (returns false) and onPageHide overrides,
     *                 and CustomView.aboutToBeDeleted()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_customcomponent_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "customcomponent_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_customcomponent_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("customcomp_02_onBackPress"), 3000i32)
        Hilog.info(0u32, "CangjieTest", "trigger onBackPress override and verify return value false")
        TestDriver.driver.waitForComponent(On().id("customcomp_02_btn_backpress"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("customcomp_02_onBackPressReturn"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_02_onBackPress")["content"].contains("ok"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_02_onBackPressReturn")["content"].contains("false"))
        Hilog.info(0u32, "CangjieTest", "trigger onPageHide override")
        TestDriver.driver.waitForComponent(On().id("customcomp_02_btn_pagehide"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("customcomp_02_onPageHide"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_02_onPageHide")["content"].contains("ok"))
        TestDriver.driver.waitForComponent(On().id("customcomp_02_aggregate"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customcomp_02_aggregate")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}

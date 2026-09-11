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
import ohos_app_cangjie_entry.uicontext_uattr_01.*
@Test
class uicontext_uattr_01_test {
    /*
     * @tc.number    : TestUicontext_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test UIContext methods getPromptAction, getMeasureUtils, createAnimator, vp2px, px2vp, fp2px, px2fp, lpx2px, px2lpx, getFont, getRouter, getContextMenuController with normal values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_uicontext_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "uicontext_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_uicontext_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("getPromptAction_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("getPromptAction_check")["content"] != "\"getPromptAction: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("getMeasureUtils_check")["content"] != "\"getMeasureUtils: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("createAnimator_check")["content"] != "\"createAnimator: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("vp2px_check")["content"] != "\"vp2px: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("px2vp_check")["content"] != "\"px2vp: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("fp2px_check")["content"] != "\"fp2px: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("px2fp_check")["content"] != "\"px2fp: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("lpx2px_check")["content"] != "\"lpx2px: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("px2lpx_check")["content"] != "\"px2lpx: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("getFont_check")["content"] != "\"getFont: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("getRouter_check")["content"] != "\"getRouter: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("getContextMenuController_check")["content"] != "\"getContextMenuController: None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}

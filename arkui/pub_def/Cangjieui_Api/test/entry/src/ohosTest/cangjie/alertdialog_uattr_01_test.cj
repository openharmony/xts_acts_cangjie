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
import ohos_app_cangjie_entry.alertdialog_uattr_01.*
@Test
class alertdialog_uattr_01_test {
    /*
     * @tc.number    : TestAlertdialog_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test DialogButtonDirection.Auto, AlertDialogButtonBaseOptions with bool=true
     *                 (enabled, defaultFocus) and normal values, AlertDialogButtonOptions(primary=true),
     *                 AlertDialogParamWithConfirm, AlertDialogParamWithButtons,
     *                 AlertDialogParamWithOptions(buttonDirection=Auto), and Equatable (==, !=)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_alertdialog_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "alertdialog_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_alertdialog_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("alertdialog_uattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("alertdialog_uattr_id")["content"] != "\"Direction.Auto: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonBase_check")["content"] != "\"ButtonBase(bool=true+normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonOptions_check")["content"] != "\"ButtonOptions(primary=true): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramConfirm_check")["content"] != "\"ParamWithConfirm: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramButtons_check")["content"] != "\"ParamWithButtons: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramOptions_check")["content"] != "\"ParamWithOptions(Auto): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("equality_check")["content"] != "\"Equality(==,!=): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("aggregate_check")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestAlertdialog_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test DialogButtonDirection.Horizontal and Vertical, AlertDialogButtonBaseOptions with
     *                 bool=false and with default/None, AlertDialogButtonOptions(primary=false),
     *                 AlertDialogParamWithConfirm(None), AlertDialogParamWithButtons(bool=false),
     *                 AlertDialogParamWithOptions(buttonDirection=Horizontal/Vertical)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_alertdialog_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "alertdialog_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_alertdialog_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("alertdialog_uattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("alertdialog_uattr_id")["content"] != "\"Direction.Horizontal: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("directionVertical_check")["content"] != "\"Direction.Vertical: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonBaseFalse_check")["content"] != "\"ButtonBase(bool=false+normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonBaseNone_check")["content"] != "\"ButtonBase(default/None): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonOptionsFalse_check")["content"] != "\"ButtonOptions(primary=false): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramConfirmNone_check")["content"] != "\"ParamWithConfirm(None): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramButtonsFalse_check")["content"] != "\"ParamWithButtons(bool=false): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramOptionsHorizontal_check")["content"] != "\"ParamWithOptions(Horizontal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("paramOptionsVertical_check")["content"] != "\"ParamWithOptions(Vertical): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("aggregate_check")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}

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
import ohos_app_cangjie_entry.actionsheet_uattr_01.*
@Test
class actionsheet_uattr_01_test {
    /*
     * @tc.number    : TestActionsheet_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test SheetInfo with normal title + icon + action,
     *                 ActionSheetButtonOptions with bool=true (enabled, defaultFocus) and normal values,
     *                 ActionSheetOffset with normal dx/dy, ActionSheetOptions with normal values,
     *                 DismissDialogAction with reason and dismiss(), and Equatable (==, !=) on DialogButtonStyle
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_actionsheet_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "actionsheet_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_actionsheet_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("actionsheet_uattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("actionsheet_uattr_id")["content"] != "\"SheetInfo(normal title): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonOptions_check")["content"] != "\"ButtonOptions(bool=true+normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("offset_check")["content"] != "\"Offset(normal dx,dy): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("options_check")["content"] != "\"Options(normal values): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("dismissAction_check")["content"] != "\"DismissAction(reason+dismiss): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("equality_check")["content"] != "\"Equality(==,!=): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("aggregate_check")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestActionsheet_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test SheetInfo with empty title "", ActionSheetButtonOptions with bool=false and
     *                 with default/None, ActionSheetOffset with zero dx/dy,
     *                 ActionSheetOptions with default/None values, DismissDialogAction with another
     *                 reason (covered), and Equatable (==, !=) on DialogAlignment
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_actionsheet_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "actionsheet_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_actionsheet_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("actionsheet_uattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("actionsheet_uattr_id")["content"] != "\"SheetInfo(empty title): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonOptionsFalse_check")["content"] != "\"ButtonOptions(bool=false+normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("buttonOptionsNone_check")["content"] != "\"ButtonOptions(default/None): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("offsetZero_check")["content"] != "\"Offset(zero dx,dy): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("optionsNone_check")["content"] != "\"Options(default/None): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("dismissActionCovered_check")["content"] != "\"DismissAction(covered): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("equalityAlignment_check")["content"] != "\"EqualityAlignment(==,!=): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("aggregate_check")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}

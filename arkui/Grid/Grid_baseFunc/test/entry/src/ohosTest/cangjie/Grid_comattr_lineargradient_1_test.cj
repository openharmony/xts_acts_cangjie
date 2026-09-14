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
import ohos_app_cangjie_entry.Grid_ca_lineargradient_01.*
@Test
class Grid_comattr_lineargradient_1_test {
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_17\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_17"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_17(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_18\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_18"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_18(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_19\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_19"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_19(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_20\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_20"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_20(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_21\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_21"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_21(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_22\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_22"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_22(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_23\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_23"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_23(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_24\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_24"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_24(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_25\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_25"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_25(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_26\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_26"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_26(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_27\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_27"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_27(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_28\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_28"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_28(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_29\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_29"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_29(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_30\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_30"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_30(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_31\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_31"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_31(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_32\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_32"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_32(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_33\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_33"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_33(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_34\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_34"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_34(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_35\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_35"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_35(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_36\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_36"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_36(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_37\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_37"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_37(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF008000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_38\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_38"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_38(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_39\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_39"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_39(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_40\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_40"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_40(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_41\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_41"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_41(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_42\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_42"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_42(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_43\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_43"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_43(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_44\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_44"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_44(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_45\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_45"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_45(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_46\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_46"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_46(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_47\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_47"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_47(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_48\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_48"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_48(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_49\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_49"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_49(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFF0000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_50\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_50"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_50(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_51\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_51"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_51(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_52\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_52"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_52(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_53\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_53"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_53(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_54\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_54"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_54(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#00000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_55\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_55"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_55(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_56\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_56"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_56(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_57\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_57"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_57(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_58\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_58"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_58(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_59\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_59"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_59(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.LeftTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_60\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_60"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_60(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FFFFFFFF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_61\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_61"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_61(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightBottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_62\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_62"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_62(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF808080\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestGrid_comattr_lineargradient_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the comattr of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_comattr_lineargradient_63\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_comattr_lineargradient_1_test"
            modtestCaseText[0] = "TestCase_63"
            modtestView[0] = {_:CustomView => View_Grid_comattr_lineargradient_63(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.angle"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.direction"], "\"GradientDirection.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.colors"], "[[\"#FF000000\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_comattr_id")["linearGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
}

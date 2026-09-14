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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkData.*
import ohos.display
import std.math.abs
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Grid_rowsTemplate.*
@Test
class Grid_RowsTemplate_1_test {
    /*
     * @tc.number    : TestList_RowsTemplate_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the rowsTemplate of the Grid 1fr 1fr 1fr 1fr
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"1fr 1fr 1fr 1fr\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"75.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_1")["height"], "\"75.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_2")["height"], "\"75.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_3")["height"], "\"75.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the rowsTemplate of the Grid 1fr 2fr 1fr
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"1fr 2fr 1fr\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"75.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_1")["height"], "\"150.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_2")["height"], "\"75.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the rowsTemplate of the Grid 2fr 2fr
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"2fr 2fr\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"150.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_1")["height"], "\"150.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the rowsTemplate of the Grid 1fr 1fr
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"1fr 1fr\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"150.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_1")["height"], "\"150.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the rowsTemplate of the Grid 3fr 1fr
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"3fr 1fr\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"225.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_1")["height"], "\"75.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fit, 70)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fit, 70)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"75.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fit, 300px)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fit, 300px)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"100.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fit, 80vp)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fit, 80vp)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"100.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fit, 35%)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fit, 35%)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"150.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fill, 70)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fill, 70)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"70.00vp\"")
        Hilog.info(0u32, "CangjieTest", "define local variable point_0")
        let point_0 = TestDriver.driver.findComponent(On().id("GridItem_0")).getOrThrow().getBoundsCenter()
        Hilog.info(0u32, "CangjieTest", "define local variable point_1")
        let point_1 = TestDriver.driver.findComponent(On().id("GridItem_1")).getOrThrow().getBoundsCenter()
        let expectValue=70.0*display.getDefaultDisplaySync().densityPixels
        @Expect(abs((point_1.y - point_0.y)-Int32(expectValue))<2)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fill, 300px)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fill, 300px)\"")
        let expectValue=300.0/display.getDefaultDisplaySync().densityPixels
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\""+expectValue.toString()[0..expectValue.toString().size-4]+"vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fill, 80vp)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fill, 80vp)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"80.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-fill, 35%)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-fill, 35%)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"105.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-stretch, 70)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-stretch, 70)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"70.00vp\"")
        Hilog.info(0u32, "CangjieTest", "define local variable point_0")
        let point_0 = TestDriver.driver.findComponent(On().id("GridItem_0")).getOrThrow().getBoundsCenter()
        Hilog.info(0u32, "CangjieTest", "define local variable point_1")
        let point_1 = TestDriver.driver.findComponent(On().id("GridItem_1")).getOrThrow().getBoundsCenter()
        let expectValue=76.66*display.getDefaultDisplaySync().densityPixels
        @Expect(abs((point_1.y - point_0.y)-Int32(expectValue))<2)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-stretch, 300px)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-stretch, 300px)\"")
        let expectValue=300.0/display.getDefaultDisplaySync().densityPixels
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\""+expectValue.toString()[0..expectValue.toString().size-4]+"vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestList_RowsTemplate_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the rowsTemplate of the Grid repeat(auto-stretch, 80vp)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_RowsTemplate16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Grid_RowsTemplate_1_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_Grid_RowsTemplate16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsTemplate"], "\"repeat(auto-stretch, 80vp)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_0")["height"], "\"80.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
}

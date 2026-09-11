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
import std.convert.*
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.GridRow_init_01.*
import ohos_app_cangjie_entry.GridRow_init_02.*
import ohos_app_cangjie_entry.GridRow_init_03.*
import ohos_app_cangjie_entry.GridRow_init_04.*
@Test
class GridRow_init3_2_test {
    /*
     * @tc.number    : TestGridRow_init3_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_101\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_101"
            modtestView[0] = {_:CustomView => View_GridRow_init3_101(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_102\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_102"
            modtestView[0] = {_:CustomView => View_GridRow_init3_102(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_103\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_103"
            modtestView[0] = {_:CustomView => View_GridRow_init3_103(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_104\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_104"
            modtestView[0] = {_:CustomView => View_GridRow_init3_104(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_105\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_105"
            modtestView[0] = {_:CustomView => View_GridRow_init3_105(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_106\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_106"
            modtestView[0] = {_:CustomView => View_GridRow_init3_106(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_107\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_107"
            modtestView[0] = {_:CustomView => View_GridRow_init3_107(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_108\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_108"
            modtestView[0] = {_:CustomView => View_GridRow_init3_108(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_109\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_109"
            modtestView[0] = {_:CustomView => View_GridRow_init3_109(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_110\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_110"
            modtestView[0] = {_:CustomView => View_GridRow_init3_110(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_111\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_111"
            modtestView[0] = {_:CustomView => View_GridRow_init3_111(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_112\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_112"
            modtestView[0] = {_:CustomView => View_GridRow_init3_112(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_113\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_113"
            modtestView[0] = {_:CustomView => View_GridRow_init3_113(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_114\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_114"
            modtestView[0] = {_:CustomView => View_GridRow_init3_114(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_115\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_115"
            modtestView[0] = {_:CustomView => View_GridRow_init3_115(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_116\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_116"
            modtestView[0] = {_:CustomView => View_GridRow_init3_116(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_117\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_117"
            modtestView[0] = {_:CustomView => View_GridRow_init3_117(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_118\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_118"
            modtestView[0] = {_:CustomView => View_GridRow_init3_118(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_119\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_119"
            modtestView[0] = {_:CustomView => View_GridRow_init3_119(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"Row\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestGridRow_init3_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the init of the GridRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_init3_120\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_init3_2_test"
            modtestCaseText[0] = "TestCase_120"
            modtestView[0] = {_:CustomView => View_GridRow_init3_120(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("gridrow_id"), 3000i32)
        @Expect(Int64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["columns"].trimEnd("\"").trimEnd("\"").trimStart("\"").trimStart("\"")) > 0i64)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["breakpoints"], "\"[320.00vp, 600.00vp, 840.00vp,]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("gridrow_id")["direction"], "\"RowReverse\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
}

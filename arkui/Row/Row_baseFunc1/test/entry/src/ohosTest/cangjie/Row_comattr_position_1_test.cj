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
import ohos_app_cangjie_entry.Row_ca_position_01.*
@Test
class Row_comattr_position_1_test {
    /*
     * @tc.number    : TestRow_comattr_position_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_17\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_17"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_17(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_18\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_18"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_18(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_19\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_19"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_19(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_20\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_20"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_20(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_21\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_21"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_21(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_22\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_22"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_22(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_23\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_23"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_23(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_24\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_24"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_24(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_25\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_25"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_25(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_26\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_26"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_26(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_27\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_27"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_27(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_28\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_28"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_28(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_29\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_29"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_29(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_30\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_30"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_30(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_31\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_31"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_31(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_32\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_32"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_32(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_33\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_33"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_33(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_34\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_34"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_34(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_35\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_35"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_35(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_36\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_36"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_36(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_37\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_37"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_37(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_38\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_38"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_38(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_39\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_39"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_39(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_40\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_40"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_40(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_41\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_41"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_41(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_42\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_42"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_42(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_43\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_43"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_43(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_44\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_44"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_44(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_45\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_45"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_45(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_46\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_46"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_46(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_47\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_47"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_47(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_48\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_48"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_48(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_49\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_49"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_49(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_50\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_50"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_50(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_51\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_51"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_51(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_52\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_52"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_52(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_53\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_53"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_53(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_54\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_54"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_54(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_55\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_55"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_55(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_56\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_56"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_56(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_57\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_57"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_57(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_58\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_58"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_58(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_59\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_59"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_59(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_60\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_60"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_60(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_61\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_61"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_61(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_62\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_62"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_62(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_63\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_63"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_63(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_64\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_64"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_64(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_65\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_65"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_65(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_66\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_66"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_66(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_67\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_67"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_67(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_68\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_68"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_68(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_69\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_69"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_69(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_70\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_70"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_70(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_71\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_71"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_71(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_72\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_72"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_72(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_73\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_73"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_73(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_74\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_74"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_74(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_75\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_75"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_75(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_76\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_76"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_76(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_77\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_77"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_77(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_78\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_78"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_78(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_79\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_79"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_79(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_80\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_80"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_80(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_81\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_81"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_81(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_82\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_82"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_82(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_83\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_83"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_83(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_84\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_84"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_84(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_85\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_85"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_85(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_86\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_86"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_86(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_87\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_87"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_87(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_88\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_88"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_88(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_89\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_89"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_89(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_90\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_90"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_90(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_91\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_91"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_91(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_92\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_92"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_92(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_93\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_93"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_93(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_94\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_94"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_94(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_95\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_95"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_95(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_96\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_96"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_96(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_97\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_97"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_97(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_98\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_98"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_98(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_99\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_99"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_99(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_position_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_position_100\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_position_1_test"
            modtestCaseText[0] = "TestCase_100"
            modtestView[0] = {_:CustomView => View_Row_comattr_position_100(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["position.y"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}

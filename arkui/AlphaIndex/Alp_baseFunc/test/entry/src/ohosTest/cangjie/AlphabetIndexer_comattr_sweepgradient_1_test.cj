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
import ohos_app_cangjie_entry.Alp_ca_sweepgradient_01.*
@Test
class AlphabetIndexer_comattr_sweepgradient_1_test {
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-1000.00%\",\"-1000.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"700.00%\",\"700.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.00px\",\"-10.00px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"90.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF808080\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"8.00px\",\"8.00px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF008000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.00vp\",\"-10.00vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FFFF0000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"8.00vp\",\"8.00vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FFFFFFFF\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.00fp\",\"-10.00fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#00000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"10.00fp\",\"10.00fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.00lpx\",\"-10.00lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"11.00lpx\",\"11.00lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-1011.00%\",\"-1011.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"755.00%\",\"755.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.11px\",\"-10.11px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"8.55px\",\"8.55px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.11vp\",\"-10.11vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"9.55vp\",\"9.55vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_17\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_17"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_17(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.11fp\",\"-10.11fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_18\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_18"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_18(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"10.55fp\",\"10.55fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_19\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_19"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_19(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"-10.11lpx\",\"-10.11lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_comattr_sweepgradient_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_AlphabetIndexer_comattr_sweepgradient_20\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_comattr_sweepgradient_1_test"
            modtestCaseText[0] = "TestCase_20"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_comattr_sweepgradient_20(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.center"], "[\"11.55lpx\",\"11.55lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.start"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.end"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_comattr_id")["sweepGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
}

/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
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
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import kit.TestKit.*
import ohos.base.*
import kit.ArkUI.getInspectorByKey
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.*
@Test
class Component_Auto_test {
    /*
     * @tc.number    : TestComponent_Auto_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the combine of the Component Auto 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_component_auto_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_alphabetIndexer"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_alphabetIndexer")["width"], "\"0.00auto\"")
        TestDriver.driver.waitForComponent(On().id("auto_column"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_column")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_column")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the combine of the Component Auto 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_component_auto_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_tabs"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_tabs")["width"], "\"376.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_tabs")["height"], "\"76.00vp\"")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["flexBasis"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the combine of the Component Auto 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_component_auto_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_tabs"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_tabs")["barHeight"], "\"0.000000\"")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_component_auto_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_textinput"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_textinput")["width"], "\"133.42vp\"")
        TestDriver.driver.waitForComponent(On().id("auto_rcon"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_rcon")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_rcon")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_component_auto_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_textinput"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_textinput")["width"], "\"133.42vp\"")
        TestDriver.driver.waitForComponent(On().id("auto_row"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_row")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_row")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the combine of the Component Auto 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_component_auto_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_alphabetIndexer"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_alphabetIndexer")["width"], "\"0.00auto\"")
        TestDriver.driver.waitForComponent(On().id("auto_column"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_column")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_column")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the combine of the Component Auto 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_07\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_component_auto_07(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_tabs"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_tabs")["width"], "\"376.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_tabs")["height"], "\"76.00vp\"")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["flexBasis"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the combine of the Component Auto 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_08\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_component_auto_08(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_tabs"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_tabs")["barHeight"], "\"0.000000\"")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestComponent_Auto_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_09\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_component_auto_09(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_textinput"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_textinput")["width"], "\"133.42vp\"")
        TestDriver.driver.waitForComponent(On().id("auto_rcon"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_rcon")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_rcon")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }  
    /*
     * @tc.number    : TestComponent_Auto_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_component_auto_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_textinput"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_textinput")["width"], "\"133.42vp\"")
        TestDriver.driver.waitForComponent(On().id("auto_row"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_row")["width"], "\"0.00auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_row")["height"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    } 
    /*
     * @tc.number    : TestComponent_Auto_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_component_auto_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("auto_flex")["width"], "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    } 
    /*
     * @tc.number    : TestComponent_Auto_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_component_auto_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        let Inspector = getInspectorByKey("auto_flex")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let act_height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        let act_width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        @Expect(act_height, "\"0.00auto\"")
        @Expect(act_width, "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }    
    /*
     * @tc.number    : TestComponent_Auto_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the combine of the Component Auto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_component_auto_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Component_Auto_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_component_auto_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("auto_flex"), 3000i32)
        let Inspector = getInspectorByKey("auto_flex")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let act_height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        let act_width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        @Expect(act_height, "\"0.00auto\"")
        @Expect(act_width, "\"0.00auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }      
}

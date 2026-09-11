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
import ohos_app_cangjie_entry.CbGroup_uniqueattr_01.*
@Test
class CheckboxGroup_uniqueattr_2_test {
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_101\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_101"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_101(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF008000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_102\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_102"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_102(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF008000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_103\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_103"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_103(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF008000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_104\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_104"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_104(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF008000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_105\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_105"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_105(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF008000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_106\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_106"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_106(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_107\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_107"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_107(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_108\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_108"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_108(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_109\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_109"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_109(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_110\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_110"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_110(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_111\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_111"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_111(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_112\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_112"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_112(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_113\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_113"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_113(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_114\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_114"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_114(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_115\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_115"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_115(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_116\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_116"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_116(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_117\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_117"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_117(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_118\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_118"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_118(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_119\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_119"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_119(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_120\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_120"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_120(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_121\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_121"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_121(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_122\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_122"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_122(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_123\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_123"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_123(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_124\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_124"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_124(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_125\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_125"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_125(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_126\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_126"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_126(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#00000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_127\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_127"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_127(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_128\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_128"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_128(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_129\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_129"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_129(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_130\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_130"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_130(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_131\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_131"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_131(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_132\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_132"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_132(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_133\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_133"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_133(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_134\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_134"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_134(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_135\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_135"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_135(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_136\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_136"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_136(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_137\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_137"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_137(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_138\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_138"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_138(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_139\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_139"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_139(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_140\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_140"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_140(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFF6\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_141\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_141"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_141(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_142\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_142"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_142(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_143\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_143"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_143(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_144\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_144"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_144(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_145\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_145"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_145(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_146\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_146"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_146(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_147\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_147"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_147(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FF00000A\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_148\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_148"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_148(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_149\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_149"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_149(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_150\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_150"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_150(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_151\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_151"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_151(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_152\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_152"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_152(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_153\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_153"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_153(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }
    /*
     * @tc.number    : TestCheckboxGroup_uniqueattr_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test the uniqueattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CheckboxGroup_uniqueattr_154\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "CheckboxGroup_uniqueattr_2_test"
            modtestCaseText[0] = "TestCase_154"
            modtestView[0] = {_:CustomView => View_CheckboxGroup_uniqueattr_154(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxgroup_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectAll"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkboxgroup_id")["selectedColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }
}

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
import ohos_app_cangjie_entry.Row_ca_translate_01.*
@Test
class Row_comattr_translate_2_test {
    /*
     * @tc.number    : TestRow_comattr_translate_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_101\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_101"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_101(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_102\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_102"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_102(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_103\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_103"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_103(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_104\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_104"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_104(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_105\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_105"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_105(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_106\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_106"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_106(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_107\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_107"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_107(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_108\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_108"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_108(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_109\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_109"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_109(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_110\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_110"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_110(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_111\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_111"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_111(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_112\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_112"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_112(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_113\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_113"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_113(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_114\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_114"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_114(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_115\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_115"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_115(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_116\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_116"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_116(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_117\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_117"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_117(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_118\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_118"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_118(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_119\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_119"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_119(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_120\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_120"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_120(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_121\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_121"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_121(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_122\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_122"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_122(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_123\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_123"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_123(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_124\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_124"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_124(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_125\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_125"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_125(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_126\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_126"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_126(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_127\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_127"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_127(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_128\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_128"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_128(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_129\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_129"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_129(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_130\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_130"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_130(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_131\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_131"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_131(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_132\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_132"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_132(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_133\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_133"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_133(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_134\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_134"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_134(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_135\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_135"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_135(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_136\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_136"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_136(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_137\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_137"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_137(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_138\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_138"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_138(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_139\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_139"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_139(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_140\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_140"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_140(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_141\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_141"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_141(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_142\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_142"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_142(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_143\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_143"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_143(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_144\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_144"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_144(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_145\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_145"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_145(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_146\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_146"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_146(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_147\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_147"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_147(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_148\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_148"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_148(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_149\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_149"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_149(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_150\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_150"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_150(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_151\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_151"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_151(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_152\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_152"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_152(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_153\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_153"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_153(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_154\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_154"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_154(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_155\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_155"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_155(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_156\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_156"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_156(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_157\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_157"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_157(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_158\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_158"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_158(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_159\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_159"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_159(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_160\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_160"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_160(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_161\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_161"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_161(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_162\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_162"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_162(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_163\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_163"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_163(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_164\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_164"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_164(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_165\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_165"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_165(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_166\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_166"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_166(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_167\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_167"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_167(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_168\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_168"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_168(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_169\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_169"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_169(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_170\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_170"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_170(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_171\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_171"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_171(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_172\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_172"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_172(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_173\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_173"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_173(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_174\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_174"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_174(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_175\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_175"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_175(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_176\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_176"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_176(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_177\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_177"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_177(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_178\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_178"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_178(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_179\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_179"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_179(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_180\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_180"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_180(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_181\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_181"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_181(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_182\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_182"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_182(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_183\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_183"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_183(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_184\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_184"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_184(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_185\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_185"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_185(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_186\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_186"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_186(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_187\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_187"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_187(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_188\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_188"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_188(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_189\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_189"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_189(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_190\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_190"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_190(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_191\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_191"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_191(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_192\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_192"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_192(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_193\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_193"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_193(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_194\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_194"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_194(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_195\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_195"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_195(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_196\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_196"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_196(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_197\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_197"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_197(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_198\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_198"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_198(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_199\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_199"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_199(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 ends.")
    }
    /*
     * @tc.number    : TestRow_comattr_translate_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Row_comattr_translate_200\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Row_comattr_translate_2_test"
            modtestCaseText[0] = "TestCase_200"
            modtestView[0] = {_:CustomView => View_Row_comattr_translate_200(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Row_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Row_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 ends.")
    }
}

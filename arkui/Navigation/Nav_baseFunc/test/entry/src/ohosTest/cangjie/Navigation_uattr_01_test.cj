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
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Navigation_uattr.*
@Test
class Navigation_uattr_01_test {
    /*
     * @tc.number    : TestNavigation_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the navDestination of the Navigation with single page mapping
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_01"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_01"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_01")["title"], "\"PageOne\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_01")["content"], "\"this is pageOne\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the navDestination of the Navigation with multiple page mappings
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_02"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_02_b"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_02_b")["title"], "\"PageTwo\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_02_b")["content"], "\"this is pageTwo\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the navDestination of the Navigation with parameter passing
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_03"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_03"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_03")["title"], "\"PageOne\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_03")["content"], "\"this is pageOne\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the navDestination of the Navigation with chinese page name
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_04"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_04"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_04")["title"], "\"页面一\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_04")["content"], "\"this is 页面一\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the navDestination of the Navigation with special characters page name
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_05"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_05"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_05")["title"], "\"PageSpecial\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_05")["content"], "\"this is pageSpecial\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the navDestination of the Navigation with NavDestination hideTitleBar true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_06"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_06"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_06")["content"], "\"this is pageOne hideTitleBar true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the navDestination of the Navigation with NavDestination hideTitleBar false
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_07\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_07(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_07"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_07"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_07")["content"], "\"this is pageOne hideTitleBar false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the navDestination of the Navigation with numeric page name
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_08\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_08(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_08"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_08"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_08")["title"], "\"PageNumeric\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_08")["content"], "\"this is pageNumeric\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestNavigation_uattr_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the navDestination of the Navigation with empty parameter
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_uattr_09\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Navigation_uattr_01_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_Navigation_uattr_09(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("pushPageButton_09"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("NavDest_09"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_09")["title"], "\"PageEmpty\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDest_Text_09")["content"], "\"this is pageEmpty\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
}

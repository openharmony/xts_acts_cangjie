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
import ohos_app_cangjie_entry.Sear_uniqueattr_01.*
import ohos_app_cangjie_entry.Sear_uniqueattr_02.*
import ohos_app_cangjie_entry.Sear_uniqueattr_03.*
@Test
class Search_uniqueattr1_1_test {
    /*
     * @tc.number    : TestSearch_uniqueattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_17\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_17"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_17(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_18\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_18"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_18(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_19\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_19"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_19(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_20\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_20"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_20(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_21\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_21"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_21(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_22\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_22"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_22(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_23\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_23"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_23(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_24\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_24"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_24(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_25\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_25"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_25(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_26\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_26"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_26(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_27\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_27"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_27(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_28\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_28"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_28(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_29\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_29"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_29(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_30\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_30"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_30(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_31\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_31"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_31(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_32\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_32"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_32(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_33\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_33"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_33(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_34\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_34"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_34(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_35\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_35"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_35(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_36\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_36"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_36(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_37\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_37"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_37(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_38\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_38"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_38(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_39\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_39"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_39(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_40\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_40"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_40(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_41\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_41"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_41(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_42\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_42"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_42(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_43\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_43"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_43(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_44\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_44"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_44(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_45\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_45"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_45(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_46\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_46"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_46(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_47\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_47"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_47(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_48\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_48"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_48(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_49\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_49"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_49(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_50\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_50"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_50(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_51\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_51"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_51(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_52\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_52"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_52(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_53\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_53"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_53(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_54\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_54"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_54(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_55\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_55"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_55(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_56\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_56"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_56(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_57\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_57"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_57(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_58\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_58"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_58(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_59\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_59"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_59(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_60\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_60"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_60(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_61\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_61"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_61(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_62\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_62"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_62(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_63\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_63"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_63(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_64\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_64"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_64(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_65\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_65"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_65(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_66\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_66"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_66(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_67\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_67"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_67(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_68\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_68"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_68(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_69\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_69"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_69(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_70\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_70"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_70(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.Local\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_71\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_71"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_71(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_72\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_72"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_72(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_73\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_73"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_73(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_74\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_74"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_74(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Harmony OS\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_75\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_75"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_75(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_76\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_76"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_76(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_77\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_77"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_77(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_78\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_78"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_78(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_79\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_79"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_79(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_80\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_80"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_80(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_81\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_81"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_81(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_82\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_82"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_82(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_83\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_83"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_83(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_84\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_84"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_84(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_85\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_85"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_85(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_86\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_86"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_86(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_87\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_87"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_87(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_88\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_88"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_88(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_89\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_89"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_89(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_90\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_90"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_90(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_91\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_91"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_91(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_92\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_92"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_92(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_93\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_93"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_93(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_94\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_94"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_94(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_95\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_95"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_95(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_96\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_96"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_96(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_97\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_97"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_97(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_98\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_98"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_98(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_99\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_99"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_99(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr01_100\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uniqueattr1_1_test"
            modtestCaseText[0] = "TestCase_100"
            modtestView[0] = {_:CustomView => View_Search_uniqueattr01_100(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["searchButton"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["copyOption"], "\"CopyOptions.InApp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontStyle\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["textFont"].contains("\"fontSize\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}

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
import ohos_app_cangjie_entry.NavDes_ca_enable_zindex_01.*
@Test
class NavDes_comattr_enable_zindex_1_test {
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "-100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "-100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "10")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "10")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestNavDes_comattr_enable_zindex_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDes_comattr_enable_zindex_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_comattr_enable_zindex_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_NavDes_comattr_enable_zindex_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["enabled"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_comattr_id")["zIndex"], "100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
}

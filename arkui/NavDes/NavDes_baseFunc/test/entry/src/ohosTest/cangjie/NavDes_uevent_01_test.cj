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
import ohos_app_cangjie_entry.NavDestination_uevent_01.*
@Test
class NavDes_uevent_01_test {
    /*
     * @tc.number    : TestNavDes_uevent_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the onBackPressed(return true) event of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDestination_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_uevent_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_NavDestination_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_uevent_id_01"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_uevent_id_01")["id"], "\"NavDestination_uevent_id_01\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onBackPressed_result_id_01")["text"], "\"back: not_triggered\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestNavDes_uevent_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the onBackPressed(return false) event of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDestination_uevent_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_uevent_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_NavDestination_uevent_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_uevent_id_02"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_uevent_id_02")["id"], "\"NavDestination_uevent_id_02\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onBackPressed_result_id_02")["text"], "\"back: not_triggered\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestNavDes_uevent_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the onBackPressed event with NavPathStack of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDestination_uevent_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_uevent_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_NavDestination_uevent_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_uevent_id_03"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_uevent_id_03")["id"], "\"NavDestination_uevent_id_03\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onBackPressed_result_id_03")["text"], "\"back: not_triggered\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestNavDes_uevent_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the onReady event of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDestination_uevent_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_uevent_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_NavDestination_uevent_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_uevent_id_04"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onReady event to fire")
        TestDriver.driver.waitForComponent(On().text("ready: ready_fired"), 5000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_uevent_id_04")["id"], "\"NavDestination_uevent_id_04\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onReady_result_id_04")["text"], "\"ready: ready_fired\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestNavDes_uevent_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the onReady event with title of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDestination_uevent_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_uevent_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_NavDestination_uevent_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_uevent_id_05"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onReady event to fire")
        TestDriver.driver.waitForComponent(On().text("ready: ready_fired"), 5000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("NavDestination_uevent_id_05")["title"], "\"NavDestinationReady\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onReady_result_id_05")["text"], "\"ready: ready_fired\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : TestNavDes_uevent_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the onBackPressed and onReady events together of the NavDestination
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_NavDestination_uevent_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "NavDes_uevent_01_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_NavDestination_uevent_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("NavDestination_uevent_id_06"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onReady event to fire")
        TestDriver.driver.waitForComponent(On().text("ready: ready_fired"), 5000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onBackPressed_result_id_06")["text"], "\"back: not_triggered\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onReady_result_id_06")["text"], "\"ready: ready_fired\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
}

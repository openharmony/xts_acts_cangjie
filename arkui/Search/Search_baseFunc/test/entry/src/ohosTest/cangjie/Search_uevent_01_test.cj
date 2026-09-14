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
import ohos_app_cangjie_entry.Sear_Uniqueevent_01.*
@Test
class Search_uevent_01_test {
    /*
     * @tc.number    : TestSearch_uevent_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueevent onSubmit and onChange of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uevent_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Search_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSubmit_check")["content"], "\"onSubmit: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_check")["content"], "\"onChange: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholder"], "\"search\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSearch_uevent_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueevent onCopy, onCut and onPaste of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uevent_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uevent_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Search_uevent_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onCopy_check")["content"], "\"onCopy: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onCut_check")["content"], "\"onCut: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPaste_check")["content"], "\"onPaste: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholder"], "\"search\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestSearch_uevent_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueevent onSubmit, onChange, onCopy, onCut and onPaste of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uevent_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Search_uevent_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Search_uevent_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSubmit_check")["content"], "\"onSubmit: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_check")["content"], "\"onChange: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onCopy_check")["content"], "\"onCopy: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onCut_check")["content"], "\"onCut: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPaste_check")["content"], "\"onPaste: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholder"], "\"search\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
}

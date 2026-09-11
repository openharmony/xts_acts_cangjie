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
import ohos_app_cangjie_entry.base_uattr_01.*
@Test
class base_uattr_01_test {
    /*
     * @tc.number    : Testbase_uattr_01_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test base_uattr_01_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "base_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_base_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("launch_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("launch_check")["content"] != "\"launch: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("collSize_check")["content"].contains("3"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("collGet_check")["content"] != "\"collectionGet: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("collSet_check")["content"] != "\"collectionSet: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("colorBlack_check")["content"] != "\"colorBlack: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("colorRed_check")["content"] != "\"colorRed: None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : Testbase_uattr_01_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test base_uattr_01_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "base_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_base_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("emptyLaunch_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("emptyLaunch_check")["content"] != "\"emptyLaunch: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("emptyColl_check")["content"].contains("0"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("colorZero_check")["content"] != "\"colorZero: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("colorMax_check")["content"] != "\"colorMax: None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}

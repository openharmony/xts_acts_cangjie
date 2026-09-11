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
import ohos_app_cangjie_entry.RCon_ca_background_01.*
import ohos_app_cangjie_entry.RCon_ca_background_02.*
@Test
class RelCon_comattr_background_6_test {
    /*
     * @tc.number    : TestRelCon_comattr_background_50100
     * @tc.name      : TestCase_501
     * @tc.desc      : test the comattr of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RelCon_comattr_background_501\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RelCon_comattr_background_6_test"
            modtestCaseText[0] = "TestCase_501"
            modtestView[0] = {_:CustomView => View_RelCon_comattr_background_501(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RelCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 ends.")
    }
    /*
     * @tc.number    : TestRelCon_comattr_background_50200
     * @tc.name      : TestCase_502
     * @tc.desc      : test the comattr of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RelCon_comattr_background_502\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RelCon_comattr_background_6_test"
            modtestCaseText[0] = "TestCase_502"
            modtestView[0] = {_:CustomView => View_RelCon_comattr_background_502(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RelCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 ends.")
    }
    /*
     * @tc.number    : TestRelCon_comattr_background_50300
     * @tc.name      : TestCase_503
     * @tc.desc      : test the comattr of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RelCon_comattr_background_503\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RelCon_comattr_background_6_test"
            modtestCaseText[0] = "TestCase_503"
            modtestView[0] = {_:CustomView => View_RelCon_comattr_background_503(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RelCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 ends.")
    }
    /*
     * @tc.number    : TestRelCon_comattr_background_50400
     * @tc.name      : TestCase_504
     * @tc.desc      : test the comattr of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RelCon_comattr_background_504\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RelCon_comattr_background_6_test"
            modtestCaseText[0] = "TestCase_504"
            modtestView[0] = {_:CustomView => View_RelCon_comattr_background_504(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RelCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 ends.")
    }
}

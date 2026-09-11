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
import ohos_app_cangjie_entry.curves2_uattr_01.*
@Test
class curves2_uattr_01_test {
    /*
     * @tc.number    : Testcurves2_uattr_01_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test curves2_uattr_01_test case TestCase_1
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
            modtestSuiteText[0] = "curves2_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_curves2_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("stepsCurve_1_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("stepsCurve_1_check")["content"] != "\"stepsCurve(5,true): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("stepsCurve_2_check")["content"] != "\"stepsCurve(-1,false): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("bezier_1_check")["content"] != "\"cubicBezier(0.25,0.1,0.25,0.1): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("bezier_2_check")["content"] != "\"cubicBezier(-1,-10,2,10): None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : Testcurves2_uattr_01_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test curves2_uattr_01_test case TestCase_2
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
            modtestSuiteText[0] = "curves2_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_curves2_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("spring_1_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("spring_1_check")["content"] != "\"springCurve(0,1,1,1): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("spring_2_check")["content"] != "\"springCurve(100,-1,-1,-1): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("interpSpring_1_check")["content"] != "\"interpolatingSpring(0,1,1,1): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("interpSpring_2_check")["content"] != "\"interpolatingSpring(100,-1,-1,-1): None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : Testcurves2_uattr_01_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test curves2_uattr_01_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "curves2_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_curves2_uattr_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("springMotion_1_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("springMotion_1_check")["content"] != "\"springMotion(0.55,0.825,0): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("springMotion_2_check")["content"] != "\"springMotion(-1,-1,-1): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("respSpringMotion_1_check")["content"] != "\"responsiveSpringMotion(0.15,0.86,0.25): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("respSpringMotion_2_check")["content"] != "\"responsiveSpringMotion(-1,-1,-1): None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : Testcurves2_uattr_01_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test curves2_uattr_01_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "curves2_uattr_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_curves2_uattr_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("initLinear_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("initLinear_check")["content"].contains("0.5"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("initEase_check")["content"] != "\"initCurve(Ease): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("initEaseIn_check")["content"] != "\"initCurve(EaseIn): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("initEaseOut_check")["content"] != "\"initCurve(EaseOut): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("initEaseInOut_check")["content"] != "\"initCurve(EaseInOut): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customIdentity_check")["content"].contains("0.5"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("customZero_check")["content"].contains("0"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
}

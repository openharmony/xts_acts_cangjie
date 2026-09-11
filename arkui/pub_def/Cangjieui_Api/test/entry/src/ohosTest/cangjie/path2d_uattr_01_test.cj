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
import ohos_app_cangjie_entry.path2d_uattr_01.*
@Test
class path2d_uattr_01_test {
    /*
     * @tc.number    : TestPath2d_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test Path2D constructors (empty / normal string / empty string) and addPath, setTransform, moveTo, lineTo with normal values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_path2d_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "path2d_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_path2d_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("path2dEmpty_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("path2dEmpty_check")["content"] != "\"Path2D() empty ctor: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("path2dNormal_check")["content"] != "\"Path2D normal string: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("path2dEmptyStr_check")["content"] != "\"Path2D empty string: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("addPath_check")["content"] != "\"addPath: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("setTransform_check")["content"] != "\"setTransform: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("moveTo_check")["content"] != "\"moveTo: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("lineTo_check")["content"] != "\"lineTo: None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestPath2d_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test arc (counterclockwise true/false), arcTo, quadraticCurveTo, bezierCurveTo, ellipse (counterclockwise true/false), rect, closePath with normal values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_path2d_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "path2d_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_path2d_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("arcTrue_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("arcTrue_check")["content"] != "\"arc(counterclockwise=true): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("arcFalse_check")["content"] != "\"arc(counterclockwise=false): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("arcTo_check")["content"] != "\"arcTo: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("quadraticCurveTo_check")["content"] != "\"quadraticCurveTo: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("bezierCurveTo_check")["content"] != "\"bezierCurveTo: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ellipseTrue_check")["content"] != "\"ellipse(counterclockwise=true): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ellipseFalse_check")["content"] != "\"ellipse(counterclockwise=false): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("rect_check")["content"] != "\"rect: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("closePath_check")["content"] != "\"closePath: None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}

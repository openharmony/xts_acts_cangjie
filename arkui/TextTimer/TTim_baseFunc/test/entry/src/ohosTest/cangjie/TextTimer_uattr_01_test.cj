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
import kit.BasicServicesKit.*
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.TTim_uattr_01.*
import ohos.arkui.component.common.getInspectorByKey
@Test
class TextTimer_uattr_01_test {
    /*
     * @tc.number    : TestTextTimer_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueevent onTimer of the TextTimer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextTimer_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "TextTimer_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_TextTimer_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextTimer_uattr_01_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onTimer_check")["content"], "\"onTimer: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_01_id")["isCountDown"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_01_id")["count"], "\"60000.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_01_id")["format"], "\"HH:mm:ss.SS\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestTextTimer_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr textShadow(value: ?ShadowOptions) of the TextTimer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextTimer_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "TextTimer_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_TextTimer_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextTimer_uattr_02_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_02_id")["textShadow.radius"], "\"5.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_02_id")["textShadow.type"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_02_id")["textShadow.color"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_02_id")["textShadow.offsetX"], "\"1.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimer_uattr_02_id")["textShadow.offsetY"], "\"1.000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestTextTimer_uattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr textShadow(value: ?Array<ShadowOptions>) of the TextTimer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextTimer_uattr_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "TextTimer_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_TextTimer_uattr_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextTimer_uattr_03_id"), 3000i32)
        @Expect(getInspectorByKey("TextTimer_uattr_03_id").contains("\"textShadow\":[{\"radius\":\"5.000000\",\"color\":\"#FFFF0000\",\"offsetX\":\"1.000000\",\"offsetY\":\"1.000000\",\"type\":\"0\"},{\"radius\":\"10.000000\",\"color\":\"#FF0000FF\",\"offsetX\":\"2.000000\",\"offsetY\":\"2.000000\",\"type\":\"1\"}]"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
}

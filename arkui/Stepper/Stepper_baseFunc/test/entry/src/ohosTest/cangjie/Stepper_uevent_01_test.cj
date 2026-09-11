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
import ohos_app_cangjie_entry.Stepper_uevent_01.*
@Test
class Stepper_uevent_01_test {
    /*
     * @tc.number    : TestStepper_uevent_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uevent of the Stepper (onFinish, onSkip, onChange, onNext, onPrevious)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Stepper_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Stepper_uevent_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Stepper_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Stepper_uevent_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_pageTwo")["content"], "\"Page Two\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onFinish_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onNext_param2")["content"], "\"nextIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onPrevious_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "click Next Page to trigger onChange and onNext")
        TestDriver.driver.waitForComponent(On().text("Next Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("uevent_pageThree"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_pageThree")["content"], "\"Page Three\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onChange_param1")["content"], "\"prevIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onChange_param2")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onFinish_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onNext_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("uevent_onNext_param2")["content"], "\"nextIndex:2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}

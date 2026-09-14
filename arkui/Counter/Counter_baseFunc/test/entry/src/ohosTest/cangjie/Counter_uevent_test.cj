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
import ohos_app_cangjie_entry.Cou_uevent_01.*
@Test
class Counter_uevent_test {
    /*
     * @tc.number    : TestCounter_uevent_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the onInc event of the Counter
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Counter_uevent_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Counter_uevent_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Counter_uevent_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Counter_id"), 3000i32)
        @Expect(getInspect.getAttributeValue("Counter_id","enableInc"), "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onInc_result_id")["content"], "\"onInc: false\"")
        Hilog.info(0u32, "CangjieTest", "click Counter to trigger onInc event")
        TestDriver.driver.waitForComponent(On().id("Counter_id"), 3000i32)
            .getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("onInc_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onInc_result_id")["content"], "\"onInc: false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestCounter_uevent_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the onDec event of the Counter
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Counter_uevent_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Counter_uevent_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Counter_uevent_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Counter_id"), 3000i32)
        @Expect(getInspect.getAttributeValue("Counter_id","enableDec"), "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onDec_result_id")["content"], "\"onDec: false\"")
        Hilog.info(0u32, "CangjieTest", "click Counter to trigger onDec event")
        TestDriver.driver.waitForComponent(On().id("Counter_id"), 3000i32)
            .getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("onDec_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onDec_result_id")["content"], "\"onDec: false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}
